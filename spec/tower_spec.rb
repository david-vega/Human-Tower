require 'spec_helper'

describe Tower do
  subject{ Tower.new [[65, 100],
                      [70, 150],
                      [56, 90],
                      [75, 190],
                      [60, 95],
                      [68, 110]]}

  it 'is made by a few humans' do
    subject.humans.size.should_not be_nil
    subject.humans.first.height.should be 65
    subject.humans.first.weight.should be 100

    subject.humans.last.height.should be 68
    subject.humans.last.weight.should be 110
  end

end
