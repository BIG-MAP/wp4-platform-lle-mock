#!/usr/bin/env bash

docker build -t nokal/wp4-platform-lle-mock:$(poetry version -s) . 
