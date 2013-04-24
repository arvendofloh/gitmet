class WelcomeController < ApplicationController
  def index
    repo = Grit::Repo.new('/Users/arvendomedia/demo')
    @commits = repo.commits('master', 100)
    @stats = repo.commit_stats('master')
    
    
    tree = repo.commits.first.tree
    @blobs = tree.contents
    
  end
end
