class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:

    return unless user.present?

    can :manage, [Expense, Group, User, GroupExpenses], author_id: user.id
    # can :read, :all
    return unless user.admin?

    can :manage, :all

    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
