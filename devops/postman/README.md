# Postman Collections and Environments for Akamai APIs

Here you can download JSON files that you can import into Postman to make easier to interact with Akamai APIs.

## Collections

Collections are a group of API requests that usually reference a single API Endpoint.

### Naming conventions for file names

The collection files have the following file name convention:

`postman-collection-v{postman-version}-akamai-{api-name-using-dashes}-api-v{akamai-version}.json`

For example the file containing the Postman collection v2.1 for Akamai Fast Purge API version 3 will be:

`postman-collection-v2.1-akamai-fast-purge-api-v3.json`

And a file containing the Postman collection v2.1 for Akamai Property Manager API version 2 will be:

`postman-collection-v2.1-akamai-property-manager-api-v2.json`

### Naming conventions for Collections

It is recommended to name the collection something like:
Akamai + "API Name" for example: `Akamai Fast Purge` or `Akamai Property Manager`

You can then create a folder for the API version for example `v1` or `v2` and then include all the requests under the right version number (you can use subfolders to group requests if the API has a lot of resources like the property manager API)

Here is an example of the tree structure for the Fast Purge API:

```
Akamai Fast Purge
└── v3
    ├── delete
    │   ├── POST delete-cpcode-network
    │   ├── POST delete-tag-network
    │   └── POST delete-url-network
    └── invalidate
        ├── POST invalidate-cpcode-network
        ├── POST invalidate-tag-network
        └── POST invalidate-url-network
```
### Naming conventions for Requests

Requests usually start with {{baseUrl}} followed by the API path. You can use Postman variables or path keys to represent dynamic values. For example: 
`{{baseUrl}}/ccu/v3/delete/tag/{{network}}` (this format indicates the value for "network" is taken from a postman environment variable)
`{{baseUrl}}/ccu/v3/delete/tag/:network` (this format indicates the value for "network" is taken from a postman path variable)

### Environment Variables

Postman Collections reference Environment Variables which are indicated using camel case surrounded by double curly brackets, like for example `{{host}}` to reference dynamic fields in the API calls. Examples of such variables are:
* host: references the unique hostname for making API calls. Something like `akab-q5rdsc4lu5ugzfec-svylg647pc73i24r.luna.akamaiapis.net`
* client_secret: references the API credential's client secret (should not be shared). Something like `b21Ge7N6iGqsFCaDDeJVeAyfGkynbF2cLxzc9csIIXM=`
* access_token: references the API credential's access token (should not be shared). Something like `akab-5f7kldy3qmamhmc4-xi7l6gxitsvoabcv`
* client_token: references the API credential's client token (should not be shared). Something like `akab-izdzwcpwa2q3ufcg-lwukp45scekf61lc`
* baseUrl: References the base URL to prepend all API calls, its value should be `https://{{host}}` (there is no need to edit this value).

For the collection to work properly, you will need to create or import an Akamai postman environment and set the right values for the environment variables like your API credentials.

## Importing Collections and Environments

You can easily imported the Collections and Environments from this repository into Postman by using Postman's "Import" functionality and selecting the corresponding JSON file

## Collaboration

Pull requests are welcome, please take a look at the sample files and try to use a similar format. Thanks!

