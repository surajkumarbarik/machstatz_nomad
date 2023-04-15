job "hi" {
	datacenters = ["dc1"]
	type = "batch"
	parameterized {
		payload = "required"
	}
	task "hi" {
		driver = "docker"
dispatch_payload {
			file = "message.txt"
		}
		config {
			command = "bash"
                  args = ["-c","echo\"Hello World; sleep 120"]
		}
		resources {
			cpu = 100
			memory = 64
		}
	}
}
