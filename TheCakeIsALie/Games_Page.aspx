<%@ Page Title="" Language="C#" MasterPageFile="~/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Games_Page.aspx.cs" Inherits="TheCakeIsALie.All_Games" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Game</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
        <!--<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/jquery-func.js"></script>-->

    </head>
    <body>
        <!-- START PAGE SOURCE -->
        <div id="shell">
            <div id="header">


                <div id="sub-navigation">
                    <ul>
                        <li><a href="All_Games.aspx">SHOW ALL GAMES</a></li>
                        <li><a href="#">GAMES ON SPECIAL</a></li>
                        <li><a href="#">LATEST GAMES</a></li>
                        <li><a href="#">MOST POPULAR GAMES</a></li>
                    </ul>
                    <br />
                    <div id="search">
                        <form action="#" method="get" accept-charset="utf-8">
                            <label for="search-field">SEARCH GAME</label>
                            <input type="text" name="search field" value="Enter search here" id="search-field" class="blink search-field" />
                            <input type="submit" value="GO!" class="search-button" />
                        </form>
                    </div>
                </div>
            </div>
            <div id="main">
                <form runat="server" id="content">
                    <div class="box">
                        <div class="head">
                            <h2>LATEST GAMES</h2>
                            <p class="text-right"><a href="#">See all</a></p>
                        </div>
                        <div class="game" runat="server" id="divCLick">
                            <div class="game-image"><span class="play"><span class="name">BATTLEFIELD 4</span></span> <a href="#">
                                <asp:ImageButton runat="server" class="game-image img" OnClick="imageClick" src="css/images/battlefield.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="game">
                            <div class="game-image"><span class="play"><span class="name">COD BlACK OPS 3</span></span> <a href="#">
                                <img src="css/images/black_ops.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="game">
                            <div class="game-image"><span class="play"><span class="name">BAT MAN 3</span></span> <a href="#">
                                <img src="css/images/batman.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="game">
                            <div class="game-image"><span class="play"><span class="name">ARK</span></span> <a href="#">
                                <img src="css/images/ark.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="game">
                            <div class="game-image"><span class="play"><span class="name">BACK TO THE FUTURE 2</span></span> <a href="#">
                                <img src="css/images/backToFuture.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="game last">
                            <div class="game-image"><span class="play"><span class="name">FAR CRY 4</span></span> <a href="#">
                                <img src="css/images/far-cry-4.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="cl">&nbsp;</div>
                    </div>
                    <div class="box">
                        <div class="head">
                            <h2>TOP RATED</h2>
                            <p class="text-right"><a href="#">See all</a></p>
                        </div>
                        <div class="game">
                            <div class="game-image"><span class="play"><span class="name">THE CREW</span></span> <a href="#">
                                <img src="css/images/crew.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="game">
                            <div class="game-image"><span class="play"><span class="name">FIFA 12</span></span> <a href="#">
                                <img src="css/images/fifa.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="game">
                            <div class="game-image"><span class="play"><span class="name">KUNG FU PANDA</span></span> <a href="#">
                                <img src="css/images/kungfu.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="game">
                            <div class="game-image"><span class="play"><span class="name">FORTNITE</span></span> <a href="#">
                                <img src="css/images/Fortnite-Xbox-One-_.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="game">
                            <div class="game-image"><span class="play"><span class="name">FORZA</span></span> <a href="#">
                                <img src="css/images/forza.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="game last">
                            <div class="game-image"><span class="play"><span class="name">INCREDBLES</span></span> <a href="#">
                                <img src="css/images/incredibles.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="cl">&nbsp;</div>
                    </div>
                    <div class="box">
                        <div class="head">
                            <h2>MOST COMMENTED</h2>
                            <p class="text-right"><a href="#">See all</a></p>
                        </div>
                        <div class="game">
                            <div class="game-image"><span class="play"><span class="name">MASS EFFECT</span></span> <a href="#">
                                <img src="css/images/massEffect.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="game">
                            <div class="game-image"><span class="play"><span class="name">MINECRAFT</span></span> <a href="#">
                                <img src="css/images/minecraft_.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="game">
                            <div class="game-image"><span class="play"><span class="name">PROTOTYPE</span></span> <a href="#">
                                <img src="css/images/prototype.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="game">
                            <div class="game-image"><span class="play"><span class="name">TOMB RAIDER</span></span> <a href="#">
                                <img src="css/images/tomb_raider.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="game">
                            <div class="game-image"><span class="play"><span class="name">CRYSIS</span></span> <a href="#">
                                <img src="css/images/crysis.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="game last">
                            <div class="game-image"><span class="play"><span class="name">HALO 4</span></span> <a href="#">
                                <img src="css/images/halo4.jpg" alt="" /></a> </div>
                            <div class="rating">
                                <p>RATING</p>
                                <div class="stars">
                                    <div class="stars-in"></div>
                                </div>
                                <span class="comments">12</span>
                            </div>
                        </div>
                        <div class="cl">&nbsp;</div>
                    </div>
                </form>
                <div id="news">
                    <div class="head">
                        <h3>NEWS</h3>
                        <p class="text-right"><a href="#">See all</a></p>
                    </div>
                    <div class="content">
                        <p class="date">12.04.09</p>
                        <h4>MineCraft</h4>
                        <p>&quot;Minecraft is a creative game,&quot; It is a multi-sensory journey where you create, build and survive.&reg;-This game, captures... </p>
                        <a href="#">Read more</a>
                    </div>
                    <div class="content">
                        <p class="date">11.04.09</p>
                        <h4>Call Of Duty Black Ops 2</h4>
                        <p>This game is recommended as the best zombie game of all time &quot;Are you up to face and kill the zombies?,&quot;...</p>
                        <a href="#">Read more</a>
                    </div>
                    <div class="content">
                        <p class="date">10.04.09</p>
                        <h4>Kung Fu Panda</h4>
                        <p>It is an adventured filled game for all kids who enjoy kung fu</p>
                        <a href="#">Read more</a>
                    </div>
                </div>
                <div id="coming">
                    <div class="head">
                        <h3>COMING SOON<strong>!</strong></h3>
                        <p class="text-right"><a href="#">See all</a></p>
                    </div>
                    <div class="content">
                        <h4>Need For Speed Redline </h4>
                        <a href="#">
                            <img src="css/images/need_for_Speed.jpg" alt="" /></a>
                        <p>PS4 presents &quot;Need For Speed Redline,&quot; thrilling races in the streets of New Orleans...</p>
                        <a href="#">Read more</a>
                    </div>
                    <div class="cl">&nbsp;</div>
                    <div class="content">
                        <h4>Tomb Raider </h4>
                        <a href="#">
                            <img src="css/images/tomb_raider.jpg" alt="" /></a>
                        <p>Playstation 2 presents &quot;Tomb Raider,&quot; an adventure seeking and strategic game...</p>
                        <a href="#">Read more</a>
                    </div>
                </div>
                <div class="cl">&nbsp;</div>
                <!-- END PAGE SOURCE -->
    </body>
    </html>
    </div>
    </div>
</asp:Content>

