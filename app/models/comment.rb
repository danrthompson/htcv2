class Comment < ActiveRecord::Base
  attr_accessible :body, :commentable
  attr_accessible :body, :commentable, :user_id, as: [:active_admin]

  @@max_nesting = 1

  @@anonymous_names = [
    "Nancy Drew",
    "Clark Kent",
    "Tony Stark",
    "Bruce Wayne",
    "Ameer Ikah",
    "Elle Phont",
    "Les Moore",
    "Lily Pond",
    "Lou Pole",
    "Marsha Mellow",
    "Mike Raffone",
    "Paige Turner",
    "Polly Ester",
    "Russell Sprout",
    "Sonny Day",
    "Viola Solo",
    "Warren Peace",
    "Armand Hammer",
    "Anne Teak",
    "Anna Graham",
    "Brighton Early",
    "Corey Ander",
    "Douglas Furr",
    "Duane Pipe"
  ]

  acts_as_nested_set :scope => [:commentable_id, :commentable_type]


  # has_reputation :votes, source: :user, aggregated_by: :sum

  validates :body, :user_id, :presence => true
  validate :comment_not_overnested
  # validates :user, :presence => true

  # NOTE: install the acts_as_votable plugin if you
  # want user to vote on the quality of comments.
  #acts_as_votable

  belongs_to :commentable, :polymorphic => true

  # NOTE: Comments belong to a user
  belongs_to :user

  # def current_user_vote_value(user)
  #   vote = self.evaluations.where(source_type: user.class.name, source_id: user.id).first
  #   if vote then
  #     vote.value
  #   else
  #     0
  #   end
  # end



  # Helper class method that allows you to build a comment
  # by passing a commentable object, a user_id, and comment text
  # example in readme
  def self.build_from(obj, user_id, comment)
    new \
      :commentable => obj,
      :body        => comment,
      :user_id     => user_id
  end

  #helper method to check if a comment has children
  def has_children?
    self.children.any?
  end

  def can_have_children?
    self.level < @@max_nesting
  end

  def children_query
    Comment.where(parent_id: self.id)
  end

  # Helper class method to lookup all comments assigned
  # to all commentable types for a given user.
  scope :find_comments_by_user, lambda { |user|
    where(:user_id => user.id).order('created_at DESC')
  }

  # Helper class method to look up all comments for
  # commentable class name and commentable id.
  scope :find_comments_for_commentable, lambda { |commentable_str, commentable_id|
    where(:commentable_type => commentable_str.to_s, :commentable_id => commentable_id).order('created_at DESC')
  }

  # Helper class method to look up a commentable object
  # given the commentable class name and id
  def self.find_commentable(commentable_str, commentable_id)
    commentable_str.constantize.find(commentable_id)
  end

  def author
    if self.user then
      user.username
    else
      "#{@@anonymous_names.sample} (Anonymous)"
    end
  end


  private

  def comment_not_overnested
    if not parent_id.blank? then
      parent = Comment.find_by_id(parent_id)
      if not parent then
        errors.add(:parent, "Does not exist")
      elsif parent.level >= @@max_nesting then
        errors.add(:parent, "Already nested at the max")
      end
    end 
  end
end
