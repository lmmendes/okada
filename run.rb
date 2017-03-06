#!/usr/bin/env ruby
$:.unshift( File.dirname(__FILE__) )

# http://gbdev.gg8.se/wiki/articles/Pan_Docs

require 'exceptions'
require 'cartridge'

c = Cartridge.new('tetris-world.gb')
