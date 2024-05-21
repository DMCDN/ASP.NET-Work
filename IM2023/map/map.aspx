<%@ Page Title="" Language="C#" MasterPageFile="~/mp.Master" AutoEventWireup="true" CodeBehind="map.aspx.cs" Inherits="IM2023.map" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="website icon" type="jpg" href="./pic/microchip-solid.svg">
    <title>電腦主機網</title>
    <link rel="stylesheet" href="styles.css">
    <!-- 引入Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- 引入Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <!-- Fontawesome Link for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">-->
    <script src="https://kit.fontawesome.com/23f4b8a02d.js" crossorigin="anonymous"></script>

    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/fuse.js/3.3.0/fuse.min.js'></script>
</head>
<body>
    <canvas class="snow" id="snow"></canvas>
    <header>
        <!--<nav>
          </div>
            <ul>
                <li><a href="#home">首頁</a></li>
                <li><a href="#products">商品</a></li>
                <li><a href="">門市據點</a></li>
                <li class="nav-item">
                    <button type="button" style="padding-top: 10px;" class="btn" data-bs-toggle="modal" data-bs-target="#cartModal">
                        <i class="fa-solid fa-cart-shopping fa-2xl"style="color: #ffffff;"></i>
                        
                    </button>
                    (<span class="total-count"></span>)
                </li>
            </ul>
        </nav>-->
        <nav class="navbar">
          <h2 class="logo"><a href="#"><i class="fa-solid fa-laptop fa-2xl"></i></a></h2>
          <input type="checkbox" id="menu-toggler">
          <label for="menu-toggler" id="hamburger-btn">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="white" width="24px" height="24px">
              <path d="M0 0h24v24H0z" fill="none"/>
              <path d="M3 18h18v-2H3v2zm0-5h18V11H3v2zm0-7v2h18V6H3z"/>
            </svg>
          </label>
          <ul class="all-links">
          <li><a href="#home">首頁</a></li>
                <li><a href="#products">商品</a></li>
                <li><a href="store.html">門市據點</a></li>
                <li class="nav-item">
                    <button type="button" style="padding-top: 10px;" class="btn" data-bs-toggle="modal" data-bs-target="#cartModal">
                        <i class="fa-solid fa-cart-shopping fa-2xl"style="color: #ffffff;"></i>
                        
                    </button>
                    <span>(<span class="total-count"></span>)</span>
                </li>
          </ul>
        </nav>
    </header>
    <div class="modal fade" id="cartModal" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="cartModalLabel" aria-hidden="true">
       <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="cartModalLabel">購物車</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
            <div class="modal-body">
              <table class="show-cart ">

              </table>
              
            </div>
            <div class="modal-footer">
                <div class="left">
                  總計: $<span class="total-cart"></span>NT
                </div>
                <button type="button" class="btn btn-primary">結帳</button>
                <button class="clear-cart btn btn-danger">清除</button></div>
                <!-- 其他按鈕 -->
            </div>
        </div>
    </div>


    <section id="home">
        <div class="marquee">
            <marquee direction="left" scrollamount="8" onMouseOver="this.stop()" onMouseOut="this.start()"><h2>歡迎來到電腦組機網</h2></marquee>
        </div>
        <!-- 其他首頁內容 -->
    </section>

    <!-- 在<section id="products">中修改內容 -->
    <section id="products">
        <h2>商品</h2>

        <div class="product">
            <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#productModal1">
                中央處理器
            </button>
        </div>
        <div class="product">
            <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#productModal2">
                主機板
            </button>
        </div>
        <div class="product">
            <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#productModal3">
                RAM記憶體
            </button>
        </div>
        <div class="product">
            <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#productModal4">
                SSD 固態硬碟
            </button>
        </div>
        <div class="product">
            <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#productModal5">
                顯示卡
            </button>
        </div>

    </section>
    <!-- 添加Modal內容 -->
    <div class="modal fade" id="productModal1" tabindex="-1" aria-labelledby="productModalLabel1" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="searchBox">
                        <input type="text" placeholder="關鍵字搜尋" class="form-control" id="inline-search1" autocomplete="on">
                    </div>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span> AMD AM4 Ryzen 3000系列</span>
                        </summary>
                    <div class="prods">
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>AMD【四核】Ryzen3 3200G 3.6GHz(Turbo 4.0GHz)/4C/快取384KB/65W/代理商三年保/含風扇</span>
                              
                              <a href="#" data-id="1" data-name="AMD【四核】Ryzen3 3200G 3.6GHz(Turbo 4.0GHz)/4C/快取384KB/65W/代理商三年保/含風扇" data-price="2490" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$2,490元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    </details>
                    <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span>AMD AM4 Ryzen 4000系列</span>
                        </summary>
                    <div class="prods">
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>AMD【四核】Ryzen3 4100 3.8GHz(Turbo 4.0GHz)/4C8T/快取4MB/65W/代理商三年保/含風扇</span>
                              <a href="#" data-id="2" data-name="AMD【四核】Ryzen3 4100 3.8GHz(Turbo 4.0GHz)/4C8T/快取4MB/65W/代理商三年保/含風扇" data-price="1950" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$1,950元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    </details>
                    <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span>AMD AM4 Ryzen 5000系列7nm</span>
                        </summary>
                    <div class="prods">
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>AMD【6核】Ryzen5 5500 3.6GHz(Turbo 4.2GHz)/ZEN3/6C12T/快取16MB/65W/代理商三年</span>
                              <a href="#" data-id="3" data-name="AMD【6核】Ryzen5 5500 3.6GHz(Turbo 4.2GHz)/ZEN3/6C12T/快取16MB/65W/代理商三年" data-price="3250" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$3,250元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>AMD【8核】Ryzen7 5700X 3.4GHz(Turbo 4.6GHz)/ZEN3/8C16T/快取32MB/65W/代理商三年</span>
                              <a href="#" data-id="4" data-name="AMD【8核】Ryzen7 5700X 3.4GHz(Turbo 4.6GHz)/ZEN3/8C16T/快取32MB/65W/代理商三年" data-price="5990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$5,990元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>APU系列</span>
                                </a>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>AMD【6核】Ryzen5 5600G 3.9GHz(Turbo 4.4GHz)/AM4/6C12T/L3快取 16MB/65W/代理商三年</span>
                              <a href="#" data-id="5" data-name="AMD【6核】Ryzen5 5600G 3.9GHz(Turbo 4.4GHz)/AM4/6C12T/L3快取 16MB/65W/代理商三年" data-price="4970" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$4,970元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    </details>
                    <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span>AMD AM5 Ryzen 7000系列5nm</span>
                        </summary>
                    <div class="prods">
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>AMD【6核】Ryzen5 7500F 3.7GHz(Turbo 5.0GHz)/ZEN5/6C12T/快取32MB/65W/代理商三年</span>
                              <a href="#" data-id="6" data-name="AMD【6核】Ryzen5 7500F 3.7GHz(Turbo 5.0GHz)/ZEN5/6C12T/快取32MB/65W/代理商三年" data-price="5250" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$5,250元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>【組裝價】AMD【6核】Ryzen5 7500F 3.7GHz(Turbo 5.0GHz)/ZEN5/6C12T/快取32MB/65W/代理商三年</span>
                              <a href="#" data-id="7" data-name="【組裝價】AMD【6核】Ryzen5 7500F 3.7GHz(Turbo 5.0GHz)/ZEN5/6C12T/快取32MB/65W/代理商三年" data-price="4990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$4,990元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>AMD【6核】Ryzen5 7600 3.8GHz(Turbo 5.1GHz)/ZEN4/6C12T/快取32MB/含內顯/65W/代理商三年</span>
                              <a href="#" data-id="8" data-name="AMD【6核】Ryzen5 7600 3.8GHz(Turbo 5.1GHz)/ZEN4/6C12T/快取32MB/含內顯/65W/代理商三年" data-price="7650" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$7,650元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>AMD【6核】Ryzen5 7600X 4.7GHz(Turbo 5.3GHz)/ZEN4/6C12T/快取32MB/RDNA2內顯/65W/代理商三年</span>
                              <a href="#" data-id="9" data-name="AMD【6核】Ryzen5 7600X 4.7GHz(Turbo 5.3GHz)/ZEN4/6C12T/快取32MB/RDNA2內顯/65W/代理商三年" data-price="7950" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$7,950元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>AMD【8核】Ryzen7 7700 3.8GHz(Turbo 5.3GHz)/ZEN4/8C16T/快取32MB/含內顯/65W/代理商三年</span>
                              <a href="#" data-id="10" data-name="AMD【8核】Ryzen7 7700 3.8GHz(Turbo 5.3GHz)/ZEN4/8C16T/快取32MB/含內顯/65W/代理商三年" data-price="10950" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$10,950元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>AMD【8核】Ryzen7 7700X 4.5GHz(Turbo 5.4GHz)/ZEN4/8C16T/快取32MB/RDNA2內顯/105W/代理商三年</span>
                              <a href="#" data-id="11" data-name="AMD【8核】Ryzen7 7700X 4.5GHz(Turbo 5.4GHz)/ZEN4/8C16T/快取32MB/RDNA2內顯/105W/代理商三年" data-price="11150" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$11,150元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>AMD【12核】Ryzen9 7900X 4.7GHz(Turbo 5.6GHz)/ZEN4/12C24T/快取64MB/RDNA2內顯/170W/代理商三年</span>
                              <a href="#" data-id="12" data-name="AMD【12核】Ryzen9 7900X 4.7GHz(Turbo 5.6GHz)/ZEN4/12C24T/快取64MB/RDNA2內顯/170W/代理商三年" data-price="15150" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$15,150元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>AMD【16核】Ryzen9 7950X 4.5GHz(Turbo 5.7GHz)/ZEN4/16C32T/快取64MB/RDNA2內顯/170W/代理商三年</span>
                              <a href="#" data-id="13" data-name="AMD【16核】Ryzen9 7950X 4.5GHz(Turbo 5.7GHz)/ZEN4/16C32T/快取64MB/RDNA2內顯/170W/代理商三年" data-price="18150" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$18,150元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    </details>
                    <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span>Intel 1200腳位，第十代14nm【Comet Lake平台】</span>
                        </summary>
                    <div class="prods">
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>Intel【六核】Core i5-10400F 6C12T/2.9GHz(Turbo 4.3GHz)/L3快取12M/65W【代理公司貨】</span>
                              <a href="#" data-id="14" data-name="Intel【六核】Core i5-10400F 6C12T/2.9GHz(Turbo 4.3GHz)/L3快取12M/65W【代理公司貨】" data-price="4500" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$4,500元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    </details>
                    <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span> Intel 1200腳位，第十一代14nm【Rocket Lake平台】</span>
                        </summary>
                    <div class="prods">
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>Intel【六核】Core i5-11400 6C12T/2.6GHz(Turbo 4.4GHz)/快取12M/65W【代理公司貨】</span>
                              <a href="#" data-id="15" data-name="Intel【六核】Core i5-11400 6C12T/2.6GHz(Turbo 4.4GHz)/快取12M/65W【代理公司貨】" data-price="5300" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$5,300元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    </details>
                    <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span>Intel 1700腳位，第十二代Intel 7製程【Alder Lake平台】</span>
                        </summary>
                    <div class="prods">
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>Intel【四核】Core i3-12100F 4C8T/3.3GHz(Turbo 4.3GHz)/快取12M/無內顯/58W【代理公司貨】</span>
                              <a href="#" data-id="16" data-name="Intel【四核】Core i3-12100F 4C8T/3.3GHz(Turbo 4.3GHz)/快取12M/無內顯/58W【代理公司貨】" data-price="3590" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$3,590元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    <div class="prods">
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>Intel【四核】Core i3-12100 4C8T/3.3GHz(Turbo 4.3GHz)/快取12M/UHD730/60W【代理公司貨】</span>
                              <a href="#" data-id="17" data-name="Intel【四核】Core i3-12100 4C8T/3.3GHz(Turbo 4.3GHz)/快取12M/UHD730/60W【代理公司貨】" data-price="3880" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$3,880元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    <div class="prods">
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>Intel【六核】Core i5-12400F 6C12T/2.5GHz(Turbo 4.4GHz)/快取18M/無內顯/65W【平行輸入國際保】</span>
                              <a href="#" data-id="18" data-name="Intel【六核】Core i5-12400F 6C12T/2.5GHz(Turbo 4.4GHz)/快取18M/無內顯/65W【平行輸入國際保】" data-price="4690" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$4,690元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    <div class="prods">
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>Intel【六核】Core i5-12400 6C12T/2.5GHz(Turbo 4.4GHz)/快取18M/UHD730/65W【代理公司貨】</span>
                              <a href="#" data-id="19" data-name="Intel【六核】Core i5-12400 6C12T/2.5GHz(Turbo 4.4GHz)/快取18M/UHD730/65W【代理公司貨】" data-price="5480" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$5,480元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    </details>
                </div>
                <div class="modal-footer">
                    
                    <!-- 其他按鈕 -->
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="productModal2" tabindex="-1" aria-labelledby="productModalLabel2" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="searchBox">
                        <input type="text" placeholder="關鍵字搜尋" class="form-control" id="inline-search2" autocomplete="on">
                    </div>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span>Intel 1700 Z790 晶片組/DDR4</span>
                        </summary>
                        <div class="prods">
                            <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>華碩</span>
                                </a>
                            </div>
                            <div class="prod">
                              <div class="left">
                                <div rel="產品圖片路徑" class="prodName">
                                  <span>華碩 PRIME Z790-P D4-CSM(ATX/1H1P/Realtek 2.5Gb/註冊四年保) 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                                  <a href="#" data-id="20" data-name="華碩 PRIME Z790-P D4-CSM(ATX/1H1P/Realtek 2.5Gb/註冊四年保) 
                                  獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="6990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                                </div>
                              </div>
                              <div class="right">
                                <span class="price">$6,990元</span>
                                <!-- 其他可能的信息 -->
                              </div>
                            </div>
                            <div class="prod">
                              <div class="left">
                                <div rel="產品圖片路徑" class="prodName">
                                  <span>華碩 TUF GAMING Z790-PLUS WIFI D4(ATX/1H1P/Intel 2.5Gb/Wi-Fi 6+BT 5.2/註冊五年保) 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                                  <a href="#" data-id="21" data-name="華碩 TUF GAMING Z790-PLUS WIFI D4(ATX/1H1P/Intel 2.5Gb/Wi-Fi 6+BT 5.2/註冊五年保) 
                                  獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="8490" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                                </div>
                              </div>
                              <div class="right">
                                <span class="price">$8,490元</span>
                                <!-- 其他可能的信息 -->
                              </div>
                            </div>
                            <div class="prod">
                              <div class="left">
                                <div rel="產品圖片路徑" class="prodName">
                                  <span>【真威】華碩 TUF GAMING Z790-PLUS WIFI D4+Intel【14核】Core i5-13600K 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                                  <a href="#" data-id="22" data-name="【真威】華碩 TUF GAMING Z790-PLUS WIFI D4+Intel【14核】Core i5-13600K 
                                  獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="17990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                                </div>
                              </div>
                              <div class="right">
                                <span class="price">$17,990元</span>
                                <!-- 其他可能的信息 -->
                              </div>
                            </div>
                            <div class="prod">
                              <div class="left">
                                <div rel="產品圖片路徑" class="prodName">
                                  <span>華碩 ROG STRIX Z790-A GAMING WIFI D4(ATX/1H1P/Intel 2.5Gb/Wi-Fi 6E+BT 5.3/註冊五年保) 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                                  <a href="#" data-id="23" data-name="華碩 ROG STRIX Z790-A GAMING WIFI D4(ATX/1H1P/Intel 2.5Gb/Wi-Fi 6E+BT 5.3/註冊五年保) 
                                  獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="8990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                                </div>
                              </div>
                              <div class="right">
                                <span class="price">$8,990元</span>
                                <!-- 其他可能的信息 -->
                              </div>
                            </div>
                            <div class="prod">
                              <div class="left">
                                <div rel="產品圖片路徑" class="prodName">
                                  <span>【真威】華碩 ROG STRIX Z790-A GAMING WIFI D4+Intel【14核】Core i5-13600K 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                                  <a href="#" data-id="24" data-name="【真威】華碩 ROG STRIX Z790-A GAMING WIFI D4+Intel【14核】Core i5-13600K 
                                  獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="18590" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                                </div>
                              </div>
                              <div class="right">
                                <span class="price">$18,590元</span>
                                <!-- 其他可能的信息 -->
                              </div>
                            </div>
                            <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>技嘉</span>
                                </a>
                            </div>
                            <div class="prod">
                              <div class="left">
                                <div rel="產品圖片路徑" class="prodName">
                                  <span>技嘉 Z790 D DDR4(ATX/1H/Realtek 2.5Gb/註冊四年保)
