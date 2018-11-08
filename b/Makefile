$(info cd : $(MAKEFILE_LIST))

path_messaging_b.done:
	@ { \
	echo B_MSG_OUT_OF_DATE_!!! ;\
	set -e ;\
	echo msg=$$msg ;\
	msg="header" ;\
	msg="$$msg :footer" ;\
	echo msg=$$msg ;\
	echo "f..." ;\
	touch $@ ;\
	echo "path_lib_b" > $@ ;\
	}