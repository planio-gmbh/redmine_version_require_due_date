module RedmineVersionRequireDueDate
  module Patches
    module IssuePatch
      
      def self.included(klass)
        klass.send(:unloadable)
        klass.send(:validates_presence_of, :due_date, :if => :version_requires_due_date?)
      end

      protected

      def version_requires_due_date?
        self.fixed_version && self.fixed_version.requires_due_date
      end

    end
  end
end