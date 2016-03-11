class edge {
  include iterm2::stable
  include chrome
  include zsh
  include shiftit
  include atom

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

  package { 'alfred': provider => 'brewcask' }
  package { 'evernote': provider => 'brewcask' }

}
