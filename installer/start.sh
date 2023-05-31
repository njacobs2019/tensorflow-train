#!/bin/bash

# Check pip dependencies
pip list > /tf/logs/pip.txt

# run the python testing script
python /tf/test_tf.py > /tf/logs/test_tf.txt

# run index.py
echo "Starting the application"
python /tf/src/index.py | tee /tf/logs/index.txt
