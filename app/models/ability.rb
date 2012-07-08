class Ability
  include CanCan::Ability

  def initialize(user)

    @user = user
    send(@user.role) if @user
  end

  def admin
    can :manage, Mark
    can :manage, Advertisement
    can :manage, User
  end

  def user
    can :read, Advertisement
    can :manage, User, :user_id => user
  end
end
