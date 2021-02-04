# Akamai Examples
Snippets of code to run logic at Akamai Edge Servers

Anybody can contribute a MD Snippet by just sharing 3 files into a github subrepo under https://github.com/akamai/md-snippets.git: 

* A readme text file [(see sample template template_README.md)](./template_README.md)
* A screenshot(s) showing how to implement the functionality using the Property Manager UI [(see sample image redirect-to-dir-with-slash.png)](delivery/redirect-to-dir-with-slash/redirect-to-dir-with-slash.png)
* A JSON file showing the code people need to use to implement the functionality via the Akamai CLI “property” module like:
```
akamai property update <property> --file <rules.json>
```
[(see sample code redirect-to-dir-with-slash.json)](delivery/redirect-to-dir-with-slash/redirect-to-dir-with-slash.json)
