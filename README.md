# Ranga extension demo

This repo is to demonstrates how to write a extension for NSWA Ranga system.

Extension developer manual (in Chinese): [Here](https://glider0.github.io/doc.zh/devman-extensions.html)

## Build and install

Use Info-ZIP or other zip archive utilities to pack codes to a zip file

```
$ (cd rostc.demo; zip -FSr ../rostc.demo.zip .)
```

> You need zip the contents of a directory WITHOUT including the directory itself.

Then, you can use [Ranga command-line client](https://github.com/glider0/ranga-client/) to install it

```
$ ranga-cli auth -p       # Log-in superuser first
$ ranga-cli addon install-extension rostc.demo.zip
```

Or you can install it in default web-console by uploading it.

## Copyright

Copyright (C) 2019 Ranga Open-Source Technology Center.

License: MIT
