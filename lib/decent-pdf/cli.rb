require 'thor'
require 'decent-pdf'

trap("SIGINT") { exit! }

module DecentPdf
  class CLI < Thor
    include Thor::Actions

    map %w(-v --version) => :version

    # Example CLI command. Uncomment the following to set it in action:
    #
    # desc 'commandname [param1|param2]', 'command description' 
    # method_option :countries, :type => :array
    # def commandname(someParam)
    #   # Do things
    # end

    desc 'version', 'decent-pdf version'
    def version
      puts DecentPdf::VERSION
    end
  end
end
