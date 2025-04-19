require 'date'
require 'open3'

VERSION_FILE = 'version.txt'
DATA_DIR = 'lib/iptoasn/data/'

def read_version
  File.read(VERSION_FILE).strip
end

def write_version(version)
  File.write(VERSION_FILE, version + "\n")
end

def bump_version(version)
  major, year, release = version.split('.').map(&:to_i)
  current_year = Date.today.year

  if year == current_year
    release += 1
  else
    year = current_year
    release = 1
  end

  "#{major}.#{year}.#{release}"
end

def data_changed?
  stdout, status = Open3.capture2("git diff --name-only #{DATA_DIR}")
  !stdout.strip.empty?
end

unless data_changed?
  puts "No changes in #{DATA_DIR}, skipping version bump."
  exit 0
end

current_version = read_version
new_version = bump_version(current_version)
write_version(new_version)

puts "Version bumped from #{current_version} to #{new_version}"
