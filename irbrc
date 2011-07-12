#!/usr/bin/env ruby

require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

IRB.conf[:PROMPT_MODE] = :SIMPLE

IRB.conf[:AUTO_INDENT] = true

class Object
  # list methods which aren't in superclass
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end
end

load '~/.railsrc' if ENV['RAILS_ENV']

require 'rubygems' unless defined? Gem

require 'irbtools/configure'
Irbtools.remove_library :wirb
Irbtools.remove_library :fancy_irb
Irbtools.add_library :wirb, :thread => -1 do Wirb.start end
Irbtools.add_library :fancy_irb, :thread => -1 do FancyIrb.start end
Irbtools.start
