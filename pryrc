#!/usr/bin/env ruby

# encoding: utf-8

Pry.config.pager = true
Pry.config.color = true
Pry.config.history.should_save = true

Pry.config.editor = proc { |file, line| "/usr/local/bin/code -w -g #{file}:#{line}" }

if defined?(PryByebug) || defined?(PryDebugger)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

# Hit Enter to repeat last command
Pry::Commands.command /^$/, "repeat last command" do
  _pry_.run_command Pry.history.to_a.last
end
