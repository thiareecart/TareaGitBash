#!/bin/bash

echo "# TareaGitBash" >> README.md
git init
git add README.md
git commit -m "Primer comando"
git branch -M main
git remote add origin https://github.com/thiareecart/TareaGitBash.git
git push -u origin main