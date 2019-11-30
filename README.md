## Cloud Control Ruby gem 

Cloud Control Cloud API gem designed for easy extensibility.
Note: This gem at present ONLY provides read functionality across the API. This is so that the Chef Inspec plugin written for Cloud Control can operate successfully. All the existing gems for this are 6 years old and appear abandoned, so I'm not sure there is much of a demand for this. There is also a lot of work to change the API calls to leverage MCP 2.0 apis.



### Install

either install as a gem via Bundler
```
gem install cloudcontrol_sdk
```



### Usage

```
require "cloudcontrol_sdk"
api_base      = CloudControl::Client::API_URL[:au]
dev_org_id    = 'my-super-secret-org-numbersandletters'
dev_user      = 'me'
dev_password  = 'very secret'

c = CloudControl::Client.new(api_base, dev_org_id, dev_user, dev_password)

server = c.server.list(name: 'myfavoritevm')
```



Based on : https://github.com/udayakiran/opsource.

