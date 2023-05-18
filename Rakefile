require "rake"

EXCLUDE_FILES = %w[Rakefile README LICENSE]

desc "install the dot files into user's home directory"
task :install do
  replace_all = false

  files = Dir["*", "config/**/*"]

  files.each do |src_file|
    next if EXCLUDE_FILES.include?(src_file)
    next unless File.file?(src_file)

    dest_file = File.join(ENV["HOME"], ".#{src_file}")

    if File.exist?(dest_file)
      if replace_all
        replace_file(src_file, dest_file)
      else
        print "overwrite #{dest_file}? [ynaq] "
        case $stdin.gets.chomp
        when "a"
          replace_all = true
          replace_file(src_file, dest_file)
        when "y"
          replace_file(src_file, dest_file)
        when "q"
          exit
        else
          puts "skipping #{dest_file}"
        end
      end
    else
      link_file(src_file, dest_file)
    end
  end
end

def ensure_directory(dest_file)
  dirname = File.dirname(File.expand_path(dest_file))
  unless File.directory?(dirname)
    puts "creating #{dirname}"
    FileUtils.mkdir_p(dirname)
  end
end

def replace_file(src_file, dest_file)
  system %(rm "#{dest_file}")
  link_file(src_file, dest_file)
end

def link_file(src_file, dest_file)
  ensure_directory(dest_file)
  puts "linking #{dest_file}"
  system %(ln -s "$PWD/#{src_file}" "#{dest_file}")
end

task default: :install
