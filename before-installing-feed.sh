#!/bin/bash

# Remove feed sources
sed -i '/telephony/d' feeds.conf.default
sed -i '/video/d' feeds.conf.default
