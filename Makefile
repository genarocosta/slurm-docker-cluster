all:
	cat Makefile

up:
	docker-compose up -d

down:
	docker-compose down

exec:
	docker exec -it slurmctld bash

clean:
	docker-compose stop
	docker-compose rm -f
	docker volume rm slurm-docker-cluster_etc_munge slurm-docker-cluster_etc_slurm slurm-docker-cluster_slurm_jobdir slurm-docker-cluster_var_lib_mysql slurm-docker-cluster_var_log_slurm

