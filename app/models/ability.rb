class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      # if no user logged in, use a dummy user, see later
      user = User.new
    end

    if user.has_role? :admin
      can :manage, :all
    else user.has_role? :coperator
      can :manage, Post, user_id: user.id
    # else user.has_role? :student
    #   can :read, Post, user_id: user.id
    end
   end
end
