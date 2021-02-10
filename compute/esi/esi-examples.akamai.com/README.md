EdgeSuite 4.2 ESI Examples
--------------------------

[Ad Example](ad.html)

-   Displays different HTML ad output based upon the users browser type\
-   The browser is detected using the HTTP\_USER\_AGENT variable
-   Attempts to esi:include the HTML for the ad by referencing an ad
    server
-   If the ad server cannot be contacted, a default ad is sent to the
    browser\

[Geographic Example using EdgeScape](geo.html)

-   Displays the geographic information associated with the client's IP
    address
-   The geographic information for the client's IP address is stored in
    the EdgeScape database and made available through the \$(GEO)
    variable
-   Displays only the geographic information that is currently available
    for the client's IP address
-   Includes description of each geographic value available

[](view-source:http://$(HTTP_HOST)/viewsource/country.html)[Country Home
Page Example using EdgeScape](/viewsource/country.html)

-   Based on the country location of the client, loads corresponding
    country home page for the web site.
-   Note, only the ESI source code is displayed in this example.

[Eliminating a Splash Screen for Geographies Example using
EdgeScape](/geo/index.html)  [(View Source
Code)](view-source:http://$(HTTP_HOST)/viewsource/geo/index.html) [(View
Source Code)](/viewsource/geo/index.html) \

-   The following ESI example eliminates the need for a splash screen
    that gathers an end-users geographic information and directs them
    to\
     the appropriate page accordingly. Using ESI the spash screen can be
    eliminated as it can use the EdgeScape information in ESI to send
    the user automatically to the appropriate page.
-   End users country code is checked by ESI's \$(GEO) variable and if
    it matches US, DE, JP or FR the appropriate country page is
    returned. If none of the country codes checked match, a default page
    is returned.   

[User Agent Example](ua.html)

-   Example to show how to use the HTTP\_USER\_AGENT variable to
    determine the client's browser type, and OS type[](ua.html)

[View ESI Source Example](viewsource.html)

-   Dynamically creates the view source link based upon the query string
    value
-   Determines if the page is being called as an esi:included fragment
    or being referenced directly so you can view the souce the page
    itself. [](viewsource.html)

[Examples from www.akamai.com](ESI_Examples_from_www_akamai_com.html)

-   Lists two ESI examples from the www.akamai.com web site

[Date Example](today.html)

-   Displays a date string using the \$strftime()   function
    [](view-source:http://$(HTTP_HOST)/viewsource/includebydate.html)
    [](/viewsource/includebydate.html)

[](view-source:http://$(HTTP_HOST)/viewsource/includebydate.html)[Dynamic
Include URL using Date Example](/viewsource/includebydate.html)

-   The example dynamically builds the esi:include source URL based on 
    the current date.

-   Note, only the ESI source code is displayed in this
    example.[](loop.html?sym=AKAM&sym=EMC&sym=MSFT)

[Loop Example](loop.html?sym=AKAM&sym=EMC&sym=MSFT)

-   Displays multiple values of query string with the same name using  
    a list and recursively iterating through the list by using a
    recursive esi:include
-   Note, ESI supports up to five levels of includes

[Page Rotation Example (Query String)](page_rotation.html)

-   Uses a query string parameter to determine which page to esi:include
    from a list of pages
-   Uses a dictionary of numbers as strings to numbers as numbers to
    create the navigation, which requires numeric operators
-   Dynamically builds the previous and next links using the
    \$(REQUEST\_PATH) variable

[Page Rotation Example (Cookies)](page_rotation_cookie.html)

-   Uses a cookie to determine which page to esi:include from a list of
    pages
-   Uses a dictionary of numbers as strings to numbers as numbers to
    determine which page to display based on numeric operators\
-   Uses a dictionary of numbers as numbers to numbers as strings to add
    the number as string value to the cookie
-   The function \$add\_header() is used to set the cookie used to
    determine which page to esi:include\

[Image Rotation Example](image_rotation.html)

-   [](image_rotation.html)Uses a query string parameter to determine
    which image to display in the HTML image tag from a list of images
-   Uses a dictionary of numbers as strings to numbers as numbers to
    create the navigation, which requires numeric operators
-   Dynamically builds the previous and next links using the
    \$(REQUEST\_PATH) variable \

[Randomly Chosen Image Example](random-image.html)

-   Uses rand() function to randomly display an image picked from a
    predefined list of images

[Web Tour using Query String Example](web_tour.html) 
[](view-source:http://$(HTTP_HOST)/viewsource/web_tour.html)[(View
Source Code)](/viewsource/web_tour.html)

-   Uses a query string[](page_rotation.html) parameter to determine
    which URL to display in the HTML frame from a list of URLs
-   The browser will automatically refresh the page after five seconds
    with the query string, which will cause next URL to be displayed in
    the frame\
-   Dynamically builds the URL to the frame source

[Web Tour using Cookie Example](web_tour_cookie.html) 
[](view-source:http://$(HTTP_HOST)/viewsource/web_tour_cookie.html)[(View
Source Code)](/viewsource/web_tour_cookie.html)

-   Uses a cookie to determine which URL to display in the HTML frame
    from a list of URLs
-   The browser will automatically refresh the page after five seconds
    sending along the cookie, which will cause next URL to be displayed
    in the frame
-   Dynamically builds the URL to the frame source\

[Quote Navigation Example](quotes.html)             

-   Uses a query string parameter to determine which humorous quote to
    include from a list of humorous quotes
-   Uses a dictionary of numbers as strings to numbers as numbers to
    create the navigation, which requires numeric operators
-   Dynamically builds the previous and next links using the
    \$(REQUEST\_PATH) variable

[Set Cookie Example](setcookie.html)

-   Determines if a cookie is present and if the cookie if present,
    displays the cookie using \$(HTTP\_COOKIE) variable
-   If the cookie is not present, uses the \$set[](setcookie.html)
    \_header() function to add a presistent cookie with a 24 hour
    expiration to the response

[Setting Expires and Cache Control Headers for Downstream
Caching](expires.html)

-   Sets a 24 hour HTTP Expires and Cache-Control headers to the
    response to allow for downstream caches to cache the page and the
    Expires HTTP-EQUIV tag to allow browsers to cache the page\

[Setting Expires and Cache Control Headers for Downstream Cache
Busting](expires_now.html)

-   Sets a HTTP Expires, Cache-Control and Pragma headers to the
    response to disallow for downstream caches from caching the page and
    the Expires and Pragma HTTP-EQUIV tags to disallow browsers from
    caching the page.[](expires_now.html)

[Form Processing Example](form1.html)

-   Demonstrates how to store state of a multiple page and multiple form
    submission process
-   Uses the \$url\_decode() function to properly decode the form
    variables

[Quiz Example](quiz.html)

-   Demonstrates using form processing logic with ESI and other ESI
    features.

[Download ESI Examples](esi-examples.zip)\

