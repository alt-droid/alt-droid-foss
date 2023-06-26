#!/bin/sh
fdroid update --rename-apks --create-metadata --pretty

## I'm having an issue with fdroidserver right now so the auto-commit is probably a bad idea.
#git add .
#git commit -m "fdroid update"