獨家贈：INTEL AX210 WiFi 6E 雙天線無線網卡+PCI-E轉接卡(M.2 2230/WiFi 6E/藍芽5.2/一年保固)</span>
                                  <a href="#" data-id="25" data-name="技嘉 Z790 D DDR4(ATX/1H/Realtek 2.5Gb/註冊四年保)
                                  獨家贈：INTEL AX210 WiFi 6E 雙天線無線網卡+PCI-E轉接卡(M.2 2230/WiFi 6E/藍芽5.2/一年保固)" data-price="5990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                                </div>
                              </div>
                              <div class="right">
                                <span class="price">$5,990元</span>
                                <!-- 其他可能的信息 -->
                              </div>
                            </div>
                            <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>微星</span>
                                </a>
                            </div>
                            <div class="prod">
                              <div class="left">
                                <div rel="產品圖片路徑" class="prodName">
                                  <span>微星 PRO Z790-P WIFI DDR4(ATX/1H1P/Intel 2.5Gb/Wi-Fi 6E+BT 5.3/註冊四年保)</span>
                                  <a href="#" data-id="26" data-name="微星 PRO Z790-P WIFI DDR4(ATX/1H1P/Intel 2.5Gb/Wi-Fi 6E+BT 5.3/註冊四年保)" data-price="6990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                                </div>
                              </div>
                              <div class="right">
                                <span class="price">$6,990元</span>
                                <!-- 其他可能的信息 -->
                              </div>
                            </div>
                            <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>華擎</span>
                                </a>
                            </div>
                            <div class="prod">
                              <div class="left">
                                <div rel="產品圖片路徑" class="prodName">
                                  <span>華擎 ASRock Z790 PRO RS/D4(ATX/1H1P/Realtek2.5Gb/註冊五年保)</span>
                                  <a href="#" data-id="27" data-name="華擎 ASRock Z790 PRO RS/D4(ATX/1H1P/Realtek2.5Gb/註冊五年保)" data-price="5990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                                </div>
                              </div>
                              <div class="right">
                                <span class="price">$5,990元</span>
                                <!-- 其他可能的信息 -->
                              </div>
                            </div>
                        </div>
                   </details>
                   <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span>Intel 1700 Z790 晶片組/DDR5</span>
                        </summary>
                    <div class="prods">
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>華碩</span>
                                </a>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>華碩 PRIME Z790-P WIFI-CSM(ATX/1H1P/Realtek 2.5Gb/Wi-Fi 6+BT 5.2/註冊四年保) 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                              <a href="#" data-id="28" data-name="華碩 PRIME Z790-P WIFI-CSM(ATX/1H1P/Realtek 2.5Gb/Wi-Fi 6+BT 5.2/註冊四年保) 
                              獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="6990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$6,990元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>【真威】華碩 PRIME Z790-P WIFI-CSM+Intel【14核】Core i5-13500 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                              <a href="#" data-id="29" data-name="【真威】華碩 PRIME Z790-P WIFI-CSM+Intel【14核】Core i5-13500 
                              獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="14590" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$14,590元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>【真威】華碩 PRIME Z790-P WIFI-CSM+Intel【14核】Core i5-13600K 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                              <a href="#" data-id="30" data-name="【真威】華碩 PRIME Z790-P WIFI-CSM+Intel【14核】Core i5-13600K 
                              獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="16890" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$16,890元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>【真威】華碩 PRIME Z790-P WIFI-CSM+Intel【16核】Core i7-13700 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                              <a href="#" data-id="31" data-name="【真威】華碩 PRIME Z790-P WIFI-CSM+Intel【16核】Core i7-13700 
                              獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="19690" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$19,690元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>華碩 PRIME Z790-A WIFI-CSM(ATX/1H1P/Intel 2.5Gb/Wi-Fi 6E+BT 5.3/註冊四年保) 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                              <a href="#" data-id="32" data-name="華碩 PRIME Z790-A WIFI-CSM(ATX/1H1P/Intel 2.5Gb/Wi-Fi 6E+BT 5.3/註冊四年保) 
                              獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="9490" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$9,490元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>華碩 ROG STRIX Z790-H GAMING WIFI(ATX/1H1P/Intel 2.5Gb/Wi-Fi 6E+BT 5.3/註冊五年保) 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                              <a href="#" data-id="33" data-name="華碩 ROG STRIX Z790-H GAMING WIFI(ATX/1H1P/Intel 2.5Gb/Wi-Fi 6E+BT 5.3/註冊五年保) 
                              獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="9490" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$9,490元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>【真威】華碩 ROG STRIX Z790-H GAMING WIFI+Intel【14核】Core i5-13600K 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                              <a href="#" data-id="34" data-name="【真威】華碩 ROG STRIX Z790-H GAMING WIFI+Intel【14核】Core i5-13600K 
                              獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="18990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$18,990元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>華碩 ROG STRIX Z790-I GAMING WIFI(Mini-ITX/1H/Intel 2.5Gb/Wi-Fi 6E+BT 5.3/註冊五年保) 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                              <a href="#" data-id="35" data-name="華碩 ROG STRIX Z790-I GAMING WIFI(Mini-ITX/1H/Intel 2.5Gb/Wi-Fi 6E+BT 5.3/註冊五年保) 
                              獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="13990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$13,990元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>華碩 ROG STRIX Z790-E GAMING WIFI(ATX/1H1P/Intel 2.5Gb/Wi-Fi 6E+BT 5.3/註冊五年保) 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                              <a href="#" data-id="36" data-name="華碩 ROG STRIX Z790-E GAMING WIFI(ATX/1H1P/Intel 2.5Gb/Wi-Fi 6E+BT 5.3/註冊五年保) 
                              獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="15990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$15,990元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>華碩 ROG STRIX Z790-E GAMING WIFI II(ATX/1H1P/Intel 2.5Gb/Wi-Fi 7+BT 5.4/註冊五年保) 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                              <a href="#" data-id="37" data-name="華碩 ROG STRIX Z790-E GAMING WIFI II(ATX/1H1P/Intel 2.5Gb/Wi-Fi 7+BT 5.4/註冊五年保) 
                              獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="16990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$16,990元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>華碩 ROG STRIX Z790-F GAMING WIFI II(ATX/1H1P/Intel 2.5Gb/Wi-Fi 7+BT 5.4/註冊五年保) 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                              <a href="#" data-id="38" data-name="華碩 ROG STRIX Z790-F GAMING WIFI II(ATX/1H1P/Intel 2.5Gb/Wi-Fi 7+BT 5.4/註冊五年保) 
                              獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="13990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$13,990元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>華碩 ROG MAXIMUS Z790 APEX ENCORE(ATX/Intel 2.5Gb/Wi-Fi 7+BT 5.4/註冊五年保) 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                              <a href="#" data-id="39" data-name="華碩 ROG MAXIMUS Z790 APEX ENCORE(ATX/Intel 2.5Gb/Wi-Fi 7+BT 5.4/註冊五年保) 
                              獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="19990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$19,990元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>華碩 ROG MAXIMUS Z790 DARK HERO(ATX/1H/Intel 2.5Gb/Wi-Fi 7+BT 5.4/註冊五年保) 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                              <a href="#" data-id="40" data-name="華碩 ROG MAXIMUS Z790 DARK HERO(ATX/1H/Intel 2.5Gb/Wi-Fi 7+BT 5.4/註冊五年保) 
                              獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="20990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$20,990元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>華碩 ROG MAXIMUS Z790 FORMULA(ATX/1H/Intel 5Gb/Wi-Fi 7+BT 5.4/註冊五年保) 
獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)</span>
                              <a href="#" data-id="41" data-name="華碩 ROG MAXIMUS Z790 FORMULA(ATX/1H/Intel 5Gb/Wi-Fi 7+BT 5.4/註冊五年保) 
                              獨家贈：KIOXIA TransMemory U202 USB 32GB隨身碟 (LU202W032GG4)" data-price="24990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$24,990元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    </details>
                </div>
                <div class="modal-footer">
                    
                    <!-- 其他按鈕 -->
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="productModal3" tabindex="-1" aria-labelledby="productModalLabel3" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="searchBox">
                        <input type="text" placeholder="關鍵字搜尋" class="form-control" id="inline-search3" autocomplete="on">
                    </div>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    
                    <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span>筆電專用記憶體 DDR4 SODIMM</span>
                        </summary>
                    <div class="prods">
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>Neo Forza 凌航</span>
                                </a>
                        </div>
                        <div class="prod">
                            <div class="left">
                                <div class="prodName">
                                    <span>Neo Forza NB DDR4-3200 8G 凌航筆電記憶體/原生顆粒/終身保固/NMSO480E82-3200EA10</span>
                                    <a href="#" data-id="42" data-name="Neo Forza NB DDR4-3200 8G 凌航筆電記憶體/原生顆粒/終身保固/NMSO480E82-3200EA10" data-price="499" class="add-to-cart btn">
                                      <i loading="lazy" class="fa-solid fa-plus"></i>
                                    </a>
                                    <div class="prodEvent"></div>
                                </div>
                            </div>
                            <div class="right">
                                <span class="price">$499元</span>
                                <!---->
                            </div>
                        </div>
                        <div class="prod">
                            <div class="left">
                                <div class="prodName">
                                    <span>Neo Forza NB DDR4-3200 16G 凌航筆電記憶體/原生顆粒/終身保固/NMSO416E82-3200EA10</span>
                                    <a href="#" data-id="43" data-name="Neo Forza NB DDR4-3200 16G 凌航筆電記憶體/原生顆粒/終身保固/NMSO416E82-3200EA10" data-price="999" class="add-to-cart btn">
                                      <i loading="lazy" class="fa-solid fa-plus"></i>
                                    </a>
                                    <div class="prodEvent"></div>
                                </div>
                            </div>
                            <div class="right">
                                <span class="price">$999元</span>
                                <!---->
                            </div>
                        </div>
                        <div class="prod">
                            <a href="" target="_blank" class="category">
                                <i class="far fa-hand-point-right"></i>
                                <span>十銓 TEAM</span>
                            </a>
                        </div>
                        <div class="prod">
                            <div class="left">
                                <div rel="/upload/prod/Build_s.jpg" class="prodName">
                                    <span>TEAM ELITE NB DDR4-3200 8G 十銓筆電記憶體/終身保固</span>
                                    <a href="#" data-id="44" data-name="TEAM ELITE NB DDR4-3200 8G 十銓筆電記憶體/終身保固" data-price="499" class="add-to-cart btn">
                                      <i loading="lazy" class="fa-solid fa-plus"></i>
                                    </a>
                                    <div class="prodEvent"></div>
                                </div>
                            </div>
                            <div class="right">
                                <span class="price">$499元</span>
                                <!---->
                            </div>
                        </div>
                        <div class="prod">
                        <div class="left">
                            <div rel="/upload/prod/Build_s.jpg" class="prodName">
                                <span>TEAM ELITE NB DDR4-3200 16G 十銓筆電記憶體/終身保固</span>
                                <a href="#" data-id="45" data-name="TEAM ELITE NB DDR4-3200 16G 十銓筆電記憶體/終身保固" data-price="999" class="add-to-cart btn">
                                  <i loading="lazy" class="fa-solid fa-plus"></i>
                                </a>
                                <div class="prodEvent"></div>
                            </div>
                        </div>
                        <div class="right">
                            <span class="price">$999元</span>
                            <!---->
                        </div>
                    </div>

                    <div class="prod">
                        <a href="" target="_blank" class="category">
                            <i class="far fa-hand-point-right"></i>
                            <span>美光 Micron Crucial</span>
                        </a>
                    </div>

                    <div class="prod">
                        <div class="left">
                            <div rel="/upload/prod/s183570.png" class="prodName">
                                <span>Micron Crucial NB DDR4-3200 8G 美光筆電記憶體/適用第9代以上CPU/原生顆粒/終身保固</span>
                                <a href="#" data-id="46" data-name="Micron Crucial NB DDR4-3200 8G 美光筆電記憶體/適用第9代以上CPU/原生顆粒/終身保固" data-price="499" class="add-to-cart btn">
                                  <i loading="lazy" class="fa-solid fa-plus"></i>
                                </a>
                                <div class="prodEvent"></div>
                            </div>
                        </div>
                        <div class="right">
                            <span class="price">$499元</span>
                            <!---->
                        </div>
                    </div>

                    <div class="prod">
                        <div class="left">
                            <div rel="/upload/prod/s183253.png" class="prodName">
                                <span>Micron Crucial NB DDR4-3200 32G 美光筆電記憶體/適用第9代以上CPU/原生顆粒/終身保固</span>
                                <a href="#" data-id="47" data-name="Micron Crucial NB DDR4-3200 32G 美光筆電記憶體/適用第9代以上CPU/原生顆粒/終身保固" data-price="1900" class="add-to-cart btn">
                                  <i loading="lazy" class="fa-solid fa-plus"></i>
                                </a>
                                <!---->
                                <!---->
                                <div class="prodEvent"></div>
                            </div>
                        </div>
                        <div class="right">
                            <span class="price">$1,900元</span>
                            <!---->
                        </div>
                    </div>
                    </div>
                    </details>
                    <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span>筆電專用記憶體 DDR5 SODIMM</span>
                        </summary>
                        <div class="prods">
                            <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i> 
                                    <span>凌航 Neo Forza</span>
                                </a>
                            </div>
    
                            <!-- 产品1 -->
                            <div class="prod">
                                <div class="left">
                                    <div rel="/upload/prod/s188822.png" class="prodName">
                                        <span>Neo Forza NB DDR5-4800 8G 凌航筆電記憶體/原生顆粒/終身保固/NMSO580EA3-4800JA10</span> 
                                        <a href="#" data-id="48" data-name="Neo Forza NB DDR5-4800 8G 凌航筆電記憶體/原生顆粒/終身保固/NMSO580EA3-4800JA10" data-price="699" class="add-to-cart btn">
                                          <i loading="lazy" class="fa-solid fa-plus"></i>
                                        </a>
                                        <div class="prodEvent"></div>
                                    </div>
                                </div>
                                <div class="right">
                                    <span class="price">$699元</span> <!---->
                                </div>
                            </div>

                            <!-- 产品3 -->
                            <div class="prod">
                                <div class="left">
                                    <div rel="/upload/prod/s189928.png" class="prodName">
                                        <span>Neo Forza NB DDR5-4800 32G 凌航筆電記憶體/原生顆粒/終身保固/NMSO532F83-4800JA10</span>
                                        <a href="#" data-id="49" data-name="Neo Forza NB DDR5-4800 32G 凌航筆電記憶體/原生顆粒/終身保固/NMSO532F83-4800JA10" data-price="2399" class="add-to-cart btn">
                                          <i loading="lazy" class="fa-solid fa-plus"></i>
                                        </a>
                                        <div class="prodEvent"></div>
                                    </div>
                                </div>
                                <div class="right">
                                    <span class="price">$2,399元</span> <!---->
                                </div>
                            </div>

                            <!-- 产品2 -->
                            <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i> 
                                    <span>十銓 TEAM</span>
                                </a>
                            </div>

                            <!-- 产品3 -->
                            <div class="prod">
                                <div class="left">
                                    <div rel="/upload/prod/Build_s.jpg" class="prodName">
                                        <span>TEAM ELITE NB DDR5-4800 8G 十銓筆電記憶體/終身保固</span>
                                        <a href="#" data-id="50" data-name="TEAM ELITE NB DDR5-4800 8G 十銓筆電記憶體/終身保固" data-price="699" class="add-to-cart btn">
                                          <i loading="lazy" class="fa-solid fa-plus"></i>
                                        </a>
                                        <div class="prodEvent"></div>
                                    </div>
                                </div>
                                <div class="right">
                                    <span class="price">$699元</span> <!---->
                                </div>
                            </div>

                            <!-- 产品4 -->
                            <div class="prod">
                                <div class="left">
                                    <div rel="/upload/prod/s185890.png" class="prodName">
                                        <span>TEAM ELITE NB DDR5-4800 16G 十銓筆電記憶體/終身保固</span>
                                        <a href="#" data-id="51" data-name="TEAM ELITE NB DDR5-4800 16G 十銓筆電記憶體/終身保固" data-price="1299" class="add-to-cart btn">
                                          <i loading="lazy" class="fa-solid fa-plus"></i>
                                        </a>
                                        <div class="prodEvent"></div>
                                    </div>
                                </div>
                                <div class="right">
                                    <span class="price">$1,299元</span> <!---->
                                </div>
                            </div>

                            <!-- 产品1 -->
                            <div class="prod">
                                <div class="left">
                                    <div rel="/upload/prod/s185892.png" class="prodName">
                                        <span>TEAM ELITE NB DDR5-4800 32G 十銓筆電記憶體/終身保固</span>
                                        <a href="#" data-id="52" data-name="TEAM ELITE NB DDR5-4800 32G 十銓筆電記憶體/終身保固" data-price="2399" class="add-to-cart btn">
                                          <i loading="lazy" class="fa-solid fa-plus"></i>
                                        </a>
                                        <div class="prodEvent"></div>
                                    </div>
                                </div>
                                <div class="right">
                                    <span class="price">$2,399元</span> <!---->
                                </div>
                            </div>

                            <!-- 产品2 -->
                            <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>美光 Micron Crucial</span>
                                </a>
                            </div>

                            <!-- 产品3 -->
                            <div class="prod">
                                <div class="left">
                                    <div rel="/upload/prod/s183569.png" class="prodName">
                                        <span>Micron Crucial NB DDR5-4800 8G 美光筆電記憶體/內建PMIC電源管理晶片/終身保固</span>
                                        <a href="#" data-id="53" data-name="Micron Crucial NB DDR5-4800 8G 美光筆電記憶體/內建PMIC電源管理晶片/終身保固" data-price="729" class="add-to-cart btn">
                                          <i loading="lazy" class="fa-solid fa-plus"></i>
                                        </a>
                                        <div class="prodEvent"></div>
                                    </div>
                                </div>
                                <div class="right">
                                    <span class="price">$729元</span> <!---->
                                </div>
                            </div>

                            <!-- 产品6 -->
                            <div class="prod">
                                <div class="left">
                                    <div rel="/upload/prod/s193413.png" class="prodName">
                                        <span>Micron Crucial NB DDR5-5600 8G 美光筆電記憶體/內建PMIC電源管理晶片/原生顆粒/終身保固</span>
                                        <a href="#" data-id="54" data-name="Micron Crucial NB DDR5-5600 8G 美光筆電記憶體/內建PMIC電源管理晶片/原生顆粒/終身保固" data-price="749" class="add-to-cart btn">
                                          <i loading="lazy" class="fa-solid fa-plus"></i>
                                        </a>
                                        <div class="prodEvent"></div>
                                    </div>
                                </div>
                                <div class="right">
                                    <span class="price">$749元</span> <!---->
                                </div>
                            </div>

                            <!-- 产品7 -->
                            <div class="prod">
                                <div class="left">
                                    <div rel="/upload/prod/s193414.png" class="prodName">
                                        <span>Micron Crucial NB DDR5-5600 16G 美光筆電記憶體/內建PMIC電源管理晶片/終身保固</span>
                                        <a href="#" data-id="55" data-name="Micron Crucial NB DDR5-5600 16G 美光筆電記憶體/內建PMIC電源管理晶片/終身保固" data-price="1599" class="add-to-cart btn">
                                          <i loading="lazy" class="fa-solid fa-plus"></i>
                                        </a>
                                        <div class="prodEvent"></div>
                                    </div>
                                </div>
                                <div class="right">
                                    <span class="price">$1,599元</span> <!---->
                                </div>
                            </div>

                            <!-- 产品8 -->
                            <div class="prod">
                                <div class="left">
                                    <div rel="/upload/prod/s193415.png" class="prodName">
                                        <span>Micron Crucial NB DDR5-5600 24G 美光筆電記憶體/內建PMIC電源管理晶片/原生顆粒/終身保固</span>
                                        <a href="#" data-id="56" data-name="Micron Crucial NB DDR5-5600 24G 美光筆電記憶體/內建PMIC電源管理晶片/原生顆粒/終身保固" data-price="2429" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                                        <div class="prodEvent"></div>
                                    </div>
                                </div>
                                <div class="right">
                                    <span class="price">$2,429元</span> <!---->
                                </div>
                            </div>

                            <!-- 产品10 -->
                            <div class="prod">
                                <div class="left">
                                    <div rel="/upload/prod/s193417.png" class="prodName">
                                        <span>Micron Crucial NB DDR5-5600 48G 美光筆電記憶體/內建PMIC電源管理晶片/原生顆粒/終身保固</span>
                                        <a href="#" data-id="57" data-name="Micron Crucial NB DDR5-5600 48G 美光筆電記憶體/內建PMIC電源管理晶片/原生顆粒/終身保固" data-price="4859" class="add-to-cart btn">
                                          <i loading="lazy" class="fa-solid fa-plus"></i>
                                        </a>
                                        <div class="prodEvent"></div>
                                    </div>
                                </div>
                                <div class="right">
                                    <span class="price">$4,859元</span> <!---->
                                </div>
                            </div>


                    </details>

                    <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span>桌上型記憶體 DDR4</span>
                        </summary>
                    <div class="prods">
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>美光 Crucial</span>
                                </a>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Crucial DDR4-3200 8G(CL22/適用intel九代以上CPU)</span>
                              <a href="#" data-id="58" data-name="美光 Crucial DDR4-3200 8G(CL22/適用intel九代以上CPU)" data-price="499" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$499元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Crucial DDR4-3200 16G(CL22/適用intel九代以上CPU)</span>
                              <a href="#" data-id="59" data-name="美光 Crucial DDR4-3200 16G(CL22/適用intel九代以上CPU)" data-price="990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$990元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Crucial DDR4-3200 32G(CL22/適用intel九代以上CPU)</span>
                              <a href="#" data-id="60" data-name="美光 Crucial DDR4-3200 32G(CL22/適用intel九代以上CPU)" data-price="1850" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$1,850元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    </details>

                    <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span>桌上型記憶體 DDR5</span>
                        </summary>
                    <div class="prods">
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>美光 Crucial</span>
                                </a>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Crucial DDR5-4800 8G(CL40/內建PMIC電源管理晶片/支援XMP3.0功能)</span>
                              <a href="#" data-id="61" data-name="美光 Crucial DDR5-4800 8G(CL40/內建PMIC電源管理晶片/支援XMP3.0功能)" data-price="729" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$729元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Crucial DDR5-4800 16G(CL40/內建PMIC電源管理晶片/支援XMP3.0功能)</span>
                              <a href="#" data-id="62" data-name="美光 Crucial DDR5-4800 16G(CL40/內建PMIC電源管理晶片/支援XMP3.0功能)" data-price="1349" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$1,349元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Crucial DDR5-4800 32G(CL40/內建PMIC電源管理晶片/支援XMP3.0功能)</span>
                              <a href="#" data-id="63" data-name="美光 Crucial DDR5-4800 32G(CL40/內建PMIC電源管理晶片/支援XMP3.0功能)" data-price="2699" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$2,699元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Crucial DDR5-5600 16G(CL46/內建PMIC電源管理晶片/支援XMP&EXPO)</span>
                              <a href="#" data-id="64" data-name="美光 Crucial DDR5-5600 16G(CL46/內建PMIC電源管理晶片/支援XMP&EXPO)" data-price="1599" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$1,599元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Crucial DDR5-5600 32G(CL46/內建PMIC電源管理晶片/支援XMP&EXPO)</span>
                              <a href="#" data-id="65" data-name="美光 Crucial DDR5-5600 32G(CL46/內建PMIC電源管理晶片/支援XMP&EXPO)" data-price="3199" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$3,199元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Crucial PRO DDR5-6000 24G (黑散熱片)(CL48/支援XMP3.0功能)</span>
                              <a href="#" data-id="66" data-name="美光 Crucial PRO DDR5-6000 24G (黑散熱片)(CL48/支援XMP3.0功能)" data-price="1999" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$1,999元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    </details>


                    <!---->
                    <!---->
                </div>
            </div>

        </div>
          <div class="modal-footer">
                    <!-- 其他按鈕 -->
         </div>
    </div>

    <div class="modal fade" id="productModal4" tabindex="-1" aria-labelledby="productModalLabel4" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="searchBox">
                        <input type="text" placeholder="關鍵字搜尋" class="form-control" id="inline-search4" autocomplete="on">
                    </div>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                   <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span>SSD 外接式固態硬碟</span>
                        </summary>
                    <div class="prods">
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>美光 Micron</span>
                                </a>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Micron Crucial X6 500GB/外接式SSD/讀:540M/3年保</span>
                              <a href="#" data-id="67" data-name="美光 Micron Crucial X6 500GB/外接式SSD/讀:540M/3年保" data-price="1200" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$1,200元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Micron Crucial X6 4TB/外接式SSD/讀:800M/3年保</span>
                              <a href="#" data-id="68" data-name="美光 Micron Crucial X6 4TB/外接式SSD/讀:800M/3年保" data-price="6250" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$6,250元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>威騰 WD</span>
                                </a>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>WD My Passport SSD 1TB(灰)外接式SSD/讀:1050M/寫:1000M/5年保</span>
                              <a href="#" data-id="69" data-name="WD My Passport SSD 1TB(灰)外接式SSD/讀:1050M/寫:1000M/5年保" data-price="2390" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$2,390元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    </details>
                    <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span>SSD SATA 固態硬碟</span>
                        </summary>
                    <div class="prods">
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>美光 Crucial</span>
                                </a>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Crucial BX500 500GB/2.5吋 SATA/讀:540M/寫:500M/TLC/三年保固*捷元代理商公司貨*</span>
                              <a href="#" data-id="70" data-name="美光 Crucial BX500 500GB/2.5吋 SATA/讀:540M/寫:500M/TLC/三年保固*捷元代理商公司貨*" data-price="949" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$949元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Crucial BX500 1TB/2.5吋 SATA/讀:540M/寫:500M/TLC/三年保固*捷元代理商公司貨*</span>
                              <a href="#" data-id="71" data-name="美光 Crucial BX500 1TB/2.5吋 SATA/讀:540M/寫:500M/TLC/三年保固*捷元代理商公司貨*" data-price="1950" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$1,950元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Crucial MX500 500GB/2.5吋 SATA/讀:560M/寫:510M/TLC/五年保固*捷元代理商公司貨*</span>
                              <a href="#" data-id="72" data-name="美光 Crucial MX500 500GB/2.5吋 SATA/讀:560M/寫:510M/TLC/五年保固*捷元代理商公司貨*" data-price="1300" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$1,300元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Crucial MX500 1TB/2.5吋 SATA/讀:560M/寫:510M/TLC/五年保固*捷元代理商公司貨*</span>
                              <a href="#" data-id="73" data-name="美光 Crucial MX500 1TB/2.5吋 SATA/讀:560M/寫:510M/TLC/五年保固*捷元代理商公司貨*" data-price="2050" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$2,050元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prods">
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>金士頓 Kingston</span>
                                </a>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>金士頓 Kingston KC600 256GB/2.5吋 SATA/讀:550M/寫:500M/TLC/五年保</span>
                              <a href="#" data-id="74" data-name="金士頓 Kingston KC600 256GB/2.5吋 SATA/讀:550M/寫:500M/TLC/五年保" data-price="849" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$849元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>金士頓 Kingston KC600 512GB/2.5吋 SATA/讀:550M/寫:520M/TLC/五年保</span>
                              <a href="#" data-id="75" data-name="金士頓 Kingston KC600 512GB/2.5吋 SATA/讀:550M/寫:520M/TLC/五年保" data-price="1490" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$1,490元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>金士頓 Kingston KC600 1TB/2.5吋 SATA/讀:550M/寫:520M/TLC/五年保</span>
                              <a href="#" data-id="76" data-name="金士頓 Kingston KC600 1TB/2.5吋 SATA/讀:550M/寫:520M/TLC/五年保" data-price="2630" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$2,630元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    </details>
                    <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span>SSD M.2 Gen3 PCIe 固態硬碟</span>
                        </summary>
                    <div class="prods">
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>十銓 TEAM</span>
                                </a>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>十銓 TEAM MP33 PRO 512GB/M.2 PCIe Gen3/讀:2100M/寫:1700M/TLC/五年保</span>
                              <a href="#" data-id="77" data-name="十銓 TEAM MP33 PRO 512GB/M.2 PCIe Gen3/讀:2100M/寫:1700M/TLC/五年保" data-price="999" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$999元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>十銓 TEAM MP33 PRO 1TB/M.2 PCIe Gen3/讀:2100M/寫:1700M/TLC/五年保</span>
                              <a href="#" data-id="78" data-name="十銓 TEAM MP33 PRO 1TB/M.2 PCIe Gen3/讀:2100M/寫:1700M/TLC/五年保" data-price="1569" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$1,569元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>十銓 TEAM MP34 1TB/M.2 PCIe Gen3/讀:3400M/寫:2900M/TLC/五年保</span>
                              <a href="#" data-id="79" data-name="十銓 TEAM MP34 1TB/M.2 PCIe Gen3/讀:3400M/寫:2900M/TLC/五年保" data-price="1399" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$1,399元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>威剛 ADATA</span>
                                </a>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>威剛 ADATA LEGEND 710 256GB/M.2 PCIe Gen3/讀:2200M/寫:1000M/QLC/三年保</span>
                              <a href="#" data-id="80" data-name="威剛 ADATA LEGEND 710 256GB/M.2 PCIe Gen3/讀:2200M/寫:1000M/QLC/三年保" data-price="699" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$699元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>威剛 ADATA LEGEND 710 512GB/M.2 PCIe Gen3/讀:2400M/寫:1000M/QLC/三年保</span>
                              <a href="#" data-id="81" data-name="威剛 ADATA LEGEND 710 512GB/M.2 PCIe Gen3/讀:2400M/寫:1000M/QLC/三年保" data-price="999" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$999元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>威剛 ADATA XPG SX8200 PRO 512GB/M.2 PCIe Gen3/讀:3500M/寫:2300M/TLC/五年保(含散熱片)</span>
                              <a href="#" data-id="82" data-name="威剛 ADATA XPG SX8200 PRO 512GB/M.2 PCIe Gen3/讀:3500M/寫:2300M/TLC/五年保(含散熱片)" data-price="999" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$999元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>威剛 ADATA XPG SX8200 PRO 1TB/M.2 PCIe Gen3/讀:3500M/寫:3000M/TLC/五年保(含散熱片)</span>
                              <a href="#" data-id="83" data-name="威剛 ADATA XPG SX8200 PRO 1TB/M.2 PCIe Gen3/讀:3500M/寫:3000M/TLC/五年保(含散熱片)" data-price="1699" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$1,699元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>美光 Crucial</span>
                                </a>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>美光 Crucial P3 2TB/M.2 PCIe Gen3/讀:3500M/寫:3000M/QLC/五年保*捷元代理商公司貨*</span>
                              <a href="#" data-id="84" data-name="美光 Crucial P3 2TB/M.2 PCIe Gen3/讀:3500M/寫:3000M/QLC/五年保*捷元代理商公司貨*" data-price="3388" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$3,388元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>三星 Samsung</span>
                                </a>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>三星 SAMSUNG 970 EVO Plus 500GB/M.2 PCle Gen3/讀:3500M/寫:3200M/TLC/五年保</span>
                              <a href="#" data-id="85" data-name="三星 SAMSUNG 970 EVO Plus 500GB/M.2 PCle Gen3/讀:3500M/寫:3200M/TLC/五年保" data-price="2379" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$2,379元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>三星 SAMSUNG 970 EVO Plus 1TB/M.2 PCle Gen3/讀:3500M/寫:3300M/TLC/五年保</span>
                              <a href="#" data-id="86" data-name="三星 SAMSUNG 970 EVO Plus 1TB/M.2 PCle Gen3/讀:3500M/寫:3300M/TLC/五年保" data-price="3899" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$3,899元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>三星 SAMSUNG 970 EVO Plus 2TB/M.2 PCle Gen3/讀:3500M/寫:3300M/TLC/五年保</span>
                              <a href="#" data-id="87" data-name="三星 SAMSUNG 970 EVO Plus 2TB/M.2 PCle Gen3/讀:3500M/寫:3300M/TLC/五年保" data-price="6899" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$6,899元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>三星 SAMSUNG 980 500GB/M.2 PCle Gen3/讀:3100M/寫:2600M/TLC/五年保</span>
                              <a href="#" data-id="88" data-name="三星 SAMSUNG 980 500GB/M.2 PCle Gen3/讀:3100M/寫:2600M/TLC/五年保" data-price="1899" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$1,899元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>三星 SAMSUNG 980 1TB/M.2 PCle Gen3/讀:3500M/寫:3000M/TLC/五年保</span>
                              <a href="#" data-id="89" data-name="三星 SAMSUNG 980 1TB/M.2 PCle Gen3/讀:3500M/寫:3000M/TLC/五年保" data-price="2499" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$2,499元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    </details>
                </div>
                <div class="modal-footer">
                    
                    <!-- 其他按鈕 -->
                </div>
            </div>
        </div>
     </div>
     <div class="modal fade" id="productModal5" tabindex="-1" aria-labelledby="productModalLabel5" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                   <div class="searchBox">
                        <input type="text" placeholder="關鍵字搜尋" class="form-control" id="inline-search5" autocomplete="on">
                    </div>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <details>
                        <summary class="groupBox">
                            <i class="fas fa-angle-right"></i>
                            <span> GeForce® RTX 3050</span>
                        </summary>
                    <div class="prods">
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>華碩</span>
                                </a>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>華碩 PH-RTX3050-8G/std:1777MHz/單風扇/註冊四年保(長17.7cm)</span>
                              <a href="#" data-id="90" data-name="華碩 PH-RTX3050-8G/std:1777MHz/單風扇/註冊四年保(長17.7cm)" data-price="6490" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$6,490元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>技嘉</span>
                                </a>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>技嘉 RTX 3050 GAMING OC 8G/std:1822MHz/三風扇/註冊五年保(長28.2cm)</span>
                              <a href="#" data-id="91" data-name="技嘉 RTX 3050 GAMING OC 8G/std:1822MHz/三風扇/註冊五年保(長28.2cm)" data-price="6990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$6,990元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>【猛！】技嘉 RTX 3050 GAMING OC 8G+EVGA 500 BA
