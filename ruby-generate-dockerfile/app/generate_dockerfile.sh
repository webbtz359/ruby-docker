#!/bin/bash

# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e

WORKSPACE_DIR=$(/bin/pwd)
cd /app
ruby generate_dockerfile.rb \
    --workspace-dir=${WORKSPACE_DIR} \
    --base-image=${RUBY_BASE_IMAGE} \
    --build-tools-image=${RUBY_BUILD_TOOLS_IMAGE} \
    --prebuilt-ruby-image-base=${PREBUILT_RUBY_IMAGE_BASE} \
    --prebuilt-ruby-image-tag=${PREBUILT_RUBY_IMAGE_TAG} \
    --prebuilt-ruby-versions=${PREBUILT_RUBY_VERSIONS} \
    --default-ruby-version=${DEFAULT_RUBY_VERSION} \
    "$@"
