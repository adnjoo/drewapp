namespace :custom do
  desc "Get stats and save to /docs/stats.txt"
  task :stats_to_file do
    File.open("docs/stats.txt", "w") do |file|
      file.puts "Stats generated on: #{Time.now.strftime('%Y%m%d%H%M%S')} | Commit: #{`git rev-parse --short=7 HEAD`.strip}"
      file.puts `rake stats`
    end
  end
end
