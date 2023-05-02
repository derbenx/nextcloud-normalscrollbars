#!/bin/bash
#Automatic buildscript for Nextcloud apps
#Made by @OliverParoczai
#Requires git, xmlstarlet, tar, and optionally openssl

REPOURL="https://github.com/derbenx/nextcloud-normalscrollbars.git" #official repo, change if forked
SIGN=FALSE #Sign the file for uploading to the official appstore
SIGNCERT=~/.nextcloud/certificates/normalscrollbars.key #The location of the key

mkdir tmp

echo "Cloning $REPOURL"
git clone -q $REPOURL tmp/normalscrollbars/
VERSION=$(xmlstarlet sel -T -t -m '//info/version' -v . -n tmp/normalscrollbars/appinfo/info.xml)
echo "Version is ${VERSION}"

echo "Starting compression"
tar --exclude='code' --exclude='differences.png' --exclude=".git" -czf normalscrollbars-v${VERSION}.tar.gz -C tmp normalscrollbars/

rm -rf tmp

if [ $SIGN ]; then
	echo ""
	echo "The signature:"
	echo ""
	openssl dgst -sha512 -sign $SIGNCERT normalscrollbars-v${VERSION}.tar.gz | openssl base64
	echo ""
fi
