#!/sbin/sh
#
# Copyright (C) 2008 The Android Open-Source Project
# Copyright (C) 2015 OmniROM Project
#
# originally by Victor Roque (victor.rooque@gmail.com)
# cleaned up and edited for CM by BaNkS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

RAW_ID=$(cat /sys/devices/system/soc/soc0/raw_id)

if [ $RAW_ID == 1974 ]; then
 rm -rf /system/app/NfcNci
 rm -rf /system/priv-app/Tag
 rm -rf /system/lib/*nfc*
 rm -rf /system/lib/hw/*nfc*
 rm -rf /system/etc/*nfc*
 rm -rf /system/etc/permissions/*nfc*
 rm -rf /system/vendor/firmware/*bcm*
elif [ $RAW_ID == 1972 ]; then
 rm -rf /system/app/NfcNci
 rm -rf /system/priv-app/Tag
 rm -rf /system/lib/*nfc*
 rm -rf /system/lib/hw/*nfc*
 rm -rf /system/etc/*nfc*
 rm -rf /system/etc/permissions/*nfc*
 rm -rf /system/vendor/firmware/*bcm*
fi

exit 0
