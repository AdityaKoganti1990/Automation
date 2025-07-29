# VC Security Application Automation Framework

This project is a Robot Framework-based automation framework for the VC Security application.

## Structure
- `tests/` - Robot Framework test suites
- `resources/` - Shared resource files (keywords, variables)
- `keywords/` - Custom Python keywords

## Getting Started
1. Install Python 3.8+
2. Install dependencies:
   ```powershell
   pip install robotframework selenium
   ```
3. Download the appropriate WebDriver (e.g., ChromeDriver) and ensure it is in your PATH.
4. Run tests:
   ```powershell
   robot tests/
   ```

## Extending
- Add new test cases in `tests/`
- Add shared keywords in `resources/` or `keywords/`

---

For workspace-specific Copilot instructions, see `.github/copilot-instructions.md`.
