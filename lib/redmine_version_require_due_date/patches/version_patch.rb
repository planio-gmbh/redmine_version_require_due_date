module RedmineVersionRequireDueDate
  module Patches
    module VersionPatch
      def self.included(base)
        base.class_eval do
          safe_attributes :requires_due_date
        end
      end
    end
  end
end
