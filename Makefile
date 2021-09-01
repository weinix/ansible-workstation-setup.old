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
	virsh undefine vmtest

newvm:
	virt-clone --original vm1 --auto-clone -n vmtest

startvm:
	virsh start vmtest

showip:
	@./scripts/getvmip.sh

# end
