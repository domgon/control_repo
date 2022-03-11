class profile::ssh_server {
  package {'openssh-server':
          ensure => present,
  }
  service { 'sshd':
          ensure => 'running',
          enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
          ensure => present,
          user   => 'root',
          type   => 'ssh-rsa',
          key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDqy65bLQ1U5+Hu62nYwRuSUzNQsJ3fXDzqZ1qY9BDiCUkfSpFVJK1QbFEfdW2t7ZzLpSsnRUZhuWqV6u8c2jk4IvveGpppJhjDApd2eDC4QONcD5hh3eN30TMmv+cV2RyIJtHtQRiuQdf7UEdKlYjD8Jjhbjz6+IH4StwUdJFd1oWjmdlZzEUYjRI6zuruW/yOeO6iwsdmqJsDczgrx2Q21tT9uF15Kco7aJZ7W5qOIgHbnXmsu0CF+8UBvMsI9npkU5gmnipLC/ZwPRMSAePGtBsYFQQCuBWmnlCnngxtMW1vDcmQnXEt3YE4TIQ52BYVvfRm+OTToN/EMA0M8Yxl root@master.puppet.vm',
  }
}
