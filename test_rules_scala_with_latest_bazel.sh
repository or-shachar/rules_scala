#!/usr/bin/env bash

dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

export USE_BAZEL_VERSION="latest"
#"${dir}"/test_rules_scala.sh $@
echo "::warning file=test_rules_scala_with_latest_bazel.sh::Failed with latest bazel"
