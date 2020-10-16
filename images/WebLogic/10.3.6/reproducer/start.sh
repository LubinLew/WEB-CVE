#!/bin/sh

export WLS_USER=weblogic
export WLS_PW=weblogic123

/weblogic/user_projects/domains/weblogic/startWebLogic.sh > /var/log/weblogic.log 2>&1