# http://stackoverflow.com/questions/733630/renaming-the-created-at-updated-at-columns-of-activerecord-rails
module ActiveRecord
  module Timestamp      
    private
    def timestamp_attributes_for_update #:nodoc:
      [:modify_dt, :update_at, :update_on]
    end
    def timestamp_attributes_for_create #:nodoc:
      [:create_dt, :create_at, :create_on]
    end      
  end
end