# changing max open file limit
exec { 'change-max-open-files':
  command => 'sudo sed -i "s/15/5000/" /etc/default/nginx; service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
}
