class profile::r10k {
  class {'r10k':
    remote => 'https://github.com/gflaz84/control-repo',
  }
  class {'r10k::webhook::config':
    use_mcollective => false,
    enable_ssl => false,
  }
  class {'r10k::webook':
    user => 'root',
    group => 'root',
  }
} 
