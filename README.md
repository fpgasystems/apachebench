# ApacheBench HighPerformance

This is a standalone version of ApacheBench (ab), branched from [github.com/apache/httpd](https://github.com/apache/httpd/blob/trunk/support/ab.c) that supports benchmarking high-performance HTTP servers.

### Microsecond support

The original implementation rounds up measurements to miliseconds (ms). This version leaves measurements with microsecond granularity.

## Getting started

- Open [dlcdn.apache.org/apr](https://dlcdn.apache.org/apr/) to determine the versions of `apr` and `apr-util` available for download.
- Open [github.com/libexpat/releases](https://github.com/libexpat/libexpat/releases) to determine the version of `expat` available for download.
- Set them on file [apr/Makefile](apr/Makefile)

Build it locally:
```bash
make all
```

Run:
```bash
/ab -d -q -c 1 -n 5000 -k -e ./data.csv -g ./data.dat http://10.253.74.96
```

## License

This software is copyrighted under the BSD 3-Clause License.
