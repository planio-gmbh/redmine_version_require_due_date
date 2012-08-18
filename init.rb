require 'redmine'
require 'dispatcher'
require 'redmine_version_require_due_date/hooks'
require 'redmine_version_require_due_date/patches/issue_patch'
require 'redmine_version_require_due_date/patches/version_patch'

Dispatcher.to_prepare do
  Issue.send(:include, RedmineVersionRequireDueDate::Patches::IssuePatch) unless Issue.include?(RedmineVersionRequireDueDate::Patches::IssuePatch)
  Version.send(:include, RedmineVersionRequireDueDate::Patches::VersionPatch) unless Version.include?(RedmineVersionRequireDueDate::Patches::VersionPatch)
end

Redmine::Plugin.register :redmine_version_require_due_date do
  name 'Redmine Version Require Due Date plugin'
  author 'Planio GmbH'
  description 'This plugin adds an additional checkbox attribute on Versions called "Require due date". If it is checked, any issue assigned to that version will require a due date to be set.'
  version '1.0'
  url 'https://github.com/planio-gmbh/redmine_version_require_due_date'
  author_url 'http://plan.io'
end
