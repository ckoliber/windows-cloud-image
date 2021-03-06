source "qemu" "windows" {
  vm_name   = "master"
  format    = "qcow2"
  cpus      = 2
  memory    = 2048
  disk_size = 20480

  iso_url          = "./input/installer.iso"
  iso_checksum     = "md5:7c5a331923c9effd4a6d20721149a1b8"
  accelerator      = "hax"
  disk_compression = true

  floppy_files     = ["./autounattend.xml"]
  shutdown_timeout = "1h"
  shutdown_command = "echo"

  communicator = "none"
}

source "virtualbox-iso" "windows" {
  vm_name       = "master"
  guest_os_type = "Windows2019_64"
  cpus          = 2
  memory        = 2048
  disk_size     = 20480

  iso_url      = "./input/installer.iso"
  iso_checksum = "md5:7c5a331923c9effd4a6d20721149a1b8"

  floppy_files            = ["./autounattend.xml"]
  shutdown_timeout        = "1h"
  shutdown_command        = "echo"
  guest_additions_mode    = "disable"
  virtualbox_version_file = ""

  communicator = "none"
}
