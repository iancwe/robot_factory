# Manage robot factory settings.

# When robots come off the factory floor, they have no name.

# The first time you boot them up, a random name is generated in the format of two uppercase letters followed by three digits, such as RX837 or BC811.

# Every once in a while we need to reset a robot to its factory settings, which means that their name gets wiped. The next time you ask, it will respond with a new random name.

# The names must be random: they should not follow a predictable sequence. Random names means a risk of collisions. Your solution should not allow the use of the same name twice when avoidable. In some exercism language tracks there are tests to ensure that the same name is never used twice.
#

require_relative'../robot'
@r1=Robot.new
@r2=Robot.new
describe Robot do
  describe 'Initialization' do
    it'should create new robot name'do

      expect(r1.name).to eq('AB123')
    end
  end
  # run r1.reset => new name for r1
  describe 'should reset robot name and give new name' do
      @r1.clear
      @r2.clear
      expect(@r1.name).to eq('BC888')
      expect(@r1.name).to eq('CV009')

  end

end
