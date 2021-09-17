job "run-apps" {
	datacenters = ["dc1"]

  	group "app-a" {
    	task "a" {
      		driver = "docker"
      		config {
        		image = "orious/app-a-image"
      		}
    	}
  	}
	
  	group "app-b" {
		task "b" {
			driver = "docker"
			config {
				image = "orious/app-b-image"
			}
		}
	}
}
