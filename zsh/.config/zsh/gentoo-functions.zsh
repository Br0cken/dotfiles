# fix for steam vac error caused by gamescope. see https://github.com/ValveSoftware/gamescope/issues/1065#issuecomment-2665614906
steamfix(){
  sudo getcap /usr/bin/gamescope
  sudo setcap 'CAP_SYS_NICE-eip' /usr/bin/gamescope
  sudo getcap /usr/bin/gamescope
}