獨家贈：亞果元素 GRAVITY P5C 5000 mAh 口袋型行動電源 不挑色</span>
                              <a href="#" data-id="92" data-name="【猛！】技嘉 RTX 3050 GAMING OC 8G+EVGA 500 BA
                              獨家贈：亞果元素 GRAVITY P5C 5000 mAh 口袋型行動電源 不挑色" data-price="8390" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$8,390元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>【猛！】技嘉 RTX 3050 GAMING OC 8G+君主 Century 550W
獨家贈：亞果元素 GRAVITY P5C 5000 mAh 口袋型行動電源 不挑色</span>
                              <a href="#" data-id="93" data-name="【猛！】技嘉 RTX 3050 GAMING OC 8G+君主 Century 550W
                              獨家贈：亞果元素 GRAVITY P5C 5000 mAh 口袋型行動電源 不挑色" data-price="8990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$8,990元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>技嘉 RTX 3050 ELITE 8G/std:1860MHz/三風扇/註冊五年保(長29.6cm)</span>
                              <a href="#" data-id="94" data-name="技嘉 RTX 3050 ELITE 8G/std:1860MHz/三風扇/註冊五年保(長29.6cm)" data-price="7490" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$7,490元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                                <a href="" target="_blank" class="category">
                                    <i class="far fa-hand-point-right"></i>
                                    <span>微星</span>
                                </a>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>微星 RTX 3050 AERO 8G OC/std:1870MHz/單風扇/註冊四年保(長17.2cm)</span>
                              <a href="#" data-id="95" data-name="微星 RTX 3050 AERO 8G OC/std:1870MHz/單風扇/註冊四年保(長17.2cm)" data-price="6490" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$6,490元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                        <div class="prod">
                          <div class="left">
                            <div rel="產品圖片路徑" class="prodName">
                              <span>微星 RTX 3050 VENTUS 2X XS OC 8G/std:1807MHz/雙風扇/註冊四年保(長20.5cm)</span>
                              <a href="#" data-id="96" data-name="微星 RTX 3050 VENTUS 2X XS OC 8G/std:1807MHz/雙風扇/註冊四年保(長20.5cm)" data-price="6990" class="add-to-cart btn">
                                <i loading="lazy" class="fa-solid fa-plus"></i>
                              </a>
                            </div>
                          </div>
                          <div class="right">
                            <span class="price">$6,990元</span>
                            <!-- 其他可能的信息 -->
                          </div>
                        </div>
                    </div>
                    </details>
                </div>
                <div class="modal-footer">
                    
                    <!-- 其他按鈕 -->
                </div>
            </div>
        </div>
    </div>

   
    <!--<footer>
        <p>&copy; 2024 電腦主機網. All rights reserved.</p>
    </footer>-->
    <footer>
      <div>
        <span>&copy; 2024 電腦主機網. All rights reserved.</span>
        <span class="link">
            <a href="#">Home</a>
            <a href="#products">商品</a>
        </span>
      </div>
    </footer>
   <script>
       $(function () {
           var tags = $("details span, .groupBox span, .prod span");
           var options = {
               isCaseSensitive: false,
               findAllMatches: true,
               includeMatches: false,
               includeScore: false,
               useExtendedSearch: false,
               shouldSort: true,
               threshold: 0.1,
               location: 0,
               distance: 1000,
               maxPatternLength: 32,
               minMatchCharLength: 10,
               keys: ['innerHTML', 'innerText']
           };
           var fuse = new Fuse(tags, options);

           $("#inline-search1").on("keyup focusout", function (event) {
               // 按下 Enter 鍵或搜尋框失去焦點時執行搜尋
               if (event.type === "keyup" && event.keyCode !== 13) {
                   return;
               }
               var search_term = $(this).val();
               /*$("details span, .groupBox span").show();*/
               var result = fuse.search(search_term);
               if (result.length) {
                   $.each(result, function (i, val) {
                       $(val).closest("details, .groupBox").prop("open", true);
                       $("details, .groupBox , .modal-body, .prod").find("span:contains('" + $(val).text() + "')").show()
                       $(val).addClass("bg-bv").addClass("text-white")
                       console.log("Search term: ", search_term);
                       console.log("Fuse search result: ", result);
                       // 清除搜尋框的值，但不執行 focusout
                       $(this).val('').trigger('input');
                   })
               } else {
                   $("details span, .groupBox span").removeClass("bg-bv").removeClass("groupBox").removeClass("text-white").show();
               }
           })
           // 監聽 Modal 關閉事件
           $('#productModal1').on('hidden.bs.modal', function (e) {
               // 清空搜尋框
               $('#inline-search').val('');

               // 關閉所有的 details
               $('details').removeAttr('open');
           });
       })

       $(function () {
           var tags = $("details span, .groupBox span, .prod span");
           var options = {
               isCaseSensitive: false,
               findAllMatches: true,
               includeMatches: false,
               includeScore: false,
               useExtendedSearch: false,
               shouldSort: true,
               threshold: 0.1,
               location: 0,
               distance: 1000,
               maxPatternLength: 32,
               minMatchCharLength: 10,
               keys: ['innerHTML', 'innerText']
           };
           var fuse = new Fuse(tags, options);

           $("#inline-search2").on("keyup focusout", function (event) {
               // 按下 Enter 鍵或搜尋框失去焦點時執行搜尋
               if (event.type === "keyup" && event.keyCode !== 13) {
                   return;
               }
               var search_term = $(this).val();
               /*$("details span, .groupBox span").show();*/
               var result = fuse.search(search_term);
               if (result.length) {
                   $.each(result, function (i, val) {
                       $(val).closest("details, .groupBox").prop("open", true);
                       $("details, .groupBox , .modal-body, .prod").find("span:contains('" + $(val).text() + "')").show()
                       $(val).addClass("bg-bv").addClass("text-white")
                       console.log("Search term: ", search_term);
                       console.log("Fuse search result: ", result);
                       // 清除搜尋框的值，但不執行 focusout
                       $(this).val('').trigger('input');
                   })
               } else {
                   $("details span, .groupBox span").removeClass("bg-bv").removeClass("groupBox").removeClass("text-white").show();
               }
           })
           // 監聽 Modal 關閉事件
           $('#productModal2').on('hidden.bs.modal', function (e) {
               // 清空搜尋框
               $('#inline-search').val('');

               // 關閉所有的 details
               $('details').removeAttr('open');
           });
       })

       $(function () {
           var tags = $("details span, .groupBox span, .prod span");
           var options = {
               isCaseSensitive: false,
               findAllMatches: true,
               includeMatches: false,
               includeScore: false,
               useExtendedSearch: false,
               shouldSort: true,
               threshold: 0.1,
               location: 0,
               distance: 1000,
               maxPatternLength: 32,
               minMatchCharLength: 10,
               keys: ['innerHTML','innerText']
           };
           var fuse = new Fuse(tags, options);

           $("#inline-search3").on("keyup focusout", function (event) {
               // 按下 Enter 鍵或搜尋框失去焦點時執行搜尋
               if (event.type === "keyup" && event.keyCode !== 13) {
                   return;
               }
               var search_term = $(this).val();
               /*$("details span, .groupBox span").show();*/
               var result = fuse.search(search_term);
               if (result.length) {
                   $.each(result, function (i, val) {
                       $(val).closest("details, .groupBox").prop("open", true);
                       $("details, .groupBox , .modal-body, .prod").find("span:contains('" + $(val).text() + "')").show()
                       $(val).addClass("bg-bv").addClass("text-white")
                       console.log("Search term: ", search_term);
                       console.log("Fuse search result: ", result);
                       // 清除搜尋框的值，但不執行 focusout
                       $(this).val('').trigger('input');
                   })
               } else {
                   $("details span, .groupBox span").removeClass("bg-bv").removeClass("groupBox").removeClass("text-white").show();
               }
           })
           // 監聽 Modal 關閉事件
           $('#productModal3').on('hidden.bs.modal', function (e) {
               // 清空搜尋框
               $('#inline-search').val('');

               // 關閉所有的 details
               $('details').removeAttr('open');
           });
       })

       $(function () {
           var tags = $("details span, .groupBox span, .prod span");
           var options = {
               isCaseSensitive: false,
               findAllMatches: true,
               includeMatches: false,
               includeScore: false,
               useExtendedSearch: false,
               shouldSort: true,
               threshold: 0.1,
               location: 0,
               distance: 1000,
               maxPatternLength: 32,
               minMatchCharLength: 10,
               keys: ['innerHTML', 'innerText']
           };
           var fuse = new Fuse(tags, options);

           $("#inline-search4").on("keyup focusout", function (event) {
               // 按下 Enter 鍵或搜尋框失去焦點時執行搜尋
               if (event.type === "keyup" && event.keyCode !== 13) {
                   return;
               }
               var search_term = $(this).val();
               /*$("details span, .groupBox span").show();*/
               var result = fuse.search(search_term);
               if (result.length) {
                   $.each(result, function (i, val) {
                       $(val).closest("details, .groupBox").prop("open", true);
                       $("details, .groupBox , .modal-body, .prod").find("span:contains('" + $(val).text() + "')").show()
                       $(val).addClass("bg-bv").addClass("text-white")
                       console.log("Search term: ", search_term);
                       console.log("Fuse search result: ", result);
                       // 清除搜尋框的值，但不執行 focusout
                       $(this).val('').trigger('input');
                   })
               } else {
                   $("details span, .groupBox span").removeClass("bg-bv").removeClass("groupBox").removeClass("text-white").show();
               }
           })
           // 監聽 Modal 關閉事件
           $('#productModal4').on('hidden.bs.modal', function (e) {
               // 清空搜尋框
               $('#inline-search').val('');

               // 關閉所有的 details
               $('details').removeAttr('open');
           });
       })

       $(function () {
           var tags = $("details span, .groupBox span, .prod span");
           var options = {
               isCaseSensitive: false,
               findAllMatches: true,
               includeMatches: false,
               includeScore: false,
               useExtendedSearch: false,
               shouldSort: true,
               threshold: 0.1,
               location: 0,
               distance: 1000,
               maxPatternLength: 32,
               minMatchCharLength: 10,
               keys: ['innerHTML', 'innerText']
           };
           var fuse = new Fuse(tags, options);

           $("#inline-search5").on("keyup focusout", function (event) {
               // 按下 Enter 鍵或搜尋框失去焦點時執行搜尋
               if (event.type === "keyup" && event.keyCode !== 13) {
                   return;
               }
               var search_term = $(this).val();
               /*$("details span, .groupBox span").show();*/
               var result = fuse.search(search_term);
               if (result.length) {
                   $.each(result, function (i, val) {
                       $(val).closest("details, .groupBox").prop("open", true);
                       $("details, .groupBox , .modal-body, .prod").find("span:contains('" + $(val).text() + "')").show()
                       $(val).addClass("bg-bv").addClass("text-white")
                       console.log("Search term: ", search_term);
                       console.log("Fuse search result: ", result);
                       // 清除搜尋框的值，但不執行 focusout
                       $(this).val('').trigger('input');
                   })
               } else {
                   $("details span, .groupBox span").removeClass("bg-bv").removeClass("groupBox").removeClass("text-white").show();
               }
           })
           // 監聽 Modal 關閉事件
           $('#productModal5').on('hidden.bs.modal', function (e) {
               // 清空搜尋框
               $('#inline-search').val('');

               // 關閉所有的 details
               $('details').removeAttr('open');
           });
       })
   </script>
   <script src='https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.4/lodash.min.js'></script>
   <script>
       const Snow = (canvas, count, options) => {
           const ctx = canvas.getContext("2d");
           const snowflakes = [];

           const add = (item) => snowflakes.push(item(canvas));

           const update = () => _.forEach(snowflakes, (el) => el.update());

           const resize = () => {
               ctx.canvas.width = canvas.offsetWidth;
               ctx.canvas.height = canvas.offsetHeight;

               _.forEach(snowflakes, (el) => el.resized());
           };

           const draw = () => {
               ctx.clearRect(0, 0, canvas.offsetWidth, canvas.offsetHeight);
               _.forEach(snowflakes, (el) => el.draw());
           };

           const events = () => {
               window.addEventListener("resize", resize);
           };

           const loop = () => {
               draw();
               update();
               animFrame(loop);
           };

           const init = () => {
               _.times(count, () => add((canvas) => SnowItem(canvas, null, options)));
               events();
               loop();
           };

           init(count);
           resize();

           return { add, resize };
       };

       const defaultOptions = {
           color: "orange",
           radius: [0.5, 3.0],
           speed: [0.3, 0.1],
           wind: [-0.5, 3.0]
       };

       const SnowItem = (canvas, drawFn = null, opts) => {
           const options = { ...defaultOptions, ...opts };
           const { radius, speed, wind, color } = options;
           const params = {
               color,
               x: _.random(0, canvas.offsetWidth),
               y: _.random(-canvas.offsetHeight, 0),
               radius: _.random(...radius),
               speed: _.random(...speed),
               wind: _.random(...wind),
               isResized: false
           };
           const ctx = canvas.getContext("2d");

           const updateData = () => {
               params.x = _.random(0, canvas.offsetWidth);
               params.y = _.random(-canvas.offsetHeight, 0);
           };

           const resized = () => (params.isResized = true);

           const drawDefault = () => {
               ctx.beginPath();
               ctx.arc(params.x, params.y, params.radius, 0, 2 * Math.PI);
               ctx.fillStyle = params.color;
               ctx.fill();
               ctx.closePath();
           };

           const draw = drawFn ? () => drawFn(ctx, params) : drawDefault;

           const translate = () => {
               params.y += params.speed;
               params.x += params.wind;
           };

           const onDown = () => {
               if (params.y < canvas.offsetHeight) return;

               if (params.isResized) {
                   updateData();
                   params.isResized = false;
               } else {
                   params.y = 0;
                   params.x = _.random(0, canvas.offsetWidth);
               }
           };

           const update = () => {
               translate();
               onDown();
           };

           return {
               update,
               resized,
               draw
           };
       };

       const el = document.querySelector(".container");
       const wrapper = document.querySelector("body");
       const canvas = document.getElementById("snow");

       const animFrame =
           window.requestAnimationFrame ||
           window.mozRequestAnimationFrame ||
           window.webkitRequestAnimationFrame ||
           window.msRequestAnimationFrame;

       Snow(canvas, 150, { color: "white" });

   </script>
   <script>
     var shoppingCart = (function(){
     cart=[];
    function Item(id,name,count,price){
        this.id = id;
        this.name = name;
        this.count = count;
        this.price = price;

    }
    function saveCart(){
        sessionStorage.setItem('shopcart',JSON.stringify(cart));
    }
    function loadCart(){
        cart = JSON.parse(sessionStorage.getItem('shopcart'));
        if(sessionStorage.getItem('shopcart') !== null) {
            loadCart();
        }

    }
    var obj = {};
    obj.getCart = function(id){
        var onecart;
      for(var i in cart){
          if(cart[i].id == id){
              onecart = cart[i];
          }
      }
      return onecart;
    };
    obj.addItemCart = function(id,name,count,price){

        for(var i in cart){
            if(cart[i].id === id){
                cart[i].count++;
                saveCart();
                return;
            }
        }

        var item = new Item(id,name,count,price);
        cart.push(item);
        saveCart();

    };
    obj.cartItemCount = function(){
        var count = 0;
        var cart = JSON.parse(sessionStorage.getItem('shopcart'));
        for(var i in cart){
            count +=cart[i].count;
            // if(count ==null){
            //     return " ";
            // }

        }
        return count;
    };
    obj.clearCart = function(){
        cart = [];
        saveCart();
    };
    obj.modalList = function(){
        return JSON.parse(sessionStorage.getItem('shopcart'));
     };
    obj.countMinus = function(id) {
        var count;
        var price;
        for(var i in cart){
            if(cart[i].id == id) {
                if(cart[i].count>1) {
                    cart[i].count -= 1;
                    count = cart[i].count;
                }
                else if(cart[i].count == 1){
                    cart[i].count = 1
                    count = cart[i].count;
                }
            }
        }
        saveCart();
        return count;
    };
    obj.countPlus = function(id){
        var count;
        var price;
        for(var i in cart){
            if(cart[i].id == id) {
                    cart[i].count += 1;
                    count = cart[i].count;
            }
        }
        saveCart();
        return count;
    };
    obj.totalCart = function(){
        var total_sum = 0;
      for(var i in cart){
          total_sum += cart[i].count*cart[i].price;
      }
      return Number(total_sum).toFixed(2);
    };
    obj.deleteItem = function(id) {
      for(var i in cart){
          if(cart[i].id == id){
              cart.splice(i,1);
          }
      }
      saveCart();

    };


   return obj;


})();

    $('.total-count').html(shoppingCart.cartItemCount());

