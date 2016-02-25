class people::raryates::applications {
  include iterm2::stable
  include chrome

  class {'virtualbox':
    version => '5.0.14',
    patch_level => '105127',
  }

  class {'vagrant': version => '1.8.1'}

}
