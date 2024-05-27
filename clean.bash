#!/usr/bin/env bash

# Delete all generated files (*.params, etc.)

# Exit if there is an error
set -e

# Delete all tool-generated params files
find . -name "*.params" -type f -delete

# Delete all tool-generated csv files (but not the QGC-generated csv files)
find . -name "*.csv" ! -name "*vehicle1.csv" -type f -delete

# Delete all tool-generated message files
find . -name "*_messages.txt" -type f -delete
