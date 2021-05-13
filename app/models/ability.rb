class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
   
    if user.is? :admin
       can :manage, SecretCode
    else
      can :read, SecretCode
    end
  end
end
