class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? :admin
        can :manage, :all
    elsif user.role? :instructor
        can :manage, [Campus, Course, Room, Student]
    elsif user.role? :student
        can :read, :all # You can make this more complicated later if time
        can :edit, user
        can :update, user
    end
  end
  
end
