namespace :custom do
  desc "Generate stats and save to /docs/stats.txt"
  task :stats_to_file do
    sh "rake stats > docs/stats.txt"
  end
end
