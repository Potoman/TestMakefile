
.PHONY : hello
hello: path_messaging_a.done path_messaging_b.done
	echo "hello word" ; \
	echo $^ ;\
	echo $(@D) ;\
	echo ---------- ;\
	for i in $^ ; do echo $$(cat $$i) ; done ;\
	result=$$(cat $<) ;\
	echo path=$$result

include a/Makefile
include b/Makefile
