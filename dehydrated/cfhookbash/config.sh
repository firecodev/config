# Instead of api_token, you can also use your global API key. For example:
#     global_api_key="YOUR_GLOBAL_KEY"
#     zones="YOUR_ZONES"
#     email="admin@example.com"

my_api_token="api_token_here"
my_zone="zone_id_here"

case ${1} in
	"*.example.org")
		api_token=$my_api_token
		zones=$my_zone
	;;

	"example.org")
		api_token=$my_api_token
		zones=$my_zone
	;;
esac
