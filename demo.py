import nomad


n = nomad.Nomad(host="127.0.0.1", timeout=5)
# print(n.jobs.get_jobs())
jobs = n.jobs.get_jobs()

for job in jobs:
  print(job)
# print("This is demo for Nomad")

"hi" in n.jobs

j = n.jobs["hi"]["ID"]

example_allocation = n.job.get_allocations(j)

print(n.job.deregister_job(j))