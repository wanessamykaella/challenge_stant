require 'rails_helper'

RSpec.describe Session, type: :model do
  it{ is_expected.to define_enum_for(:shift).with_values({morning: 1, afternoon: 2}) }
  it{ should belong_to(:track)  }
end
 