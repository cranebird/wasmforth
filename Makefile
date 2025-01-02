
src/add.wasm: src/add.wat
	wat2wasm $^ -o $@

run_add: src/add.wasm
	wasm-interp $^ --run-all-exports
