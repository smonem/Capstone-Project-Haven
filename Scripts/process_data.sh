#!/bin/bash

# Paths
ADD_PREV_YEARS="Notebooks/Add_Prev_Years.ipynb"
CREATE_TARGET="Notebooks/Create_Target.ipynb"

# Execute
jupyter execute "$ADD_PREV_YEARS"
jupyter execute "$CREATE_TARGET"
