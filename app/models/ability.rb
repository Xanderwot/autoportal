class Ability
  include CanCan::Ability

  def initialize(user)

    @user = user
    send(@user.role.presence || :member) if @user
  end

  def member
    can :index, :home
  end

  def admin
    member

    can :manage, Advertisement
  end

  def user
    member
  end
end
