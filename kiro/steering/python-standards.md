---
name: python-standards
inclusion: fileMatch
fileMatchPattern: ["**/*.py", "*.py"]
---

# Python Coding Standards

Always adhere to the following rules when writing or refactoring Python code:

## 1. Style, Layout & Linting
* Strict adherence to **PEP 8** formatting guidelines.
* Use explicit type hinting for all function signatures (arguments and return types).
* Prefer `f-strings` for string formatting over `%` or `.format()`.
* Imports should be ordered alphabetically in two groups, one for the stdlib and one for the external, each group separated by a blank line.
* *Never* write em-dashes, not even in comments. Use '-' instead.
* **Blank Lines:** Maintain exactly two blank lines between top-level elements (functions, classes, `if __name__ == '__main__':`, imports, shebangs). Do *not* put two blank lines between methods inside a class (use a single blank line per PEP 8).
* **No Section Dividers:** Never use ASCII art or heavy comment lines (e.g., `# =============` or `# ----------`) to separate sections of a file.
* **Trailing Whitespace:** Ensure there are no useless spaces or trailing whitespace at the end of any lines.

## 2. Execution & Script Conventions
* **Shebangs:** Always start executable scripts with `#!/usr/bin/env python`. Never include a shebang in library-like files or modules that are not meant to be executed directly.
* **Constants & Configuration:** Do not define configuration "constants" at the top of the file. Instead, introduce these variables dynamically using `argparse` via a command-line interface. 
* **Argparse Types:** Ensure all `argparse` arguments use the `type=` parameter where applicable to enforce type safety at the CLI boundary.

## 3. Async, Performance & Machine Learning
* **Async:** Use `asyncio` for all I/O-bound operations when it makes sense. Avoid blocking calls inside async functions; use `run_in_executor` if interacting with synchronous libraries.
* **Hardware Acceleration:** When working with TensorFlow or PyTorch, always include explicit `assert` statements to verify that CUDA is available. Place this assertion at the main execution entry point or model initialization phase, not inside local utility functions.
* **Progress Bars:** Always use `tqdm` to wrap large or long-running loops so execution progress is visible. Use `from tqdm.auto import tqdm` to ensure environment compatibility.

## 4. Logging & Output
* **No Bare Prints:** Never use the `print()` function for output or debugging. 
* **Global Logging:** Always use the standard `logging` library. Rely strictly on the global configuration (e.g., `logging.info()`, `logging.warning()`). Do *not* instantiate custom logger objects (like `logger = logging.getLogger(__name__)`).

## 5. Testing & Documentation
* Every public function must have a Google-style docstring.
* Write tests using `pytest` and place them in the corresponding `tests/` directory whenever you're told. All code paths must be tested.
