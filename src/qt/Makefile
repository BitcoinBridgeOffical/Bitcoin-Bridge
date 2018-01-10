.PHONY: FORCE
all: FORCE
	$(MAKE) -C .. bitcoinbridge_qt test_bitcoinbridge_qt
clean: FORCE
	$(MAKE) -C .. bitcoinbridge_qt_clean test_bitcoinbridge_qt_clean
check: FORCE
	$(MAKE) -C .. test_bitcoinbridge_qt_check
bitcoinbridge-qt bitcoinbridge-qt.exe: FORCE
	 $(MAKE) -C .. bitcoinbridge_qt
