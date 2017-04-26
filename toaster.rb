require_relative 'robot'
require 'pry'
#this is class of Toaster
class Toaster < Robot
def initialize(brand)
  super()
  @brand = brand
end
