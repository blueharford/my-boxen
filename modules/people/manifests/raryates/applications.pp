class people::raryates::applications {
  include iterm2::stable
  include chrome
  include spotify
  include hipchat
  include caffeine
  include onepassword
  include onepassword::chrome
  include dropbox

  class {'spectacle': version => '1.0.3'}

  class {'virtualbox':
    version => '5.0.14',
    patch_level => '105127',
  }

  class {'vagrant': version => '1.8.1'}

  package {'CheatSheet':
    source   => 'https://www.mediaatelier.com/CheatSheet/download.php',
    provider => compressed_app,
    flavor   => 'zip',
  }

}
