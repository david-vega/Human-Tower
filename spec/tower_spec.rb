require 'spec_helper'

describe Tower do
  subject{ Tower.new [[65, 100],
                      [70, 150],
                      [71, 110],
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

  it 'should sort by height' do
    subject.sort_by_height
    subject.humans.first.height.should == 56
    subject.humans.last.height.should == 75
  end

  it 'should arrange the tower with shorter and lighter first' do
    subject.longest_tower.size.should == 6
    subject.longest_tower.first.height.should == 56
    subject.longest_tower.first.weight.should == 90
    subject.longest_tower.last.height.should == 75
    subject.longest_tower.last.weight.should == 190
  end
end
