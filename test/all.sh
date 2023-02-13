#!/bin/bash

SCRIPT_LOC=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

CYAN='[0;36m'
RED='[0;31m'
GREEN='[0;32m'
YELLOW='[0;33m'
NORM='[0;00m'

DEFAULT_MODES=1
if [ "$TEST_MODE" != "" ]; then
   DEFAULT_MODES=0
fi

SCRIPT_EXIT_CODE=0

# Progress arguments. By default the inline (i) mode is used, while the CI sets
# it to line (c) mode
PROGRESS_ARGS=${PROGRESS_ARGS:="tti"}
PROGRESS="progress $PROGRESS_ARGS"

### Utility for printing a testing line
### XXX: duplicated with common.sh
function print_testing() {
    ARG=$1
    printf "Testing ${CYAN}%-10s${NORM} " $harness
#TODO    printf "%-13s " $ARG
    printf "%-13s "  $TEST_TARGET
    if [ "$TEST_MODE" != "" ]; then
	mode="-mode=$TEST_MODE"
    else
        mode=""
    fi
    printf "%-13s " $mode
    printf "| "
}

function skip() {
    harness=$1
    shift
    print_testing
    printf "${YELLOW}skipped (%s)${NORM}\n" "$1"
}

function update_exit_code_if_non_zero() {
    if [[ $1 != 0 ]]; then
        if [[ $SCRIPT_EXIT_CODE == 0 ]]; then
            SCRIPT_EXIT_CODE=$1
        fi
    fi
}

if [ "$TEST_TARGETS" = "" ]; then
    if [ "$TEST_TARGET" = "" ]; then
	TEST_TARGETS="int x86-linux x86-64-linux jvm"
    else
	TEST_TARGETS="$TEST_TARGET"
    fi
fi

function do_script() {
    script=$1
    $SCRIPT_LOC/${script}.sh
    X=$?
    update_exit_code_if_non_zero $X
    if [[ "$TEST_TARGET" = "x86-64-linux" && $DEFAULT_MODES = 1 ]]; then
        TEST_MODE=jit $SCRIPT_LOC/${script}.sh
        X=$?
        update_exit_code_if_non_zero $X
        TEST_MODE=lazy $SCRIPT_LOC/${script}.sh
        X=$?
        update_exit_code_if_non_zero $X
    fi
}

# Unit tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    if [ "$target" = jvm ]; then # TODO: out of memory
	skip unit "initial heap too large on this target"
        continue;
    fi
    $SCRIPT_LOC/unit.sh
    X=$?
    update_exit_code_if_non_zero $X
done

# Regression tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    do_script regress
done

# Spec tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    if [ "$target" = int ]; then # TODO: out of memory depending on host v3c
	skip spec "will run out of memory"
        continue
    fi
    do_script spec
done

# Wizeng tests
for target in $TEST_TARGETS; do
    export TEST_TARGET=$target
    if [ "$target" = "" ]; then # for symmetry
	skip wizeng
        continue
    fi
    do_script wizeng/test
done

exit $SCRIPT_EXIT_CODE
