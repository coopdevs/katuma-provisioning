#!/bin/bash

# Backup git revision
pushd /home/openfoodnetwork/apps/openfoodnetwork/current
git rev-parse --verify HEAD > /tmp/git_rev
popd

# Postgres DB dump
sudo su -c '/usr/bin/pg_dump --encoding=UTF8 "openfoodnetwork"' postgres > /tmp/pg_dump

# Compress /shared directory
tar -zcvf /tmp/shared.tar.gz /home/openfoodnetwork/apps/openfoodnetwork/shared
