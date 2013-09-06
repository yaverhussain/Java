#!/bin/bash

# FIXME: allow script 

# for the moment, this script is primarily meant for standard websites

TPBASE="/share/home/version/prd/home/touchpoint/applications"
TPHOME="$TPBASE/$TPAPP/versions"
TPAPP="website"
TPVER=""

relink {
#  if [ $TPSERVER == 'sme-website' ]; then
#    rm -v sme-old && mv -v sme-current sme-old && ln -s touchpoint-$TPVER sme-current
#    elif [ $TPSERVER == 'bk-website' ]; then
#      rm -v bk-old && mv -v bk-current bk-old && ln -s touchpoint-$TPVER bk-current
#    elif [ $TPSERVER == 'tp-api' ]; then
#      rm -v bk-old && mv -v bk-current bk-old && ln -s touchpoint-$TPVER bk-current
#    
#  else  
#    rm -v previous-old && mv -v previous previous-old && mv -v current previous && ln -s touchpoint-$TPVER current
#  fi
  TPOWER=$( whoami )
  if [ $TPONWER == "bk-website" ]; then
    rm -v bk-old && mv -v bk-current bk-old && ln -s touchpoint-$TPVER bk-current
  else
    rm -v previous-old && mv -v previous previous-old && mv -v current previous && ln -s touchpoint-$TPVER current
  fi
}

restart_process {
  ps -fu $( whoami ) | grep java | grep -v grep
  if [ $? -eq 0 ]; then
    OLDPID=$( ps -fu $( whoami ) | grep java | grep -v grep | awk '{ print $2 }' )
    killall -9 java
    sleep 5
    NEWPID=$( ps -fu $( whoami ) | grep java | grep -v grep | awk '{ print $2 }' )
    if [ $OLDPID -ne $NEWPID ]; then
      echo "Process restarted."
    else
      echo "Process failed to restart."
    fi
  else
    echo "No Java process running."
  fi
}

rollback {
  TPPREVVER=$( ls -lh previous | cut -d' ' -f12 )
  rm -v current && ln -s $TPPREVVER current
}

## STEP 1: Upgrade bk-website first ##
cd $TPHOME
relink
restart_process

## STEP 2: Upgrade ##
## STEP 3: ##


# main
#echo -n "What Touchpoint version are we applying? "
#read TPVER
#if [ $( echo $TPVER | cut -d'.' -f1 ) -eq 9 ]; then
  
  

#echo -n "Which components is this being applied to? "
#read TPSERVER

#echo -n "Do we need to rollback the OutsideIn BETA jar? "
#read BETAJAR

#if [[ $BETAJAR == 'Y' || $BETAJAR == 'y' ]]; then
#  rollback_beta
#fi



exit
