#!/system/bin/sh

restorecon -FR /hidden
restorecon -FR /hidden/data
restorecon -FR /BBSYS
restorecon -FR /cache
restorecon -FR /securefs
restorecon -FR /persist/rfs/msm/mpss
