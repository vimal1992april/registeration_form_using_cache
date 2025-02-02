class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new  # Guest user

    if user.admin?
      can :manage, :all  # Admin can access everything
    else
      can :read, :all  # Regular users can only read
    end
  end
end
