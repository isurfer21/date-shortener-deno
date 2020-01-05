echo "Build"
wasm-pack build
sed -i.bak "s/^import "'\*'" as wasm from '.*';$/let wasm = null; export default function init(w) { wasm = w; };/" "./pkg/ds.js"
cp pkg/*.js lib/
cp pkg/*.wasm lib/

echo "Execute"
deno run mod.js -v