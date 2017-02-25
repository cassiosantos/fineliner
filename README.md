Fineliner [![Build Status](https://travis-ci.org/cassiosantos/fineliner.svg?branch=master)](https://travis-ci.org/cassiosantos/fineliner)
===

Simple script to sort fineliners and shapes to draw.

To clone and run in a Docker container:

```bash
git clone git@github.com:cassiosantos/fineliner.git
cd fineliner
docker run -it -v $(pwd):/var/www swiftdocker/swift:latest bash
cd /var/www
swift test
swift build
./.build/debug/Executable
``` 


![Fineliners by Stux](docs/images/stux-fineliners.jpg)

Image from: https://pixabay.com/pt/l%C3%A1pis-de-cor-canetas-de-feltro-cor-402546/
