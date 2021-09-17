job "run-apps" {
  datacenters = ["dc1"]

  group "app-a" {
    count = 1
    service {
      port = "5000"
    }
    network {
      port "http" {
        static = 5000
      }
    }
    task "a" {
      driver = "docker"
      config {
        image = "orious/app-a-image"
        ports = ["http"]
      }
    }
  }
	
  group "app-b" {
    count = 1
    service {
      port = "5001"
    }
    network {
      port "http" {
        static = 5001
      }
    }
    task "b" {
      driver = "docker"
      config {
        image = "orious/app-b-image"
        ports = ["http"]
      }
    }
  }
}
