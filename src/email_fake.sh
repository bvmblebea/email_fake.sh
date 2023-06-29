#!/bin/bash

api="https://api.emailfake.com"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36"

function generate_email() {
	curl --request GET \
		--url "$api/api/" \
		--user-agent "$user_agent" \
		--header "content-type: application/json"
}

function get_unread_count() {
	# 1 - email: (string): <email>
	curl --request GET \
		--url "$api/api/?unread=$1" \
		--user-agent "$user_agent"
}
