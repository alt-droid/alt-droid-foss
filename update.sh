#!/bin/sh
fdroid update --rename-apks --create-metadata --pretty
git add .
git commit -m "fdroid update"
