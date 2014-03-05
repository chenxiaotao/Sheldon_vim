#Some SSH alias
alias tt_test_server='ssh worker@apidev.zstt365.com'
alias tt_staging_server='ssh worker@apitest.koocash.cn'
alias virtualbox='ssh ray@10.0.0.23'

#Cd alias
alias ttdev='cd ~/Work/tiantian/project/tiantian && source bin/activate'
alias blog='cd ~/Github/blog'
alias gor_blog='cd ~/Github/gor_blog'
alias personal_dev='cd /Users/RAY/Work/outsourcing_projects/anergel_website && rsinatra'

#RVM alias
alias rblog='rvm use 2.0.0@blog'
alias rsinatra='rvm use 2.0.0@sinatra'

#Other
alias up='uptime'
alias start_redis="redis-server /usr/local/etc/redis.conf"
alias start_mysql="mysql.server start"
alias start_mongodb="mongod --fork --logpath /usr/local/var/log/mongodb/mongo.log"
