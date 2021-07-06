#!/bin/bash
# Autor: OscarFM
# aka OdicforceSounds 

GITHUB='https://github.com'
USERNAME='rakzhodekams'
COMPANY='odicforcesounds'

# REPOSITORIES - Username
Fireup='Fireup'
Vaulas='video_aulas'
Configs='configs-and-notes'
Livros='livros'

# REPOSITORIES - Company
Challenge='The-Challenge'
WC='World-Cleaner'
SA='Spiritual-Algorithm'
CI='The-Condition-of-illusion'

# Create directory to store github projects
mkdir ~/github
cd ~/github

# Clone user repos
git clone $GITHUB/$USERNAME/$Fireup
git clone $GITHUB/$USERNAME/$Vaulas
git clone $GITHUB/$USERNAME/$Configs
git clone $GITHUB/$USERNAME/$Livros

# Clone company repos
git clone $GITHUB/$COMPANY/$Challenge
git clone $GITHUB/$COMPANY/$WC
git clone $GITHUB/$COMPANY/$SA
git clone $GITHUB/$COMPANY/$CI

exit
