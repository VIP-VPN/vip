#!/bin/sh

# Set skip value to 23
skip=23

# Set umask value
umask_val=$(umask)
umask 77

# Create temporary file
tmpfile=$(mktemp -p /tmp gztmp.XXXXXX) || exit 1

# Extract the compressed data using bzip2
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  # Reset umask value
  umask $umask_val

  # Set executable permission on the temporary file
  /bin/chmod 700 $tmpfile

  # Get the name of the original program
  prog=$(echo $0 | /bin/sed 's|^.*/||')

  # Create a symbolic link to the temporary file
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    # Trap to clean up temporary files
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    # Trap to clean up temporary files
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
