class Ability
  include CanCan::Ability


  def initialize(user)
    # anyone, logged in or not


    if user.is_a? User then
        if user.administrator then
            can :manage, :all
            can :access, :admin_area
        else
            can :read, Post do |post|
                post.published_at && post.published_at < Time.now
            end
            # can :read, Post
            # can [:create, :read], [Comment, AdvicePost, QuestionPost, NewsPost]
            can [:create, :read], [Comment, CommunityPost]
            can :read, [Resource, ResourceCategory, Service, ServiceCategory]
            # logged in user, not administrator
            # can :manage, [Comment, AdvicePost, QuestionPost, NewsPost], user_id: user.id
            # can :vote, [Comment, AdvicePost, QuestionPost, NewsPost]
            can :manage, [Comment, CommunityPost], user_id: user.id
        end 
    else
        can :read, Post do |post|
            post.published_at && post.published_at < Time.now
        end
        # can :read, Post
        # can [:create, :read], [Comment, AdvicePost, QuestionPost, NewsPost]
        can [:create, :read], [Comment, CommunityPost]
        can :read, [Resource, ResourceCategory, Service, ServiceCategory]
    end

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
