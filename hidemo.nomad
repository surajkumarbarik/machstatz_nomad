job "hidemo" {
	datacenters = ["dc1"]
	type = "batch"
	parameterized {
		payload = "required"
	}
	task "hidemo" {
		driver = "raw_exec"
dispatch_payload {
			file = "message.txt"
		}
		config {
			command = "bash"
                  args = ["-c","echo\"Hello World by Hi_Demo; sleep 120"]
		}
		resources {
			cpu = 100
			memory = 64
		}
	}
}
