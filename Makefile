BASE_URL := https://raw.githubusercontent.com/mandiant/commando-vm/main/
CONFIG_XML := Modules/configureVM.psm1 Modules/debloatConfig.xml Modules/userConfig.xml

.PHONY: all
all: $(CONFIG_XML)

$(CONFIG_XML):
	curl -L $(BASE_URL)/$@ -o $@

