current_dir = $(shell pwd)

msg := b

msg.json:
	@ echo A_MSG_OUT_OF_DATE_!!!

.PHONY: path_messaging_a.done
path_messaging_a.done:msg.json
	@ { \
	set -e ;\
	echo msg=$$msg ;\
	msg="header" ;\
	msg="$$msg :footer" ;\
	echo msg=$$msg ;\
	echo "f..." ;\
	echo $(@D) ;\
	touch $@ ;\
	echo "path_lib_a" > $@ ;\
	}