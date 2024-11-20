Axe Core
==========

This is the official reference wallet for AXE digital currency and comprises the backbone of the AXE peer-to-peer network. You can [download AXE Core](https://axerunners.com/) or [build it yourself](#building) using the guides below.

Running
---------------------
The following are some helpful notes on how to run Axe Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/axe-qt` (GUI) or
- `bin/axed` (headless)

### Windows

Unpack the files into a directory, and then run axe-qt.exe.

### macOS

Drag Axe Core to your applications folder, and then run Axe Core.

### Need Help?

* See the [Axe documentation](https://docs.axe.org)
for help and more information.
* Ask for help on [Axe Discord](http://stayaxey.com)
* Ask for help on the [Axe Forum](https://axe.org/forum)

Building
---------------------
The following are developer notes on how to build Axe Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The Axe Core repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Productivity Notes](productivity.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- Source Code Documentation ***TODO***
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [JSON-RPC Interface](JSON-RPC-interface.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on [Reddit](https://www.reddit.com/r/AXErunners/)
* Discuss on [Discord](https://discordapp.com/invite/BqhteaU)
* Discuss on [Slack](https://axe-slack.herokuapp.com/)

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [axe.conf Configuration File](axe-conf.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Memory](reduce-memory.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)
- [PSBT support](psbt.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
