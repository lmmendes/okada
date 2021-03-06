# Okada [![Build Status](https://travis-ci.org/lmmendes/okada.svg?branch=master)](https://travis-ci.org/lmmendes/okada)

Okada is an *work in progress* to try to implement a Game Boy emulator in Ruby.

I was inspired listening to "[The Ultimate Game Boy Talk](https://media.ccc.de/v/33c3-8029-the_ultimate_game_boy_talk)" by Michael Steil.

Checkout the [Game Boy Opcodes](https://github.com/lmmendes/game-boy-opcodes) repository if you are searching for an automated way to obtain the GameBoy opcodes.

NOTE: Work in progress this code doesn't run yet.

# Tasks

- [ ] Cartridge
  - [ ] Support other cartridge types (other than 0x00h / 08h / 09h)
- [ ] MMU
- [ ] CPU
  - [ ] Flags
  - [ ] Opcodes
  - [ ] Interrupts
- [ ] Input
- [ ] Sound
- [ ] Video
 - [ ] SDL / r2d

## Reference documentation

- http://gameboy.mongenel.com/dmg/lesson1.html
- http://gbdev.gg8.se/files/
- https://media.ccc.de/v/33c3-8029-the_ultimate_game_boy_talk
- http://gbdev.gg8.se/wiki/articles/The_Cartridge_Header#014D_-_Header_Checksum
- https://realboyemulator.files.wordpress.com/2013/01/gbcpuman.pdf
- http://imrannazar.com/GameBoy-Emulation-in-JavaScript:-The-CPU
- http://www.pastraiser.com/cpu/gameboy/gameboy_opcodes.html
- https://realboyemulator.wordpress.com/2013/01/03/a-look-at-the-game-boy-bootstrap-let-the-fun-begin/
- http://gameboy.mongenel.com/dmg/gbc_memorymap.txt
- http://gbdev.gg8.se/wiki/articles/Gameboy_Bootstrap_ROM
- https://calleerlandsson.com/rubys-bitwise-operators/
- http://problemkaputt.de/pandocs.htm#cpuregistersandflags
- http://www.pastraiser.com/cpu/gameboy/gameboy_opcodes.html
- http://problemkaputt.de/gmb.htm#DOWNLOAD
- https://cturt.github.io/cinoop.html
- https://emu-docs.org/?page=Game%20Boy
- https://www.scribd.com/doc/94546/Study-of-the-techniques-for-emulation-programming-by-Victor-Moya-del-Barrio
- http://gbdev.gg8.se/wiki/articles/Memory_Map
- http://www.codeslinger.co.uk/pages/projects/gameboy/dma.html
- http://www.hardwarebook.info/Game_Boy_Link
- https://github.com/avivace/awesome-gbdev

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lmmendes/okada. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
