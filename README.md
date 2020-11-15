# memory-profiler - A memory profiler for Linux

This is dockerized version of <https://github.com/koute/memory-profiler.git>.

## License

This project is dual-licensed under Apache 2.0 and MIT.

## Usage

You may compile you executable inside of container and then run it with:

```bash
memory-profiler YOUR_EXECUTABLE [ARGS]
```

`memory-profiler` is just an alias for `LD_PRELOAD=/root/libmemory_profiler.so`.

Now you can copy produced `*.dat` files for future analysis with `memory-profiler-cli`.

## Changelog

### v1.0.0

- initial revision
