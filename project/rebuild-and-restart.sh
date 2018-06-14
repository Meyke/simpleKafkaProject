#!/bin/bash

./stop-sentence-stack.sh
./clean-all-projects.sh
./build-all-projects.sh
./build-all-images.sh
./start-sentence-stack.sh
