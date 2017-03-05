#!/usr/bin/env ruby
$:.unshift( File.dirname(__FILE__) )

require 'exceptions'
require 'cartridge'

c = Cartridge.new('tetris-world.gb')
