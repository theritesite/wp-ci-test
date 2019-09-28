#!/usr/bin/env bash
# usage: travis.sh before|after

set -e

say() {
  echo -e "$1"
}

if [ $1 == 'before' ]; then

	# place a copy of woocommerce where the unit tests etc. expect it to be
	mkdir -p "../woocommerce"
	curl -L https://github.com/woocommerce/woocommerce/archive/3.7.0.tar.gz | tar --strip-components=1 -zx -C "../woocommerce"

	say "WooCommerce Installed"

fi
