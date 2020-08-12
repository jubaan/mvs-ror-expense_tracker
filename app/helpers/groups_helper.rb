# rubocop:disable Naming/MethodParameterName
# rubocop:disable Lint/Void
# rubocop:disable Lint/UselessAssignment
# rubocop:disable Style/GuardClause
module GroupsHelper
  def groups_by_most_recent
    current_user.groups.ordered_groups_by_most_recent.to_set
  end

  def show_group_selection(f)
    render =
      f.input :group_id,
              collection: Group.all, selected: 1, include_blank: false
  end

  def show_group_selection_update(f)
    render =
      f.input :group_id,
              collection: Group.all, include_blank: false
  end

  def show_group_icon(e)
    render = image_tag e.group.icon.url, class: 'icon-expense' if e.group.icon.url
  end
end
# rubocop:enable Naming/MethodParameterName
# rubocop:enable Lint/Void
# rubocop:enable Lint/UselessAssignment
# rubocop:enable Style/GuardClause
