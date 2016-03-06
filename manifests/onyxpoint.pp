class onyxpoint {
  include iterm2::stable
  include chrome
  include hipchat
  include caffeine
  include zsh
  include prezto
  include shiftit
  include atom


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

  package { 'CoRD':
    source   => 'http://iweb.dl.sourceforge.net/project/cord/cord/0.5.7/CoRD_0.5.7.zip',
    provider => compressed_app,
  }

}
