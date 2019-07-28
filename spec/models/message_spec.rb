require "rails_helper"

describe Message, type: :model do
  describe "validations" do
    it {should validate_presence_of(:user)}
  end
end
