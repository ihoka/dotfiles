# encoding: utf-8

Pry.config.pager = true
Pry.config.color = true
Pry.config.history.should_save = true

# wrap ANSI codes so Readline knows where the prompt ends
def colour(name, text)
  if Pry.color
    "\001#{Pry::Helpers::Text.send name, '{text}'}\002".sub '{text}', "\002#{text}\001"
  else
    text
  end
end

# pretty prompt
Pry.config.prompt = [
  proc { |target_self, nest_level, pry|
    prompt = colour :bright_black, Pry.view_clip(target_self)
    prompt += ":#{nest_level}" if nest_level > 0
    prompt += colour :cyan, ' » '
  },
  proc { |target_self, nest_level, pry|
    colour :red, '?> '
  }
]

# tell Readline when the window resizes
old_winch = trap 'WINCH' do
  if `stty size` =~ /\A(\d+) (\d+)\n\z/
    Readline.set_screen_size $1.to_i, $2.to_i
  end
  old_winch.call unless old_winch.nil?
end
