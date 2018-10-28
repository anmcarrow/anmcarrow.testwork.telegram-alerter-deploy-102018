#!/bin/sh

gem install net-ssh -v '~> 2.9' && \
gem install \
serverspec \
test-kitchen \
kitchen-vagrant \
kitchen-ansible \
kitchen-verifier-serverspec

