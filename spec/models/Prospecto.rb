  require 'rails_helper'

  RSpec.describe Prospecto, type: :model do

  it { should validate_presence_of(:nome) }
  it { should_not allow_value('ggggggg').for(:telefone).on(:create) }
  it { should_not allow_value('teste@').for(:email).on(:create) }
end