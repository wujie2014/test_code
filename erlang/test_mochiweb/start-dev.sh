#!/bin/sh
exec erl \
    -pa ebin deps/*/ebin \
    -boot start_sasl \
    -sname test_mochiweb_dev \
    -s test_mochiweb \
    -s reloader
