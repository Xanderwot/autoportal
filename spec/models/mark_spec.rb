require 'spec_helper'

describe Mark do
  # let(:car_value) { Fabricate(:car_value, :option => 'name', :car_values => ['Ford', 'BMW', 'Audi']) }

  it 'should not be valid' do
    subject.name = 'Merzedez'
    subject.valid?.should be_false
  end

  it 'should be valid' do
    subject.name = 'Ford'
    subject.valid?.should be_true
  end
end
