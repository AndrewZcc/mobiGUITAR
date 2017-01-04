#!/bin/bash

java -cp /Users/zhchuch/Downloads/adt-bundle-mac-x86_64-20140702/sdk/tools/lib/emma.jar emma report -r html -in coverage.em,coverage.ec,coverage1.ec,coverage2.ec,coverage3.ec,coverage4.ec,coverage5.ec,coverage6.ec
