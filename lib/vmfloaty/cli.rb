require 'thor'
require 'net/http'

class CLI < Thor
  desc "get [operating system,...] [--withpe]", "Gets a VM"
  option :withpe
  def get(os)
    say "vmpooler: #{@vmpooler_url}"
    if options[:withpe]
      say "Get a #{os} VM here and provision with PE verison #{options[:withpe]}"
    else
      say "Get a #{os} VM here"
    end
  end

  desc "modify [hostname]", "Modify a VM"
  def modify(hostname)
    say 'Modify a vm'
  end

  desc "status", "List status of all active VMs"
  def status
    say 'List of active VMs'
  end

  desc "list", "List all open VMs"
  def list
    say 'Listing open vms on vmpooler'
  end

  desc "release [hostname]", "Schedules a VM for deletion"
  def release(hostname)
    say 'Releases a VM'
  end
end