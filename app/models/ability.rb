class Ability
  include CanCan::Ability

  def initialize(user)

    @user = user
    send(@user.role) if @user
  end

  def admin
    can :manage, Mark
  end

  def user
  end
end
