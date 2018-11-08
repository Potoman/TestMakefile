
.PHONY : hello
hello: path_messaging_a.done path_messaging_b.done
	echo "hello word" ; \
	echo $^ ;\
	echo $(@D) ;\
	echo ---------- ;\
	for i in $^ ; do echo $$(cat $$i) ; done ;\
	result=$$(cat $<) ;\
	echo Path messaging A : $$result

# This is call only if messaging file have been updated.
generate_messaging:path_messaging_a.done
	@ { \
	set -e ;\
	echo generate_messaging... ;\
	result=$$(cat $<) ;\
	echo Messaging path : $$result ;\
	touch $@ ;\
	echo Messaging generated. ;\
	}

# Ask 'make my_lib' as usual.
my_lib:generate_messaging
	@ { \
	set -e ;\
	echo Library building... ;\
	# here we can call a script \
	}

include a/Makefile
include b/Makefile
