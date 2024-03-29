#
# Author:: Matt Ray (<matt@opscode.com>)
# Copyright:: Copyright (c) 2012 Opscode, Inc.
# License:: Apache License, Version 2.0
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

require 'sputnik'
require 'sputnik-cloudlauncher/version'

module Sputnik
  class Plugin
    class Launch < Plugin

      option :version,
        :short => '-v',
        :long => '--version',
        :description => 'Show Sputnik Launch version',
        :boolean => true,
        :proc => lambda { |v| puts "Sputnik Launch: #{::Sputnik::CloudLauncher::VERSION}" },
        :exit => 0

      # load the spiceweasel manifest, get the nodes defined for that cluster
      # ask the chef server
      # call spiceweasel on the nodes for a particular provider

      def call
        puts "I'm launching like a boss......"
      end

    end
  end
end
