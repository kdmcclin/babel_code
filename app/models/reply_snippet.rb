class ReplySnippet < ActiveRecord::Base
	belongs_to :user
  belongs_to :original_snippet
	belongs_to :language
  has_many :votes

  def tally_votes
    (self.votes.map {|vote_obj| vote_obj.vote}).inject {|sum, vote| sum + vote}
  end
end

