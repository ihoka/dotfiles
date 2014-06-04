#!/usr/bin/env ruby

# encoding: utf-8

Pry.config.pager = true
Pry.config.color = true
Pry.config.history.should_save = true

Pry.config.editor = proc { |file, line| "/usr/local/bin/subl -w #{file}:#{line}" }
