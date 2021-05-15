# quick-lint-js web demo

To build the demo, install the [emscripten SDK][emscripten-sdk] and
[Ninja][], then run the following commands:

    $ cd website
    $ emcmake cmake -S .. -B build-emscripten -G Ninja -DCMAKE_BUILD_TYPE=Release
    $ emmake ninja -C build-emscripten quick-lint-js-wasm-demo quick-lint-js-wasm-demo-licenses
    $ emmake cmake --install build-emscripten --component wasm-demo --prefix public/demo

To run the demo on your own machine, execute the build instructions above, then
start the [local development web server](../README.md#Developing):

    $ cd website
    $ yarn
    $ yarn start
    Server running: http://127.0.0.1:9001/

Then, in your web browser, navigate to the demo page on the server (e.g.
`http://127.0.0.1:9001/demo/`).

[Ninja]: https://ninja-build.org/
[emscripten-sdk]: https://emscripten.org/docs/getting_started/downloads.html
