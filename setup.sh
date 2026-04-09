#!/usr/bin/env bash
# setup.sh — [FILL IN: Project Name] Reproducibility Script
#
# Usage:
#   bash setup.sh
#
# Run after activating your venv and installing requirements.txt.
# This script exits with code 0 if the environment is correctly configured,
# or code 1 (with an error message) if any check fails.
#
# Rename this file to setup.sh before committing.

set -euo pipefail

echo "=== Environment Verification: [FILL IN: Project Name] ==="
echo ""

# ── Python version check ──────────────────────────────────────────────────────
echo "Checking Python version..."
PYTHON_VERSION=$(python --version 2>&1)
echo "  Found: $PYTHON_VERSION"
python -c "
import sys
if sys.version_info < (3, 11):
    print('ERROR: Python 3.11 or higher is required.')
    sys.exit(1)
print('  Python version OK')
"

# ── Dependency check ──────────────────────────────────────────────────────────
echo ""
echo "Checking required packages..."

# [FILL IN: Add one check per package in your requirements.txt]
# Pattern: python -c "import PACKAGE; print(f'  PACKAGE {PACKAGE.__version__} OK')"
#
# Example:
# python -c "import pandas; print(f'  pandas {pandas.__version__} OK')"
# python -c "import matplotlib; print(f'  matplotlib {matplotlib.__version__} OK')"

# ── Project-specific verification ─────────────────────────────────────────────
echo ""
echo "Running project-specific checks..."

# [FILL IN: Add any additional verification steps]
# Examples:
#   - Check that a required data directory exists
#   - Verify a config file is present
#   - Run a quick smoke test on a core module
#
# Example:
# if [ ! -f "config.py" ]; then
#   echo "ERROR: config.py not found"
#   exit 1
# fi
# echo "  config.py found OK"

echo ""
echo "=== All checks passed. Environment is ready. ==="

#!/usr/bin/env bash
set -euo pipefail

python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python test_environment.py
echo "Setup complete."
