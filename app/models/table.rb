class Table < ActiveRecord::Base
  validates :table_number, presence: true
  validates :seats, presence: true
  validates :tbl_typ, presence: true

  include Workflow
  workflow do
    state :available do
      event :reserved, transitions_to: :reserved
    end
    state :reserved do
      event :available, transitions_to: :available
    end
    
  end

end
