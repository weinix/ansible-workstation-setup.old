##
# ubuntu-ansible
#
# @file
# @version 0.1

test:
	bundle exec kitchen test default-ubuntu18-04

converge:
	bundle exec kitchen converge default-ubuntu18-04

verify:
	bundle exec kitchen verify default-ubuntu18-04

list:
	virsh list --all
delete:
	virsh undefine ubuntu-20.04-org-clone

newvm:
	virt-clone --original ubuntu20.04-org --auto-clone

start:
	virsh start ubuntu20.04-org-clone

showip:
	@./scripts/getvmip.sh

# end
