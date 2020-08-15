# rubocop:disable Naming/MethodParameterName
# rubocop:disable Lint/UselessAssignment
module GroupsHelper
  def groups_by_most_recent
    current_user.groups.ordered_groups_by_most_recent.to_set
  end

  def show_group_icon(e)
    render = image_tag e.group.icon.url, class: 'icon-expense' if e.group.icon.url
  end
end
# rubocop:enable Naming/MethodParameterName

# rubocop:enable Lint/UselessAssignment
