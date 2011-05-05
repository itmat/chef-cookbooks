#
# Cookbook Name:: mascot_depepndencies
# Recipe:: default
#
# Copyright 2010, ITMAT - UPENN
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
#

# dependencies
include_recipe "s3sync"
include_recipe "perl"
include_recipe "gd2"
include_recipe "htdig"
include_recipe "pigz"

# perl packages to install via apt
package "libwww-perl"
package "libgd-gd2-noxmp-perl"

# mascot CGI scripts expects perl to be in /usr/local/bin
link "/usr/local/bin/perl" do 
  to "/usr/bin/perl"
end
