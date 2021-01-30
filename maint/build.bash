#!/usr/bin/env bash
set -e # halt script on error

subsites=2021
maindest=./_site

rm -rf $maindest
mkdir -p $maindest
bundle exec jekyll build
cp index.html $maindest

for ss in $subsites; do
	subdest=$maindest/$ss
	mkdir -p $subdest
	pushd $ss
		bundle exec jekyll build
	popd
	cp -rf $ss/_site/* $subdest
done
bundle exec htmlproofer $maindest --disable-external
