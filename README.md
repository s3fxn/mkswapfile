# mkswapfile

mkswapfile - make and enable a swap file easily.

**This gem support only Linux.**

## Installation

    $ gem install mkswapfile

## Usage

```
$ sudo mkswapfile size
size: 1-8 (GB)


EXAMPLE

$ sudo mkswapfile 2
dd if=/dev/zero of=/swap bs=1M count=2049 && chmod 600 /swap && mkswap /swap && \ 
(echo '/swap swap swap defaults 0 0' | tee -a /etc/fstab) && swapon /swap
....

$ free -m
              total        used        free      shared  buff/cache   available
Mem:            481          90          11           0         379         378
Swap:          2048           0        2048
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/s3fxn/mkswapfile.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
