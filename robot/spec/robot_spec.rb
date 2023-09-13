require './lib/robot'

RSpec.describe Robot do
  let!(:robot) { Robot.new }

  it 'determines whether a robot is where it started' do
    expect(robot.return_to_origin?("GRGRGRG")).to eq(true)
    expect(robot.return_to_origin?("GRGL")).to eq(false)
  end
end