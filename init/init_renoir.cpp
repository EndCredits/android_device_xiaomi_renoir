/*
   Copyright (C) 2020 The LineageOS Project.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <fstream>
#include <unistd.h>

#include <android-base/properties.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "property_service.h"
#include "vendor_init.h"

using android::base::GetProperty;
using android::init::property_set;


void property_override(char const prop[], char const value[])
{
    prop_info *pi;
    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}
void property_override_dual(char const system_prop[],
    char const vendor_prop[], char const value[])
{
    property_override(system_prop, value);
    property_override(vendor_prop, value);
}

void vendor_load_properties() {
    std::string region;
    region = GetProperty("ro.boot.hwc", "GLOBAL");

    if (region == "GLOBAL") {
        property_override_dual("ro.product.model", "ro.vendor.product.model", "M2101K9G");
        property_override_dual("ro.product.device", "ro.product.vendor.device", "renoir");
        property_override_dual("ro.build.fingerprint", "ro.vendor.build.fingerprint", "Xiaomi/renoir_eea/renoir:11/RKQ1.201112.002/V12.5.6.0.RKIEUXM:user/release-keys");
        property_override("ro.build.description", "renoir_eea-user 11 RKQ1.201112.002 V12.5.6.0.RKIEUXM release-keys");
        property_override("ro.product.mod_device", "renoir_eea_global");
    } else if (region == "JP") {
            property_override_dual("ro.product.model", "ro.vendor.product.model", "M2101K9R");
            property_override_dual("ro.product.device", "ro.product.vendor.device",  "renoir");
            property_override_dual("ro.build.fingerprint", "ro.vendor.build.fingerprint", "Xiaomi/renoir_jp/renoir:11/RKQ1.201112.002/V12.5.4.0.RKIJPXM:user/release-keys");
            property_override("ro.build.description", "renoir-user 11 RKQ1.201112.002 V12.5.4.0.RKIJPXM release-keys");
            property_override("ro.product.mod_device", "renoir_jp_global");
            } else {
                property_override_dual("ro.product.model", "ro.vendor.product.model", "M2101K9G");
                property_override_dual("ro.product.device", "ro.product.vendor.device",  "renoir");
                property_override_dual("ro.build.fingerprint", "ro.vendor.build.fingerprint", "Xiaomi/renoir/renoir:11/RKQ1.201112.002/V12.5.5.0.RKIMIXM:user/release-keys");
                property_override("ro.build.description", "renoir-user 11 RKQ1.201112.002 V12.5.5.0.RKIMIXM release-keys");
                property_override("ro.product.mod_device", "renoir_global");
            }
    }
}
