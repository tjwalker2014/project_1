class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? :admin
        can :manage, :all
    elsif user.role? :instructor
        can :manage, [:campus, :course, :room:] # This may need to be written as [Student, etc..]
    elsif user.role? :student
        can :read, :all # You can make this more complicated later if time
    end
  end
end
