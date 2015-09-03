class iis {
  iis::manage_app_pool {'www.lawfirm.in':
    enable_32_bit           => true,
    managed_runtime_version => 'v4.0',
  }

  iis::manage_site {'Default Web Site':
    site_path   => 'C:\lawfirm\lawfirm',
    port        => '80',
    ip_address  => '*',
    app_pool    => 'www.lawfirm.in'
  }
}
