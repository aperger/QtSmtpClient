#!/bin/sh
cd ..
tar czf QtSmtpClient-2.0.0.tar.gz --exclude=*.git* --exclude=*.user --exclude=Makefile* --exclude=Release* --exclude=release* --exclude=Debug* --exclude=debug* ./QtSmtpClient
