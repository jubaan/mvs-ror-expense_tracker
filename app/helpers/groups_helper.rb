module GroupsHelper
  def groups_by_most_recent
    current_user.groups.ordered_groups_by_most_recent.to_set
  end
end
