namespace :custom do
  desc "Generate stats and save to /docs/stats.txt with date"
  task :stats_to_file do
    File.open("docs/stats.txt", "w") do |file|
      file.puts "Stats generated on: #{Time.now.strftime('%Y%m%d%H%M%S')}"  # Rails migration format
      file.puts `rake stats`
    end
  end
end
