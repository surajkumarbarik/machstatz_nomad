job "raw-trial-xiv" {
  datacenters = ["dc1"]
  type = "batch"
group "raw" {
    task "raw" {
      driver = "raw_exec"
      config {
        command = "Notepad"
        args    = ["C:/Machstatz_Work_Drive/Nomad/message.txt"]
      }
resources {
        memory = 2048
      }
    }
  }
}