$('.add-to-cart').on('click',function(){
   var id = $(this).attr('data-id');
   var name = $(this).attr('data-name');
   var count = 1;
   var price = $(this).attr('data-price');
   shoppingCart.addItemCart(id,name,count,price);
    $('.total-count').html(shoppingCart.cartItemCount());
    console.log(shoppingCart.cartItemCount())
});
$('.clear-cart').on('click',function(e){
    e.preventDefault();
   shoppingCart.clearCart();
   $('.total-count').html('0');
   $('#cartModal').modal('hide'); // 關閉 modal
});
function clearCart() {
        cart = [];
    }
$('button[data-bs-target="#cartModal"]').on('click',function(){
    removeModalCart();
    openModalCart();
});
$('.show-cart').on('click','.minus',function(){
    var id = $(this).attr('data-id');
    shoppingCart.countMinus(id);
    var onecart = shoppingCart.getCart(id);
    $(this).next('input.item-count').val(onecart['count']);
    $(this).parents('tr').find('.sum').html(onecart['count']*onecart['price']+"NT");
    $('.total-count').html(shoppingCart.cartItemCount());
    $('.total-cart').html(shoppingCart.totalCart());
});
$('.show-cart').on('click','.plus',function(){
   var id = $(this).attr('data-id');
   shoppingCart.countPlus(id);
   var onecart = shoppingCart.getCart(id);
    $(this).prev('input.item-count').val(onecart['count']);
    $(this).parents('tr').find('.sum').html(onecart['count']*onecart['price']+"NT");
    $('.total-count').html(shoppingCart.cartItemCount());
    $('.total-cart').html(shoppingCart.totalCart());
});
$('.show-cart').on('click','.delete',function(){
   var id = $(this).attr('data-id');
   shoppingCart.deleteItem(id);
   $('.total-count').html(shoppingCart.cartItemCount());
   $('.total-cart').html(shoppingCart.totalCart());
   $('table tr').each(function(){
       if($(this).attr('data-id') == id){
           $(this).remove();
       }
   })
});
function openModalCart(){
    var tr = "";
    var sum =0;
    var cartArray = shoppingCart.modalList();
    for(var i in cartArray) {
        sum = cartArray[i].count * cartArray[i].price;
        tr  += "<tr data-id='"+cartArray[i].id+"'>"
            +  "<td>"+cartArray[i].name+"</td>"
            +  "<td>("+cartArray[i].price+"NT"+")</td>"
            +  "<td><div class='input-group'><button class='minus input-group-addon btn btn-primary' data-id='"+cartArray[i].id+"'>-</button>"
            +  "<input  data-id='"+cartArray[i].id+"' class='item-count form-control' value='"+cartArray[i].count+"'>"
            +  "<button class='plus input-group-addon btn btn-primary' data-id='"+cartArray[i].id+"'>+</button></div></td>"
            +  "<td><button class='delete btn btn-danger' data-id='"+cartArray[i].id+"'>X</button></td>"
            +  "<td class='sum'>"+sum+"NT"+"</td>"
            +  "</tr>"
    }
    $('.show-cart').append(tr);
    $('.total-cart').html(shoppingCart.totalCart());
}
function removeModalCart(){
    $.each($('table.show-cart tr'),function(){
        $(this.remove())
    });
}







   </script>


</body>
</html>

   


</asp:Content>
