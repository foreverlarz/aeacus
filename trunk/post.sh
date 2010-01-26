#!/usr/local/bin/zsh

username='lucas'
password='loves_you'
url='http://www.wingedleopard.net/post.php'

#########################################################################

sha_pw=`sha1 -s "$password" | sed 's/.*\ //'`
body="`uptime`\n\n`df -hi`\n\n`gmirror status`"
post="username=$username&password=$sha_pw&hostname=`hostname`&body=$body"
curl -d $post $url

