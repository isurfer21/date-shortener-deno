wasm-pack build
sed -i.bak "s/^import "'\*'" as wasm from '.*';$/let wasm = null; export default function init(w) { wasm = w; };/" "./pkg/ds.js"
deno run app.js
