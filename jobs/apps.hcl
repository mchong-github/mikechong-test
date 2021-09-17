job "run-apps" {
  datacenters = ["dc1"]

  group "app-a" {
    count = 1
    task "a" {
      driver = "docker"
      config {
        image = "orious/app-a-image"
      }
    }
    network {
      port "ingress-a" {
        static = 5000
        to = 5000
      }
    }
  }
	
  group "app-b" {
    count = 1
    task "b" {
      driver = "docker"
      config {
        image = "orious/app-b-image"
      }
    }
    network {
      port "ingress-b" {
        static = 5001
        to = 5001
      }
    }
  }
}
