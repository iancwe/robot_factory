# Manage robot factory settings.

# When robots come off the factory floor, they have no name.

# The first time you boot them up, a random name is generated in the format of two uppercase letters followed by three digits, such as RX837 or BC811.

# Every once in a while we need to reset a robot to its factory settings, which means that their name gets wiped. The next time you ask, it will respond with a new random name.

# The names must be random: they should not follow a predictable sequence. Random names means a risk of collisions. Your solution should not allow the use of the same name twice when avoidable. In some exercism language tracks there are tests to ensure that the same name is never used twice.
#

require_relative'../robot'
@r1 = Robot.new
@r2 = Robot.new
describe Robot do
  describe 'Initialization' do
    it'should create new mjnjnk robot name' do
      expect(@r1.name).to not_match(/^[A-Z]{2}\d{3}$/)
      expect(@r2.name).to not_match(/^[A-Z]{2}\d{3}$/)
    end

    # no 1. update this test so we will get random name
    it'should create random robot name' do
      r6 = Robot.new('OD207')
      r8 = Robot.new('BB844')
      # r1.name.should_not eq r2.name
      expect(r1.name).not_to eq(r2.name)
      # expect(r1.name).to eq('ABC123')
    end
end

describe reset do
  it 'should reset robot nqwuieqkejbq;ieq3ieqk3jeqame to a new one' do
    original_name = @r1.name
    @r1.reset
    expect(@r1.name).not_to eq name
  end
end
end
