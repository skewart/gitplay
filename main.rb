require 'dotenv'
require 'github_api'

Dotenv.load

puts "Hello, World."

# $Github = Github.new

def list_pulls
  github = Github.new user: 'peter-murach', repo: 'github'
  
  github.repos.comments.list do |com|
    puts com.body
  end

  # # Lists comments on PRs not yet merged in to the Repo, or from external repos
  # github.pull_requests.comments.list do |com|
  #   puts com.body
  # end
end

list_pulls
