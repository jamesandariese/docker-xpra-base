# `xpra-base`

A base on which to build other things using [`xpra`](http://www.xpra.org).

This automatically enables encryption and disables stuff like pulseaudio.

You *will* need to use --encryption=AES on the client side to use the encryption.

This also assumes that there's a password file in /password.  The file is not
included in the image in order to require that it be created.  If the error
message turns out to be too non-obvious, a wrapper entrypoint will need to be
created but for now, it'll just say /password: file not found (or similar).

See [`xpra-pidgin`](http://github.com/jamesandariese/docker-xpra-pidgin) for a sample
of how to use this base image.
