job "fetch" {
	datacenters = ["dc1"]
	type = "batch"
	group "fetch" {
		count = 1
		task "fetch" {
		driver = "raw_exec"
		config {
			command = "powershell"
			args = ["C:/Users/suraj/AppData/Local/Programs/Python/Python310","C:/Machstatz_Work_Drive/Nomad/demo.py"]
		}
		resources {
			cpu = 100
			memory = 10
		}
		}
	}
}