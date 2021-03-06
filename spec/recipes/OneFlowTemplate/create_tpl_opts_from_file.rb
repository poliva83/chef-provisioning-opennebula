# Copyright 2016, BlackBerry Limited
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

one_flow_template 'gary' do
  template 'file:///tmp/one_rspec_test.json'
  template_options :name => 'test_tpl_opts_from_file',
                   :deployment => nil,
                   :roles => [
                     {
                       :name => 'gary_ubuntu',
                       :delete_role => true
                     },
                     {
                       :name => 'gary_ubuntu_new',
                       :vm_template => 'OpenNebula-test-tpl-strings'
                     }
                   ]
  mode '640'
end
