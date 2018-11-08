current_dir = $(shell pwd)

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
LOCAL_PATH := $(patsubst %/,%,$(dir $(mkfile_path)))
PATH_MESSAGING_A := $(LOCAL_PATH)/messaging.json

# Good way to get file path from other makefile.
path_messaging_a.done:$(PATH_MESSAGING_A)
	@ { \
	set -e ;\
	touch $@ ;\
	echo Messaging updated by user. ;\
	echo "$(PATH_MESSAGING_A)" > $@ ;\
	}
