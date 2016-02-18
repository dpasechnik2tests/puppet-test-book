class base {
#  include sudo
#  include ssh
}

node '755f43a83f6b' 
{
	
}

#db.example.com
node 'c2a5a15b507a' 
{
  include base
  include apache
}


#mail.example.com
node '5682d605f3ea' 
{
  include base
  include testingtemplates
}

#web.example.com
node 'd0529c638461'
{
  include base
}
