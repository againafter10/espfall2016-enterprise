

<div id = "topSearch">
    <div class="container_16">
        <div class="grid_16">
            <div class="grid_9">


                <input type="text" id="search" class="searchBox" placeholder="Quick search an item ..." autofocus="true"/>

            </div>
            <div class="grid_6" id="topNav">
                <ul>
                    <li><a href="index.jsp">HOME</a></li>
                    <li><a href="viewProducts_.jsp">PRODUCTS</a></li>
                    <li><a href="contact-support.jsp">CONTACT</a></li>
<!--                    <li><a href="faq.jsp">FAQ</a></li>-->
                </ul>
            </div>
        </div>
    </div>
</div>

<div id = "topThird">
    <div class="container_16">
        <div class="grid_16">
<!--            <div class="grid_9">-->
                <p style="text-align:center;"><span >The Best Bookstore Online</span><br></p>
                <p style="text-align:center;">  <span style="text-align:center;color:white"> Over 6 million books ready for shipment within 24 hours and 4.5 million eBooks to download now.</span> </p>     
<!--            </div>-->
           
        </div>
    </div>
</div>

<%
    if (session.getAttribute("admin") != null){
        %>
        <script type="text/javascript">
    $(document).ready(function (){
        //alert ("fdvgf");
                
        $('#search').keyup (function (){
            searchbar = $('#search').attr('value');
            if (searchbar.length >= 3){
                //$('#loadSearches').load('findProductLoad.jsp', {searchbar:searchbar});
                            
                $('#loadSearches').css('display');
                $.get('findProductLoad.jsp', {searchbar:searchbar}, function (data){
                    //alert (data);
                    if (data.length > 760){
                        $('#loadSearches').html(data).slideDown(500);
                    }
                    else {
                        $('#loadSearches').slideUp(500);
                        $('#loadSearches').html("");
                    }
                });
                       
            }else {
                 $('#loadSearches').slideUp(500);
                $('#loadSearches').html("");
            }
        });
    });
            
</script>
<%
    } else {
        %>
<script type="text/javascript">
    $(document).ready(function (){
        //alert ("fdvgf");
                
        $('#search').keyup (function (){
            searchbar = $('#search').attr('value');
            if (searchbar.length >= 3){
                //$('#loadSearches').load('findProductLoad.jsp', {searchbar:searchbar});
                            
                $('#loadSearches').css('display');
                $.get('findProductLoad_1.jsp', {searchbar:searchbar}, function (data){
                    //alert (data);
                    if (data.length > 760){
                        $('#loadSearches').html(data).slideDown(500);
                    }
                    else {
                        $('#loadSearches').slideUp(500);
                        $('#loadSearches').html("");
                    }
                });
                       
            }else {
                 $('#loadSearches').slideUp(500);
                $('#loadSearches').html("");
            }
        });
    });
            
</script>
<%
    }
%>

<div class="container_16" id="loadSearches" ></div>
