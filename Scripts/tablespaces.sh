#!/bin/bash
ps cax | grep control_tablespaces.sh > /dev/null
if [ $? -eq 0 ]; then
  echo "Process is running."
else
  sh /calidad/TableSpaces/Scripts/control_tablespaces.sh
fi
exit
