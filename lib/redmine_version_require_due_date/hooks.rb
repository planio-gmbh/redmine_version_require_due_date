module RedmineVersionRequireDueDate

  class ViewHooks < Redmine::Hook::ViewListener
    render_on :view_versions_form_bottom, :partial => 'hooks/redmine_version_require_due_date/view_versions_form_bottom'
  end

end