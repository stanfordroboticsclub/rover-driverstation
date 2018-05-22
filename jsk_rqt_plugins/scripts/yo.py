#!/usr/bin/env python

import sys

from jsk_rqt_plugins.yes_no_button import YesNoButton
from rqt_gui.main import Main

plugin = 'YesNoButton'
main = Main(filename=plugin)
sys.exit(main.main(standalone=plugin))
