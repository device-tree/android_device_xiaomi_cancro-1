#
# Copyright (C) 2015 The CyanogenMod Project
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

def FullOTA_PostValidate(info):
 info.script.AppendExtra(
  ('ui_print("Resizing filesystem...");\n'
   'run_program("/sbin/e2fsck", "-fy", "/dev/block/platform/msm_sdcc.1/by-name/system");\n'
   'run_program("/tmp/install/bin/resize2fs_static", "/dev/block/platform/msm_sdcc.1/by-name/system");\n'
   'run_program("/sbin/e2fsck", "-fy", "/dev/block/platform/msm_sdcc.1/by-name/system");'))

def FullOTA_InstallEnd(info):
 info.script.AppendExtra(
  ('ui_print("Removing NFC for Mi4...");\n'
   'mount("ext4", "EMMC", "/dev/block/platform/msm_sdcc.1/by-name/system", "/system", "");\n'
   'assert(run_program("/tmp/install/bin/removenfc.sh") == 0);\n'
   'unmount("/system");'))
