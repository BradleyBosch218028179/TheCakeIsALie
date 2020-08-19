<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TheCakeIsALie.Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="templatemo_content_panel">
        <div id="templatemo_content_wrapper">

            <div id="templatemo_content">

                <div id="content_left">

                    <div class="post_section">
                        <div class="post_header">
                            <div class="post_title_info">
                                <div class="post_title">Popular and Recommended games</div>
                                </br>
                            </div>
                        </div>

                            <!--Create a image slider-->
                            <div class="post_content">
                                <img class="display" src="images/csgo.jfif" style="width: 100%"/>
                                <img class="display" src="images/angrybirds.jfif" style="width: 100%"/>
                                <img class="display" src="images/minecraft.jpg" style="width: 100%"/>
                                <img class="display" src="images/dbd.jpg" style="width: 100%" />
                                 <img class="display" src="images/fortnite.jpg" style="width: 100%"/>
                                 <img class="display" src="images/pubg.jpg" style="width: 100%"/>
                                <img class="display" src="images/cod.jpg" style="width: 100%"/>
                                <img class="display" src="images/rocketleague.jpg" style="width: 100%"/>
                                <img class="display" src="images/wow.jpg" style="width: 100%"/>
                            </div>

                            <script>
                                var myIndex = 0;
                                carousel();

                                function carousel() {
                                    var i;
                                    var x = document.getElementsByClassName("display");
                                    for (i = 0; i < x.length; i++) {
                                        x[i].style.display = "none";
                                    }
                                    myIndex++;
                                    if (myIndex > x.length) { myIndex = 1 }
                                    x[myIndex - 1].style.display = "block";
                                    // Change image every 8 seconds
                                    setTimeout(carousel, 2000);
                                }
                            </script>

                            <p style="font-size: 20px">These games have been carefully selected for you to enjoy! </p>
                            <div class="link_button"><a href="#">Continue reading...</a></div>

                        <div class="cleaner">&nbsp;</div>
                    </div>

                    <div class="divider_h60">&nbsp;</div>

                    <div class="post_section">
                        <div class="post_header">
                            <div class="post_title_info">
                                <div class="post_title">Our latest specials</div>
                            </div>
                        </div>

                        <div class="post_content">
                            <img src="images/specials.jpg" alt="image 2" />
                            <p style="font-size: 20px">Our specials range from R100 to R50. it includes strategy, fantasy, mmorpg, fps, racing, shooting, idle, XBox, indie, platform, Playstation and more!</p>
                            <div class="link_button"><a href="#">Continue reading...</a></div>
                        </div>
                    </div>

                    <div class="divider_h60">&nbsp;</div>

                    <div class="post_section">
                        <div class="post_header">
                            <div class="post_title_info">
                                <div class="post_title">Subscribe now</div>
                            </div>

                        </div>

                        <div class="post_content">
                            <img src="images/gamers.jpg" alt="image 3" />
                            <p>
                                <p style="font-size: 20px">Subscribe to get the latest news about new game releases before your friends and get valuable tips on how to compete more effectively</p>
                            </p>
                            <div class="link_button"><a href="#">Continue reading...</a></div>
                        </div>
                    </div>

                    <div class="cleaner">&nbsp;</div>
                </div>
                <!-- end of content left -->

                <div id="content_right">

                    <div class="ads_250_250">
                        <a href="#">
                            <img src="images/templatemo_ads_02.jpg" alt="250x250 banner" /></a>
                    </div>

                    <div class="cleaner_h30">&nbsp;</div>

                    <div class="content_right_section">
                        <div class="content_right_titile_01">Gaming Categories</div>
                        <ul>
                            <li><a href="#">strategy</a></li>
                            <li><a href="#">fantasy</a></li>
                            <li><a href="#">mmorpg</a></li>
                            <li><a href="#">fps</a></li>
                            <li><a href="#">racing</a></li>
                            <li><a href="#">shooting</a></li>
                            <li><a href="#">idle</a></li>
                            <li><a href="#">Playstation</a></li>
                            <li><a href="#">platform</a></li>
                            <li><a href="#">XBox</a></li>
                        </ul>
                    </div>

                    <div class="cleaner_h30">&nbsp;</div>

                    <div class="content_right_section">
                        <div class="ads_125_125 right_padding_10">
                            <a href="#">
                                <img src="images/templatemo_ads.jpg" alt="125x125 banner 1" /></a>
                        </div>
                        <div class="ads_125_125">
                            <a href="#">
                                <img src="images/templatemo_ads.jpg" alt="125x125 banner 2" /></a>
                        </div>
                        <div class="ads_125_125 right_padding_10">
                            <a href="#">
                                <img src="images/templatemo_ads.jpg" alt="125x125 banner 3" /></a>
                        </div>
                        <div class="ads_125_125">
                            <a href="#">
                                <img src="images/templatemo_ads.jpg" alt="125x125 banner 4" /></a>
                        </div>
                    </div>

                    <div class="cleaner_h30">&nbsp;</div>

                    <div class="content_right_section">
                        <div class="content_right_titile_01">Recent Posts</div>
                        <div class="recent_post">
                            <div class="post_title">Spore</div>
                            Spore is absolutely amazing. I enjoy evolving and building things
                        </div>

                        <div class="recent_post">
                            <div class="post_title">Age of Empires</div>
                            Age of Empires is an absolute classic. I love it so much!
                        </div>

                        <div class="recent_post">
                            <div class="post_title">Need For Speed Underground</div>
                            I love Need For Speed Underground as it is so much fun to play and I love smashing police cars.
                        </div>

                        <div class="recent_post">
                            <div class="post_title">Call Of Duty Black Ops</div>
                            Call Of Duty Black Ops is super cool. I can recommend it to anyone who wants a thrill and enjoys shooting zombiess
                        </div>

                        <div class="recent_post">
                            <div class="post_title">Skyrim</div>
                            SKyrim is awesome as it is set in a fantasy world with dragons and all sorts of mythtical creatures.
                        </div>
                    </div>


                    <div class="cleaner">&nbsp;</div>
                </div>
                <!-- end of content right -->
                &nbsp;
         <div class="cleaner">&nbsp;</div>
            </div>
            <!-- end of content -->

            <div id="templatemo_content_bottom">&nbsp;</div>
            <div class="cleaner">&nbsp;</div>
        </div>
        <!-- end of content wrapper -->
    </div>
    <!-- end of content panel --->
</asp:Content>
