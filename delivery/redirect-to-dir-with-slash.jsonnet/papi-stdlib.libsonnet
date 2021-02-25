{
  redirect_to_dir_with_slash(path, response_code = 301)::
    local target_path = path + "/";
    // Return redirect rule.
    {
        "name": "Redirect %s to %s" % [path, target_path],
        "children": [],
        "behaviors": [
          {
            "name": "redirect",
            "options": {
              "mobileDefaultChoice": "DEFAULT",
              "destinationProtocol": "SAME_AS_REQUEST",
              "destinationHostname": "SAME_AS_REQUEST",
              "destinationPath": "OTHER",
              "queryString": "APPEND",
              "responseCode": 301,
              "destinationPathOther": target_path
            }
          }
        ],
        "criteria": [
          {
            "name": "path",
            "options": {
              "matchOperator": "MATCHES_ONE_OF",
              "values": [
                path
              ],
              "matchCaseSensitive": false
            }
          }
        ],
        "criteriaMustSatisfy": "all"
    }
}