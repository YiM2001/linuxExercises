#!/bin/bash

cat Property_Tax_Roll.csv | grep -e "MADISON SCHOOLS" | cut -d "," -f7
