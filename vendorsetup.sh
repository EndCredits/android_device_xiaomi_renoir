#!/bin/bash
#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

echo "Force remove build props to sync build time properieties"
rm -rf ../../../out/target/product/renoir/obj/PACKAGING/system_build_prop_intermediates/buildinfo.prop
rm -rf ../../../out/target/product/renoir/system/build.prop
rm -rf ../../../out/target/product/renoir/vendor/build.prop