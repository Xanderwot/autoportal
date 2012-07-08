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

    #Admin panel ability
    can :access, :rails_admin
    can :dashboard
  end

  def user
    can :read, Advertisement
    can :manage, User, :id => @user.id
  end
end
