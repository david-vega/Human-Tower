require 'spec_helper'

describe Human do
  subject { Human.new height: 100, weight: 100}

  it 'has a defined height and weight' do
    expect(subject.height).to_not be nil
    expect(subject.weight).to_not be nil
  end

end
