class Ability
  include CanCan::Ability

      #  def initialize(user)
      # user ||= User.new # guest user (not logged in)
      # if user.admin?
      #   can :manage, :all
      # else
      #   can :read, :all
      # end


    #  def initialize(user)
    #   user ||= User.new # guest user (not logged in)
    #   if user.role == "admin"
    #     can :manage, :all
    #   elsif user.role == "normal"
    #     can :read, :all
    #   else
    #     can :read, :all
    #     cannot :read, :all
    #   end
    # end



 def initialize(user)
      user ||= User.new # guest user (not logged in)
      if user.role == "admin"
        can :manage, :all
      elsif user.role == "normal"
        can :manage, Submission, :user_id => user.id
        can :manage, Assignment, :user_id => user.id
      end
    end

    #  def initialize(user)
    #   user ||= User.new # guest user (not logged in)
    #   if user.role == "admin"
    #     can :manage, :all
    #   elsif user.role == "student"
    #     can :read, :all  
    #     can :create, Comment  
    #     can :update, Comment do |comment|  
    #     comment.try(:user) == user

    #   elsif user.role == "Guest"
    #     can 
    #   else
    #     can :read, :all
    #     cannot :read, :all
    #   end
    # end

  
  #   user ||= User.new  
  
  #   if user.role = "admin"  
  #     can :manage, :all  
  #   elsif user.role == "normal"  
  #     can :read, :all  
  #     can :create, Comment  
  #     can :update, Comment do |comment|  
  #       comment.try(:user) == user 
  #     can :create, Submission  
  #     can :update, Submission do |submission|  
  #         article.try(:user) == user   
  #       end  
  #     end  
  #   end  
  # end  
 

#   def initialize(user)  
#     user ||= User.new  
  
#     if user.role? :admin  
#       can :manage, :all  
#     else  
#       can :read, :all  
#       can :create, Comment
#       can :create, Submission  
#       can :update, Comment do |comment|  
#         comment.try(:user) == user 
#       can :update, Submission do |submission|  
#         submission.try(:user) == user 
#       end  
#     end  
#   end  
# end  



  
    # Define abilities for the passed in user here. For example:
    #
      # user ||= User.new # guest user (not logged in)
      # if user.admin?
      #   can :manage, :all
      # else
      #   can :read, :all
      # end
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
