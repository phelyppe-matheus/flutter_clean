import 'package:dotenv/dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

class ImageResponse {
  final String body = """{
  "search_metadata": {
    "id": "629e926cef7ddaf2f5b27245",
    "status": "Success",
    "json_endpoint": "https://serpapi.com/searches/6f5358c2498e7278/629e926cef7ddaf2f5b27245.json",
    "created_at": "2022-06-06 23:49:00 UTC",
    "processed_at": "2022-06-06 23:49:00 UTC",
    "google_url": "https://www.google.com/search?q=background+image&oq=background+image&tbm=isch&sourceid=chrome&ie=UTF-8",
    "raw_html_file": "https://serpapi.com/searches/6f5358c2498e7278/629e926cef7ddaf2f5b27245.html",
    "total_time_taken": 4.96
  },
  "search_parameters": {
    "engine": "google",
    "q": "background image",
    "google_domain": "google.com",
    "ijn": "0",
    "device": "desktop",
    "tbm": "isch"
  },
  "search_information": {
    "image_results_state": "Results for exact spelling",
    "query_displayed": "background image"
  },
  "images_results": [
    {
      "position": 1,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a45976ded1077b4ee71a61568d866ab04f9f4856b9a9af0f88.jpeg",
      "source": "pexels.com",
      "title": "100,000+ Best Free Background Photos · 100% Free Download · Pexels Stock  Photos",
      "link": "https://www.pexels.com/search/free%20background/",
      "original": "https://images.pexels.com/photos/1563356/pexels-photo-1563356.jpeg?cs=srgb&dl=pexels-craig-adderley-1563356.jpg&fm=jpg",
      "is_product": false
    },
    {
      "position": 2,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a442b1c2fad7fd56b09f6ee5d119b01c72afd7b368d4c48dbb.jpeg",
      "source": "pexels.com",
      "title": "100,000+ Best Background Image Photos · 100% Free Download · Pexels Stock  Photos",
      "link": "https://www.pexels.com/search/background%20image/",
      "original": "https://images.pexels.com/photos/1591447/pexels-photo-1591447.jpeg",
      "is_product": false
    },
    {
      "position": 3,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a431734e8110fcd4a9bbd5ee36497ab504fcb214234dfb87fb.jpeg",
      "source": "pexels.com",
      "title": "100,000+ Best Background Image Photos · 100% Free Download · Pexels Stock  Photos",
      "link": "https://www.pexels.com/search/background%20image/",
      "original": "https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg?cs=srgb&dl=pexels-miguel-%C3%A1-padri%C3%B1%C3%A1n-255379.jpg&fm=jpg",
      "is_product": false
    },
    {
      "position": 4,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a472e850940963c03ceee15f9f2ceb08f57e380c62dda63dac.jpeg",
      "source": "freepik.com",
      "title": "Watercolor Background Images | Free Vectors, Stock Photos & PSD",
      "link": "https://www.freepik.com/free-photos-vectors/watercolor-background",
      "original": "https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?w=2000",
      "is_product": false
    },
    {
      "position": 5,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a4704c37f524e7ee205afc20bf4e5250ec518c8a6315ef25f1.jpeg",
      "source": "shutterstock.com",
      "title": "Free background Images, Stock Photos & Vectors | Shutterstock",
      "link": "https://www.shutterstock.com/search/free+background",
      "original": "https://image.shutterstock.com/image-photo/old-brick-black-color-wall-260nw-1605128917.jpg",
      "is_product": true
    },
    {
      "position": 6,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a4f40e62faf4a8f874ee93d95987d0493fc82cea62a3a131a0.jpeg",
      "source": "pexels.com",
      "title": "100,000+ Best Background Image Photos · 100% Free Download · Pexels Stock  Photos",
      "link": "https://www.pexels.com/search/background%20image/",
      "original": "https://images.pexels.com/photos/586744/pexels-photo-586744.jpeg?cs=srgb&dl=pexels-tejas-prajapati-586744.jpg&fm=jpg",
      "is_product": false
    },
    {
      "position": 7,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a4b722f75787d397b5fc7a225d2146b634f1325e3107f5176f.jpeg",
      "source": "shutterstock.com",
      "title": "Country background Images, Stock Photos & Vectors | Shutterstock",
      "link": "https://www.shutterstock.com/search/country+background",
      "original": "https://image.shutterstock.com/image-photo/light-bulbs-on-dark-wooden-260nw-354086042.jpg",
      "is_product": true
    },
    {
      "position": 8,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a4d713e57a32c3e3492820ba4a4cac23ce7b3187be79d42180.jpeg",
      "source": "unsplash.com",
      "title": "1K+ Natural Background Pictures | Download Free Images on Unsplash",
      "link": "https://unsplash.com/s/photos/natural-background",
      "original": "https://images.unsplash.com/photo-1592743263126-bb241ee76ac7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJhbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80",
      "is_product": false
    },
    {
      "position": 9,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a4a8d2a8bdbb05d055cef9edc5811db9bef138f1bcb3771e6d.jpeg",
      "source": "unsplash.com",
      "title": "550+ Photo Background Pictures | Download Free Images on Unsplash",
      "link": "https://unsplash.com/s/photos/photo-background",
      "original": "https://images.unsplash.com/photo-1483232539664-d89822fb5d3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGhvdG8lMjBiYWNrZ3JvdW5kfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
      "is_product": false
    },
    {
      "position": 10,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a47b1af754c862c716bcfc76c4b6e4352c2b5135b5caad60e7.jpeg",
      "source": "freepik.com",
      "title": "Background Images | Free Vectors, Stock Photos & PSD",
      "link": "https://www.freepik.com/free-photos-vectors/background",
      "original": "https://img.freepik.com/free-vector/hand-painted-background-violet-orange-colours_23-2148427578.jpg?w=2000",
      "is_product": false
    },
    {
      "position": 11,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a442b1c2fad7fd56b0967e397e4bc7720807b0212c3df0148e.jpeg",
      "source": "pngtree.com",
      "title": "Backgrounds, 960000+ Background Images, Wallpaper, Poster, Banners for Free  Download",
      "link": "https://pngtree.com/free-backgrounds",
      "original": "https://png.pngtree.com/thumb_back/fh260/background/20200714/pngtree-modern-double-color-futuristic-neon-background-image_351866.jpg",
      "is_product": false
    },
    {
      "position": 12,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a442b1c2fad7fd56b04a482268a6b78065f9e51830323dd6e8.jpeg",
      "source": "pinterest.com",
      "title": "HD BLUR BACKGROUND FOR PHOTO EDITING I PICSART & PHOTOSHOP | Photo  background images, Picsart background, Dslr background images",
      "link": "https://www.pinterest.com/pin/415316396885188018/",
      "original": "https://i.pinimg.com/736x/91/4c/8a/914c8ad918ebadc9b8a23a18bd592c6d.jpg",
      "is_product": false
    },
    {
      "position": 13,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a442b1c2fad7fd56b05654231574830672c72c41c64b51596c.jpeg",
      "source": "freepik.com",
      "title": "Texture Background Images | Free Vectors, Stock Photos & PSD",
      "link": "https://www.freepik.com/free-photos-vectors/texture-background",
      "original": "https://img.freepik.com/free-photo/top-view-background-beautiful-white-grey-brown-cream-blue-background_140725-72219.jpg?w=2000",
      "is_product": false
    },
    {
      "position": 14,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a442b1c2fad7fd56b019f229d5ed60c9d637eeac32513ee83f.jpeg",
      "source": "unsplash.com",
      "title": "900+ Party Background Images: Download HD Backgrounds on Unsplash",
      "link": "https://unsplash.com/backgrounds/events/party",
      "original": "https://media.istockphoto.com/photos/abstract-multi-colored-bokeh-background-lights-at-night-autumn-fall-picture-id1182650732?b=1&k=20&m=1182650732&s=170667a&w=0&h=5LphKncEWNAHpwTXphq9gi0Ix5aDHk22eXgKvtuWR8o=",
      "is_product": false
    },
    {
      "position": 15,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a442b1c2fad7fd56b0257bee36ee86c9ca5ef5a40d981c3338.jpeg",
      "source": "rawpixel.com",
      "title": "Background Images | Free iPhone & Zoom HD Wallpapers & Vectors - rawpixel",
      "link": "https://www.rawpixel.com/search/background",
      "original": "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v546batch3-mynt-31-badgewatercolor_1.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=e1ee6e84fa2c584170bab2733ea5a1b0",
      "is_product": true
    },
    {
      "position": 16,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a442b1c2fad7fd56b08f20dfc8edbfb4a2598f9835711a1c47.jpeg",
      "source": "in.pinterest.com",
      "title": "BACK GROUND | Best background images, Photoshop backgrounds backdrops,  Simple background images",
      "link": "https://in.pinterest.com/pin/2885187249175777/",
      "original": "https://i.pinimg.com/564x/a5/2e/3e/a52e3ead549f0fef288d9d074b979df2--computer.jpg",
      "is_product": false
    },
    {
      "position": 17,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a442b1c2fad7fd56b08d4bcb41c9a2d91f51d83d86f186a6da.jpeg",
      "source": "pexels.com",
      "title": "100,000+ Best Hd Background Photos · 100% Free Download · Pexels Stock  Photos",
      "link": "https://www.pexels.com/search/hd%20background/",
      "original": "https://images.pexels.com/photos/1496372/pexels-photo-1496372.jpeg?cs=srgb&dl=pexels-artem-saranin-1496372.jpg&fm=jpg",
      "is_product": false
    },
    {
      "position": 18,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a442b1c2fad7fd56b0610c4a1312cc314c1d9b50fc51d18a3e.jpeg",
      "source": "pixabay.com",
      "title": "1,000 of the Best Cool Backgrounds for Free",
      "link": "https://pixabay.com/images/search/cool%20background/",
      "original": "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__480.jpg",
      "is_product": false
    },
    {
      "position": 19,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a442b1c2fad7fd56b0e9a76d3f703650138272bb9834acbfaf.jpeg",
      "source": "freecodecamp.org",
      "title": "CSS Background Image – How to Add an Image URL to Your Div",
      "link": "https://www.freecodecamp.org/news/how-to-add-an-image-url-to-your-div/",
      "original": "https://www.freecodecamp.org/news/content/images/2021/06/w-qjCHPZbeXCQ-unsplash.jpg",
      "is_product": false
    },
    {
      "position": 20,
      "thumbnail": "https://serpapi.com/searches/629e926cef7ddaf2f5b27245/images/78dc2fab6170e4a442b1c2fad7fd56b0d30baf95b2d070dfb8a048ac0c883d51.jpeg",
      "source": "pinterest.com",
      "title": "Instagram post by INDIA BACKGROUND CREATION • Jul 10, 2019 at 6:14am UTC |  Picsart background, Best background images, New background images",
      "link": "https://www.pinterest.com/pin/730779477017341077/",
      "original": "https://i.pinimg.com/736x/97/18/67/971867e0c2072e5da6d0b6c50228906f.jpg",
      "is_product": false
    },
    {
      "position": 21,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWulBjOPJseXq0Y6Bhi2rpD4jMdGMuoNrlRA&usqp=CAU",
      "source": "unsplash.com",
      "title": "Best 100+ Free Background Images [HD] | Download your next background photo  on Unsplash",
      "link": "https://unsplash.com/backgrounds",
      "original": "https://media.istockphoto.com/photos/forest-wooden-table-background-summer-sunny-meadow-with-green-grass-picture-id1353553203?b=1&k=20&m=1353553203&s=170667a&w=0&h=QTyTGI9tWQluIlkmwW0s7Q4z7R_IT8egpzzHjW3cSas=",
      "is_product": false
    },
    {
      "position": 22,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlEXYPv-v2J_iv6BQIgZZZ_NBJbjA95e7gpQ&usqp=CAU",
      "source": "coreldraw.com",
      "title": "How To Blur Photo Background in CorelDRAW",
      "link": "https://www.coreldraw.com/en/tips/photo/basics/blur-background/",
      "original": "https://www.coreldraw.com/static/cdgs/images/pages/seo/tips/photo/basics/blur-background/blur-background.jpg",
      "is_product": false
    },
    {
      "position": 23,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmpfMGCfU0frSa4xsp31m5irELqnlZ_U-5Jg&usqp=CAU",
      "source": "news.disney.com",
      "title": "Brighten Up Your Next Video Call With Backgrounds From Pixar! | Disney News",
      "link": "https://news.disney.com/pixar-video-backgrounds-available",
      "original": "https://lumiere-a.akamaihd.net/v1/images/sa_pixar_virtualbg_coco_16x9_9ccd7110.jpeg",
      "is_product": false
    },
    {
      "position": 24,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwL0_LECqWP5nmWfmq8FogSm1xznIYak4M6A&usqp=CAU",
      "source": "istockphoto.com",
      "title": "592,677 Portrait Background Stock Photos, Pictures & Royalty-Free Images -  iStock",
      "link": "https://www.istockphoto.com/photos/portrait-background",
      "original": "https://media.istockphoto.com/photos/blue-background-picture-id157571423?k=20&m=157571423&s=612x612&w=0&h=GxSD_uRBNlBtsvXo54kGstPong-zzqKR545fF1Y5Mws=",
      "is_product": true
    },
    {
      "position": 25,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpNcR8jkhkBSH5Sa1YG7WddxfYQPRgiT5T3Q&usqp=CAU",
      "source": "in.pinterest.com",
      "title": "710 Aesthetic Photo background images ideas | photo background images, dslr  background images, best background images",
      "link": "https://in.pinterest.com/MrHacker321/photo-background-images/",
      "original": "https://i.pinimg.com/550x/94/fb/9e/94fb9e94f0db7e3d429df2d9c64527d2.jpg",
      "is_product": false
    },
    {
      "position": 26,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeldMRpc-2R6VFOJRrhcSnilxWpr2v6lFbGw&usqp=CAU",
      "source": "unsplash.com",
      "title": "Best 100+ Free Background Images [HD] | Download your next background photo  on Unsplash",
      "link": "https://unsplash.com/backgrounds",
      "original": "https://media.istockphoto.com/photos/abstract-futuristic-background-with-a-pedestal-picture-id1311473275?b=1&k=20&m=1311473275&s=170667a&w=0&h=TQrpH65THptzwZHrMLx6Z5ItaG3aG2rCIYNt8l59NQk=",
      "is_product": false
    },
    {
      "position": 27,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS9Hwot1dnhPwVRKMutchj1Lyg-4g_KbVfbg&usqp=CAU",
      "source": "freepik.com",
      "title": "Background Images | Free Vectors, Stock Photos & PSD",
      "link": "https://www.freepik.com/free-photos-vectors/background",
      "original": "https://img.freepik.com/free-vector/painted-background-multicoloured-palette_23-2148427592.jpg?w=2000",
      "is_product": false
    },
    {
      "position": 28,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7uBGhDDuqZM3SGLkRL91A4HWcziTgDLv2-g&usqp=CAU",
      "source": "pixabay.com",
      "title": "100,000+ Best Free Background Images & Pictures [HD]",
      "link": "https://pixabay.com/images/search/background/",
      "original": "https://cdn.pixabay.com/photo/2018/07/25/16/00/art-3561710__340.jpg",
      "is_product": false
    },
    {
      "position": 29,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2ImMEdy2t-vl_Cf0HGxnOLiPwUgCIZlGn4g&usqp=CAU",
      "source": "pexels.com",
      "title": "100,000+ Best Background Image Photos · 100% Free Download · Pexels Stock  Photos",
      "link": "https://www.pexels.com/search/background%20image/",
      "original": "https://images.pexels.com/photos/1590549/pexels-photo-1590549.jpeg?cs=srgb&dl=pexels-irina-iriser-1590549.jpg&fm=jpg",
      "is_product": false
    },
    {
      "position": 30,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSHpoTSLNay1j6KuwVTGvXvrE870JhHe6gtg&usqp=CAU",
      "source": "remove.bg",
      "title": "Change Image Background – remove.bg",
      "link": "https://www.remove.bg/t/change-background",
      "original": "https://kaleidousercontent.com/removebg/designs/4621cf76-fb41-4177-bc33-f12a67816592/thumbnail_image/change-background-thumbnail.png",
      "is_product": false
    },
    {
      "position": 31,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4iIMtiYdc3Vu8_wBmPkQoiLkUrUxgRqQeug&usqp=CAU",
      "source": "rawpixel.com",
      "title": "Background Images | Free iPhone & Zoom HD Wallpapers & Vectors - rawpixel",
      "link": "https://www.rawpixel.com/search/background",
      "original": "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v546batch3-mynt-34-badgewatercolor_1.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=89288ef4b47127f7f34a5998b50e4470",
      "is_product": true
    },
    {
      "position": 32,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0uMtEkAj6T3TsRjXlr6E5uU5pXhX0Vdr2pg&usqp=CAU",
      "source": "androidauthority.com",
      "title": "The best background and wallpaper apps for Android - Android Authority",
      "link": "https://www.androidauthority.com/best-backgrounds-and-wallpaper-apps-for-android-653338/",
      "original": "https://www.androidauthority.com/wp-content/uploads/2015/11/00-best-backgrounds-and-wallpaper-apps-for-android.jpg",
      "is_product": false
    },
    {
      "position": 33,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvDuTvWHQuZaVD9WezOBH1LUFE3w0Z-2weJQ&usqp=CAU",
      "source": "canva.com",
      "title": "How to use background remover | Canva",
      "link": "https://www.canva.com/learn/background-remover/",
      "original": "https://learn.canva.com/wp-content/uploads/2020/02/removing-background-images_Unsplash.jpeg",
      "is_product": false
    },
    {
      "position": 34,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD3AU5x5Ezap41LX39fYIcLjQL877wKJ1b_g&usqp=CAU",
      "source": "in.pinterest.com",
      "title": "Full HD background | Dslr blur background, Blur background in photoshop,  Dslr background images",
      "link": "https://in.pinterest.com/pin/816207132453094298/",
      "original": "https://i.pinimg.com/originals/91/bc/76/91bc76a0c2f81ac362e22ff69bbac484.jpg",
      "is_product": false
    },
    {
      "position": 35,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjKmqHvu3VYieVvQ9FueMbu4IpZTy27ADANw&usqp=CAU",
      "source": "pexels.com",
      "title": "100,000+ Best Background Photos · 100% Free Download · Pexels Stock Photos",
      "link": "https://www.pexels.com/search/background/",
      "original": "https://images.pexels.com/photos/1631677/pexels-photo-1631677.jpeg?cs=srgb&dl=pexels-abdullah-ghatasheh-1631677.jpg&fm=jpg",
      "is_product": false
    },
    {
      "position": 36,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfjogj_WFpnH1ylMI9iSjKN4nGO8jMrgp2Hw&usqp=CAU",
      "source": "shutterstock.com",
      "title": "Nature background Images, Stock Photos & Vectors | Shutterstock",
      "link": "https://www.shutterstock.com/search/nature+background",
      "original": "https://image.shutterstock.com/image-photo/abstract-blur-green-color-backgroundblurred-260nw-749692990.jpg",
      "is_product": true
    },
    {
      "position": 37,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEwlXY-hxNHXAT5CHMzVz301s6kPZ6lsZ7KA&usqp=CAU",
      "source": "freepik.com",
      "title": "6,128,000+ Background Pictures",
      "link": "https://www.freepik.com/photos/background",
      "original": "https://img.freepik.com/free-photo/abstract-space-wallpaper-background-dark-smoke-design_53876-128278.jpg?w=2000",
      "is_product": false
    },
    {
      "position": 38,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw4Xaf0afxbWT0zXRo6apRDS4y8jJPcM0dWg&usqp=CAU",
      "source": "iphonephotographyschool.com",
      "title": "How To Blur Background In Your iPhone Photos: The Ultimate Guide",
      "link": "https://iphonephotographyschool.com/how-to-blur-background-on-iphone/",
      "original": "https://images.iphonephotographyschool.com/22682/How-To-Blur-Background-On-iPhone.jpg",
      "is_product": false
    },
    {
      "position": 39,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-I2EnieV_3l6Kw1n8SiMA3UiYM_8YMmjWhw&usqp=CAU",
      "source": "stock.adobe.com",
      "title": "Background Images – Browse 130,540,135 Stock Photos, Vectors, and Video |  Adobe Stock",
      "link": "https://stock.adobe.com/search?k=background",
      "original": "https://t4.ftcdn.net/jpg/02/98/58/41/360_F_298584167_WLdKSUF4ZpQxLe4dX1div4tvC41Nd9N0.jpg",
      "is_product": true
    },
    {
      "position": 40,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoYPwnrD976ivec4mOcd_2cP8ICpprkP943w&usqp=CAU",
      "source": "thoughtco.com",
      "title": "Use CSS3 to Stretch a Background Image to Fit a Web Page",
      "link": "https://www.thoughtco.com/stretch-background-image-3466979",
      "original": "https://www.thoughtco.com/thmb/ww8lT16T5GoiTeYfdEWag9cOqFw=/1920x971/filters:no_upscale():max_bytes(150000):strip_icc()/css-background-cover-fullscreen-121a93586a864318a7c0e9fbaf69f226.jpg",
      "is_product": false
    },
    {
      "position": 41,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtGuTboKmMCqLY3hlNJYtQzLUckTosF9xzcA&usqp=CAU",
      "source": "istockphoto.com",
      "title": "167,412 Colorful Background Stock Photos, Pictures & Royalty-Free Images -  iStock",
      "link": "https://www.istockphoto.com/photos/colorful-background",
      "original": "https://media.istockphoto.com/vectors/abstract-blurred-colorful-background-vector-id1248542684?k=20&m=1248542684&s=612x612&w=0&h=1yKiRrtPhiqUJXS_yJDwMGVHVkYRk2pJX4PG3TT4ZYM=",
      "is_product": true
    },
    {
      "position": 42,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnRWI3lX3z1xPbRKWseNoMK1V5fdJpNDnV_w&usqp=CAU",
      "source": "canva.com",
      "title": "Your ultimate guide to designing with background",
      "link": "https://www.canva.com/learn/background-design/",
      "original": "https://static-cse.canva.com/blob/572626/1.magebyRodionKutsaevviaUnsplash.jpg",
      "is_product": false
    },
    {
      "position": 43,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdcVxg3Om8pXPxsVpf_jl0Qv01eW45ffRTFw&usqp=CAU",
      "source": "in.pinterest.com",
      "title": "280 Background images ideas in 2022 | background images, dslr background  images, photo background images",
      "link": "https://in.pinterest.com/npradhancom/background-images/",
      "original": "https://i.pinimg.com/550x/4a/6f/59/4a6f59296f90c11d77744720ca10d1af.jpg",
      "is_product": false
    },
    {
      "position": 44,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXgME06SaOsiHkAKID7A3c31hiIE0XU-Uxlw&usqp=CAU",
      "source": "unsplash.com",
      "title": "1000+ Blank Background Pictures | Download Free Images on Unsplash",
      "link": "https://unsplash.com/s/photos/blank-background",
      "original": "https://media.istockphoto.com/photos/green-background-3d-render-picture-id1226478926?b=1&k=20&m=1226478926&s=170667a&w=0&h=JnDdZVzHtMBfq5ZYQBevaTDCvbDRS2ZS5iGeaJKXBqA=",
      "is_product": false
    },
    {
      "position": 45,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJkcPDukD6ZXsfIiM961X4rtXYrKKlwwKeDg&usqp=CAU",
      "source": "pixabay.com",
      "title": "100,000+ Best Free Background Images & Pictures [HD]",
      "link": "https://pixabay.com/images/search/background/",
      "original": "https://cdn.pixabay.com/photo/2016/02/23/07/37/wall-1217083__340.jpg",
      "is_product": false
    },
    {
      "position": 46,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgzNPDn0CDdSdct9AtOPLGdoYBsZAxGOaODw&usqp=CAU",
      "source": "adobe.com",
      "title": "Free Image Background Remover | Adobe Express",
      "link": "https://www.adobe.com/express/feature/image/remove-background",
      "original": "https://www.adobe.com/express/feature/image/media_15b2c1290209fc9adae3368750f64323253132050.png?width=750&format=png&optimize=medium",
      "is_product": false
    },
    {
      "position": 47,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzjW45_1AHC87TBlvxPTIhbbnx6N0oA2iUkA&usqp=CAU",
      "source": "storyblocks.com",
      "title": "Download Backgrounds Royalty-Free Photos, Illustrations, and Vectors -  Storyblocks",
      "link": "https://www.storyblocks.com/images/search/backgrounds",
      "original": "https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/image/rDtN98Qoishumwih/summer-background-abstract-background-wallpaper-use-for-presentation_HDDYoJOhMg_thumb.jpg",
      "is_product": false
    },
    {
      "position": 48,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdVd3hYvAm8TmUY4WCQoLsWaGl0WjNkR3SpQ&usqp=CAU",
      "source": "gettyimages.com",
      "title": "2,311,014 Backgrounds Photos and Premium High Res Pictures - Getty Images",
      "link": "https://www.gettyimages.com/photos/backgrounds",
      "original": "https://media.gettyimages.com/vectors/abstract-wavey-blue-pattern-background-vector-id1264879445?s=612x612",
      "is_product": true
    },
    {
      "position": 49,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYuadSFBwIhcdipGP2HOAxsylXb8h1a8DD5A&usqp=CAU",
      "source": "pexels.com",
      "title": "100,000+ Best Hd Background Photos · 100% Free Download · Pexels Stock  Photos",
      "link": "https://www.pexels.com/search/hd%20background/",
      "original": "https://images.pexels.com/photos/589840/pexels-photo-589840.jpeg?cs=srgb&dl=pexels-valiphotos-589840.jpg&fm=jpg",
      "is_product": false
    },
    {
      "position": 50,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS18VEnnxilzuz5ts_2P4QWAsPyl4d7AQurTQ&usqp=CAU",
      "source": "blog.prezi.com",
      "title": "25 Presentation Backgrounds that Grab Your Attention | Prezi Blog",
      "link": "https://blog.prezi.com/our-25-best-presentation-backgrounds-that-grab-your-attention/",
      "original": "https://blog.prezi.com/wp-content/uploads/2019/03/jason-leung-479251-unsplash.jpg",
      "is_product": false
    },
    {
      "position": 51,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRmLao6Q26iOjrthLa7T41FglVVzDlIkW_Yw&usqp=CAU",
      "source": "stocksnap.io",
      "title": "2818 Free CC0 Background Stock Photos - StockSnap.io",
      "link": "https://stocksnap.io/search/background",
      "original": "https://image.shutterstock.com/image-photo/beautiful-abstract-grunge-decorative-navy-260nw-539880832.jpg",
      "is_product": false
    },
    {
      "position": 52,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm7zgamy6371rn_DM13s0zLa6NtGTHWkfb8g&usqp=CAU",
      "source": "pngtree.com",
      "title": "Creative Simple Background Wall, Simple, Creative, Fashion Background Image  for Free Download",
      "link": "https://pngtree.com/freebackground/creative-simple-background-wall_371930.html",
      "original": "https://png.pngtree.com/background/20210709/original/pngtree-creative-simple-background-wall-picture-image_371930.jpg",
      "is_product": false
    },
    {
      "position": 53,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEEuSKv1VSK9XoW7PdK-Lpm0TmcW6RfFL9Xw&usqp=CAU",
      "source": "digitalocean.com",
      "title": "How To Add a Background Image to the Top Section of Your Webpage With HTML  | DigitalOcean",
      "link": "https://www.digitalocean.com/community/tutorials/how-to-add-a-background-image-to-the-top-section-of-your-webpage-with-html",
      "original": "https://html.sammy-codes.com/images/background.jpg",
      "is_product": false
    },
    {
      "position": 54,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREf1xRNREhIIlNKSmnSOQ5Dli463UONnKJlg&usqp=CAU",
      "source": "freepik.com",
      "title": "6,128,000+ Background Pictures",
      "link": "https://www.freepik.com/photos/background",
      "original": "https://img.freepik.com/free-photo/abstract-flowing-neon-wave-background_53876-101942.jpg?w=2000",
      "is_product": false
    },
    {
      "position": 55,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRefd3-EyLFUsbWqN2kA779iXhfFHZY8muqsw&usqp=CAU",
      "source": "stock.adobe.com",
      "title": "News Background\" Images – Browse 1,358 Stock Photos, Vectors, and Video |  Adobe Stock",
      "link": "https://stock.adobe.com/search?k=%22news+background%22",
      "original": "https://t4.ftcdn.net/jpg/04/75/67/67/360_F_475676739_4uSdpV10kGemUK6JN0MPrWLVOhxyZ49R.jpg",
      "is_product": true
    },
    {
      "position": 56,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-dbD2zo75cvOWYj1ko-LjUsz17rQSFfFsiA&usqp=CAU",
      "source": "dreamstime.com",
      "title": "10,850,974 Blue Background Photos - Free & Royalty-Free Stock Photos from  Dreamstime",
      "link": "https://www.dreamstime.com/photos-images/blue-background.html",
      "original": "https://thumbs.dreamstime.com/b/dark-blue-background-texture-12018606.jpg",
      "is_product": false
    },
    {
      "position": 57,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyEacSGEinNrsrpXdT_JZ8-oSAWmTK-vw3YQ&usqp=CAU",
      "source": "amazon.in",
      "title": "Decdeal BG-0010 0.9 * 1.5m/1.5 * 2.1m Photography Background Backdrop  Classic Fashion Wooden Floor for Studio Professional Photographer :  Amazon.in: Electronics",
      "link": "https://www.amazon.in/Decdeal-Photography-Background-Professional-Photographer/dp/B07Y46XC7L",
      "original": "https://m.media-amazon.com/images/I/71+17bVYHxL._SL1000_.jpg",
      "is_product": false
    },
    {
      "position": 58,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3G4xQ835rbT0boC2V63OU02WOW-3RVEiGYA&usqp=CAU",
      "source": "in.pinterest.com",
      "title": "Marauders x Reader - Remus x Reader | Fall wallpaper tumblr, Fall  backgrounds iphone, Cute fall wallpaper",
      "link": "https://in.pinterest.com/pin/marauders-x-reader-remus-x-reader--1103663452402946907/",
      "original": "https://i.pinimg.com/736x/24/0c/e7/240ce743e9e5bd6daf9e7e16b95c4957.jpg",
      "is_product": false
    },
    {
      "position": 59,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuPy3cboepj69DlxMaodxkjYME2T0-EJumig&usqp=CAU",
      "source": "rawpixel.com",
      "title": "Background Images | Free iPhone & Zoom HD Wallpapers & Vectors - rawpixel",
      "link": "https://www.rawpixel.com/search/background",
      "original": "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/v978-background-02-kpzgw7o8.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=e62663bb68a9df004c04635304ebb5f8",
      "is_product": true
    },
    {
      "position": 60,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk5NlCn_vfkBgp01hdsaDVSu6aQG9nRAeapg&usqp=CAU",
      "source": "freeimages.com",
      "title": "Free background Pictures | Royalty-Free | FreeImages",
      "link": "https://www.freeimages.com/search/background",
      "original": "https://images.freeimages.com/images/small-previews/ec9/background-1630963.jpg",
      "is_product": false
    },
    {
      "position": 61,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT81XhxUY5os1u3Bngs4dBanXAb7R7wNZ-8VQ&usqp=CAU",
      "source": "unsplash.com",
      "title": "900+ HD Background Images: Download HD Backgrounds on Unsplash",
      "link": "https://unsplash.com/backgrounds/desktop/hd",
      "original": "https://images.unsplash.com/photo-1474540412665-1cdae210ae6b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80",
      "is_product": false
    },
    {
      "position": 62,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWRhzRR10dNoWzHyxnvRJRolbc8uOMwFxg9Q&usqp=CAU",
      "source": "freepik.com",
      "title": "Background Images | Free Vectors, Stock Photos & PSD",
      "link": "https://www.freepik.com/free-photos-vectors/background",
      "original": "https://img.freepik.com/free-vector/abstract-banner-background-with-red-shapes_1361-3348.jpg?w=2000",
      "is_product": false
    },
    {
      "position": 63,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1cZErQNdFilgXfrnoYFxU4hgz_eIzb7xWOQ&usqp=CAU",
      "source": "freeimages.com",
      "title": "Free background Pictures | Royalty-Free | FreeImages",
      "link": "https://www.freeimages.com/search/background",
      "original": "https://images.freeimages.com/images/small-previews/2ae/bokeh-background-in-light-tan-rose-1635915.jpg",
      "is_product": false
    },
    {
      "position": 64,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVv9Cztc5YU4tQFqfW0RuqNNEyRFQl25kKZw&usqp=CAU",
      "source": "popsci.com",
      "title": "A simple background photo is forcing some Android users to factory reset  their smartphones",
      "link": "https://www.popsci.com/story/technology/cursed-android-phone-background-picture/",
      "original": "https://www.popsci.com/uploads/2020/06/05/3NIEQB3SFVCMNHH6MHZ42FO6PA.jpg?auto=webp",
      "is_product": false
    },
    {
      "position": 65,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBcNDBwsnQUDSjkmhtt_huI4TDlpfiyGH1fw&usqp=CAU",
      "source": "shutterstock.com",
      "title": "Free background Images, Stock Photos & Vectors | Shutterstock",
      "link": "https://www.shutterstock.com/search/free+background",
      "original": "https://image.shutterstock.com/image-vector/abstract-blue-light-circuit-microchip-260nw-1165735282.jpg",
      "is_product": true
    },
    {
      "position": 66,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQio3voEw9f1bg5k3tg5Gtbw4vZn_ias8nfRQ&usqp=CAU",
      "source": "oyephoto.com",
      "title": "🔥 Full Hd Autodesk Background Download | image Free Download",
      "link": "https://oyephoto.com/photo/828/full-hd-autodesk-background-download",
      "original": "http://oyephoto.com/public/uploads/preview/full-hd-autodesk-background-download-11625811526slrevtkdf6.jpg",
      "is_product": false
    },
    {
      "position": 67,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_oLw90I6E7TdF4V5fUrsVP46GeMEXEAELhQ&usqp=CAU",
      "source": "postermywall.com",
      "title": "Customize 51+ Zoom Virtual Background Templates | PosterMyWall",
      "link": "https://www.postermywall.com/index.php/sizes/zoom-virtual-background",
      "original": "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/summer-beach-zoom-virtual-background-video-design-template-c95b9c7d4c37ed391e8cbc1aeb7f1127.jpg?ts=1589072498",
      "is_product": false
    },
    {
      "position": 68,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1kjycXUyywirBR1Tp6TyQsJehNVS_IGtm8A&usqp=CAU",
      "source": "unsplash.com",
      "title": "550+ Orange Background Pictures | Download Free Images on Unsplash",
      "link": "https://unsplash.com/s/photos/orange-background",
      "original": "https://media.istockphoto.com/photos/autumn-orange-background-paper-with-red-texture-grunge-border-or-picture-id1341383120?b=1&k=20&m=1341383120&s=170667a&w=0&h=-J1XJKQIfZH6Zqhw32mhnsxHaer2WBSn28ArZA2G5_c=",
      "is_product": false
    },
    {
      "position": 69,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb5gcScctXDD7o8lFclIPw2qP2IlKhxOaFJw&usqp=CAU",
      "source": "freepik.com",
      "title": "Cool Background Images | Free Vectors, Stock Photos & PSD",
      "link": "https://www.freepik.com/free-photos-vectors/cool-background",
      "original": "https://img.freepik.com/free-vector/abstract-dynamic-blue-orange-background_67845-1390.jpg?w=2000",
      "is_product": false
    },
    {
      "position": 70,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxQrAW8SCRFXOcHVcFGSqOFFuufBIhoHkKUw&usqp=CAU",
      "source": "vecteezy.com",
      "title": "Graphics Background Design Vector Art, Icons, and Graphics for Free Download",
      "link": "https://www.vecteezy.com/free-vector/graphics-background-design",
      "original": "https://static.vecteezy.com/system/resources/thumbnails/003/226/126/small/empty-podium-with-line-gradient-neon-ring-on-background-vector.jpg",
      "is_product": true
    },
    {
      "position": 71,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyrOtb5Ws9OooCpau_R9-Q5LF7BKAq4zll2Q&usqp=CAU",
      "source": "shutterstock.com",
      "title": "1000s of Background Images, Pictures, Photos, Photographs | Shutterstock",
      "link": "https://www.shutterstock.com/category/backgrounds-textures",
      "original": "https://images.ctfassets.net/hrltx12pl8hq/5KiKmVEsCQPMNrbOE6w0Ot/341c573752bf35cb969e21fcd279d3f9/hero-img_copy.jpg?fit=fill&w=800&h=300",
      "is_product": false
    },
    {
      "position": 72,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ_f8tg7bo1q38eGNz4gWRvFcsBw5yKBwKTQ&usqp=CAU",
      "source": "loading.io",
      "title": "Loading Background / Animated, Vector Background in SVG / PNG · Loading.io",
      "link": "https://loading.io/background/",
      "original": "https://loading.io/assets/img/c/ext/makebk/flying-elves.jpg",
      "is_product": false
    },
    {
      "position": 73,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBHtFd-npMTFmdrB2MxY64fa-TpUATcEbUjg&usqp=CAU",
      "source": "pexels.com",
      "title": "100,000+ Best Abstract Background Photos · 100% Free Download · Pexels  Stock Photos",
      "link": "https://www.pexels.com/search/abstract%20background/",
      "original": "https://images.pexels.com/photos/3308588/pexels-photo-3308588.jpeg?cs=srgb&dl=pexels-mnm-zameer-3308588.jpg&fm=jpg",
      "is_product": false
    },
    {
      "position": 74,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfbgKWwiIQZn96fEJe4dimxngXH4_Xbv2B2g&usqp=CAU",
      "source": "venngage.com",
      "title": "35+ Simple Background Images & Stock Photos [Edit & Download] - Venngage",
      "link": "https://venngage.com/blog/simple-backgrounds/",
      "original": "https://venngage-wordpress.s3.amazonaws.com/uploads/2018/09/Perfect-Sunset-Nature-Background-Image.jpeg",
      "is_product": false
    },
    {
      "position": 75,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV3-GB00LcvFCPwhn22F9U5oWlh9RhvRCTtg&usqp=CAU",
      "source": "pixabay.com",
      "title": "50,000+ Free Pattern & Background Images",
      "link": "https://pixabay.com/images/search/pattern/",
      "original": "https://cdn.pixabay.com/photo/2016/11/21/18/14/wall-1846965__340.jpg",
      "is_product": false
    },
    {
      "position": 76,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwRvdnyTwdqxgGviByg9EmkcWa8htxyaApGQ&usqp=CAU",
      "source": "freecodecamp.org",
      "title": "CSS Background Image – With HTML Example Code",
      "link": "https://www.freecodecamp.org/news/css-background-image-with-html-example-code/",
      "original": "https://www.freecodecamp.org/news/content/images/2021/07/Screenshot-2021-07-20-at-9.11.39-PM.png",
      "is_product": false
    },
    {
      "position": 77,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTahYztqJn-1cjF8_3FztlqjHyyMrQn7AYtkQ&usqp=CAU",
      "source": "makeuseof.com",
      "title": "How to Change the Background of a Photo in Photoshop",
      "link": "https://www.makeuseof.com/tag/how-to-change-the-background-of-a-photo-in-photoshop/",
      "original": "https://static1.makeuseofimages.com/wordpress/wp-content/uploads/2017/02/Photoshop-Replace-Background-Featured.jpg",
      "is_product": false
    },
    {
      "position": 78,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBfHZvpNT1YxyUh0VipANw1UNtT5CI-X2HYw&usqp=CAU",
      "source": "istockphoto.com",
      "title": "108,684 Red Background Stock Photos, Pictures & Royalty-Free Images - iStock",
      "link": "https://www.istockphoto.com/photos/red-background",
      "original": "https://media.istockphoto.com/vectors/abstract-red-vector-background-with-stripes-vector-id1267149438?k=20&m=1267149438&s=612x612&w=0&h=ar5RFezr9qxzI7fOIcY2GJJ5ubr7D9xZMGvIhVfVAn8=",
      "is_product": true
    },
    {
      "position": 79,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVZhsA0KxL1v7mI588jip6tL77UieaCY0fgw&usqp=CAU",
      "source": "vecteezy.com",
      "title": "Abstract Background Images Vector Art, Icons, and Graphics for Free Download",
      "link": "https://www.vecteezy.com/free-vector/abstract-background-images",
      "original": "https://static.vecteezy.com/system/resources/thumbnails/002/037/924/small/abstract-blue-background-with-beautiful-fluid-shapes-free-vector.jpg",
      "is_product": true
    },
    {
      "position": 80,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCJo8cI1DBvDVUd3-EJh175ef2AnBOr38KiQ&usqp=CAU",
      "source": "university.webflow.com",
      "title": "Backgrounds | Webflow University",
      "link": "https://university.webflow.com/lesson/background-styles-overview",
      "original": "https://assets-global.website-files.com/5e39e095596498a8b9624af1/5f6e93d250a6d04f4eae9f02_Backgrounds-WFU-thumbnail-(size).jpg",
      "is_product": false
    },
    {
      "position": 81,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBgK5cH3qeoFP_q_T_HP9x9lUzqTR7A19A6A&usqp=CAU",
      "source": "klaviyo.com",
      "title": "How to Use a Background Image in Your Email Templates | Klaviyo Blog",
      "link": "https://www.klaviyo.com/blog/how-to-use-a-background-image-in-your-email-templates",
      "original": "https://www.klaviyo.com/wp-content/uploads/2016/09/abstract-background-1024x273.jpg",
      "is_product": false
    },
    {
      "position": 82,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShATARFHrCDOzsoluEMsCcMQZAH3namOXNJQ&usqp=CAU",
      "source": "gettyimages.com",
      "title": "102,577 Red Background Photos and Premium High Res Pictures - Getty Images",
      "link": "https://www.gettyimages.com/photos/red-background",
      "original": "https://media.gettyimages.com/photos/red-background-with-textures-and-vignette-picture-id1201284418?s=612x612",
      "is_product": true
    },
    {
      "position": 83,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb1MW_YD3lpgnjga5F2NaM_IeDQ_S5CkwoBg&usqp=CAU",
      "source": "dreamstime.com",
      "title": "3,010,643 Autumn Background Photos - Free & Royalty-Free Stock Photos from  Dreamstime",
      "link": "https://www.dreamstime.com/photos-images/autumn-background.html",
      "original": "https://thumbs.dreamstime.com/b/beautiful-autumn-background-flying-falling-colorful-leaves-bokeh-frame-beautiful-autumn-background-flying-falling-99139534.jpg",
      "is_product": false
    },
    {
      "position": 84,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa3Xs8hK0wBqbmRL9RTAdlnhvj3800Bd7G5w&usqp=CAU",
      "source": "shutterstock.com",
      "title": "Fashion background Images, Stock Photos & Vectors | Shutterstock",
      "link": "https://www.shutterstock.com/search/fashion+background",
      "original": "https://image.shutterstock.com/image-vector/abstract-blue-wavy-background-gold-260nw-1899384751.jpg",
      "is_product": true
    },
    {
      "position": 85,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2RtTOHC41lnzYfiqOy1PsuOYlJMBb5nW4yw&usqp=CAU",
      "source": "burst.shopify.com",
      "title": "Free HD Background Images and Photos for Download",
      "link": "https://burst.shopify.com/background",
      "original": "https://burst.shopifycdn.com/photos/elaborate-building-interior-with-light-teal-walls.jpg?width=500&format=pjpg&exif=1&iptc=1",
      "is_product": false
    },
    {
      "position": 86,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHsz6sOEp9zoGKCyYPfp_H3kJjBi5jyj2KzQ&usqp=CAU",
      "source": "rawpixel.com",
      "title": "Floral Background Images | Free iPhone & Zoom HD Wallpapers & Vectors -  rawpixel",
      "link": "https://www.rawpixel.com/search/floral%20background",
      "original": "https://img.rawpixel.com/private/static/images/website/2022-05/rm422-076-x.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=e877fedea1136b8c616786d383ed70c3",
      "is_product": true
    },
    {
      "position": 87,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTa90-yF_Vc4PG-boJb31QlcA4cebpzJK8ow&usqp=CAU",
      "source": "photoscissors.com",
      "title": "Replace Photo Background in a Click | Background Eraser",
      "link": "https://photoscissors.com/tutorials/pc/replace-photo-background",
      "original": "https://photoscissors.com/images/tutorials/pc/how-to-replace-photo-background-2.png",
      "is_product": false
    },
    {
      "position": 88,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSR4xF3g54K9IBsYnGjRR88G4m4WyO8q2-aHA&usqp=CAU",
      "source": "freepik.com",
      "title": "6,128,000+ Background Pictures",
      "link": "https://www.freepik.com/photos/background",
      "original": "https://img.freepik.com/free-photo/colour-smoke-background_71163-197.jpg?w=2000",
      "is_product": false
    },
    {
      "position": 89,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIyI48kaDjL2wV6lPt1e5MwUQOqk5JLOAIlw&usqp=CAU",
      "source": "facebook.com",
      "title": "Photo editor backgrounds,png. - Home | Facebook",
      "link": "https://www.facebook.com/riteshibitwa/",
      "original": "https://lookaside.fbsbx.com/lookaside/crawler/media/?media_id=105084577546507",
      "is_product": false
    },
    {
      "position": 90,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8i1uFU9f8mC0Tfa7Ng4RKJUlMAQYNu4EKKw&usqp=CAU",
      "source": "bggenerator.com",
      "title": "Background Generator - Create Unique and Random Background Images Online",
      "link": "https://bggenerator.com/",
      "original": "https://bggenerator.com/images/colorful.jpg",
      "is_product": false
    },
    {
      "position": 91,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmEdM8FanxVEaDhZbeUU3UP-J7UboiurPz9Q&usqp=CAU",
      "source": "softauthor.com",
      "title": "CSS Make Background Image Full Screen | SoftAuthor",
      "link": "https://softauthor.com/css-make-background-image-full-screen/",
      "original": "https://softauthor.com/wp-content/uploads/2021/08/CSS-Background-Image-Full-Screen-background-size-contain-1024x849.png",
      "is_product": false
    },
    {
      "position": 92,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2584iqd1iTnTb3c6BCvUjG_c_xzXnAbamEw&usqp=CAU",
      "source": "unsplash.com",
      "title": "750+ Virtual Background Pictures | Download Free Images on Unsplash",
      "link": "https://unsplash.com/s/photos/virtual-background",
      "original": "https://media.istockphoto.com/photos/pastel-colored-light-blue-backgrounds-picture-id1334563669?b=1&k=20&m=1334563669&s=170667a&w=0&h=Fg6YM-M-BJ8MymeS8BM0siDz9gqAWRWNTC1Sj51Ak9k=",
      "is_product": false
    },
    {
      "position": 93,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJmR8LF39ptV7-8XwO-3fw1VV0iU0cXa46-A&usqp=CAU",
      "source": "svgbackgrounds.com",
      "title": "Customize and apply backgrounds fast | SVG Backgrounds",
      "link": "https://www.svgbackgrounds.com/",
      "original": "https://www.design.svgbackgrounds.com/wp-content/uploads/2021/05/protruding-squares-orange-background.png",
      "is_product": false
    },
    {
      "position": 94,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4WKEEzhRBhTC6_IniQ8HsqhF1jCMD6wV0cA&usqp=CAU",
      "source": "photoscissors.com",
      "title": "Remove Background from Image | Free Background Remover",
      "link": "https://photoscissors.com/",
      "original": "https://photoscissors.com/images/screenshot6.jpg",
      "is_product": false
    },
    {
      "position": 95,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfgPEuSjYukMlsLp23D-f9rPpyw2HFXiA7zQ&usqp=CAU",
      "source": "softauthor.com",
      "title": "CSS Make Background Image Full Screen | SoftAuthor",
      "link": "https://softauthor.com/css-make-background-image-full-screen/",
      "original": "https://softauthor.com/wp-content/uploads/2021/08/CSS-Background-Image-Full-Screen-background-size-cover-1024x845.png",
      "is_product": false
    },
    {
      "position": 96,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbOFtSRiT43CvdRvPXtnHtTbN4ERwht9DOCA&usqp=CAU",
      "source": "vecteezy.com",
      "title": "Product Background Vector Art, Icons, and Graphics for Free Download",
      "link": "https://www.vecteezy.com/free-vector/product-background",
      "original": "https://static.vecteezy.com/system/resources/thumbnails/004/575/494/small/3d-gray-background-product-display-podium-scene-with-leaf-geometric-platform-grey-background-3d-render-with-podium-stand-to-show-cosmetic-product-stage-showcase-on-pedestal-display-white-vector.jpg",
      "is_product": true
    },
    {
      "position": 97,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTW6ahDgn1WyKQzmteliDbpz77AR-9yJAXiQQ&usqp=CAU",
      "source": "depositphotos.com",
      "title": "Party background Stock Photos, Royalty Free Party background Images |  Depositphotos",
      "link": "https://depositphotos.com/stock-photos/party-background.html",
      "original": "https://static9.depositphotos.com/1000123/1165/i/600/depositphotos_11657844-stock-photo-abstract-holidays-backgrounds-with-beauty.jpg",
      "is_product": false
    },
    {
      "position": 98,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ52MeIaAPaVNctFDZjTbsMPYfl-jXxO90wLQ&usqp=CAU",
      "source": "shutterstock.com",
      "title": "Background Images, Stock Photos & Vectors | Shutterstock",
      "link": "https://www.shutterstock.com/search/background",
      "original": "https://image.shutterstock.com/image-illustration/abstract-background-consisting-triangles-gradient-260nw-2096092762.jpg",
      "is_product": true
    },
    {
      "position": 99,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBm1LZW8clZL7-bqiUAs9qO3dFF8aMZmmT-w&usqp=CAU",
      "source": "pexels.com",
      "title": "100,000+ Best Simple Background Photos · 100% Free Download · Pexels Stock  Photos",
      "link": "https://www.pexels.com/search/simple%20background/",
      "original": "https://images.pexels.com/photos/235985/pexels-photo-235985.jpeg?cs=srgb&dl=pexels-pixabay-235985.jpg&fm=jpg",
      "is_product": false
    },
    {
      "position": 100,
      "thumbnail": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxI3vwMCRyWZdlv-yHs18fgZCayKkICSGz8A&usqp=CAU",
      "source": "remove.bg",
      "title": "Change Image Background – remove.bg",
      "link": "https://www.remove.bg/t/change-background",
      "original": "https://kaleidousercontent.com/removebg/designs/4621cf76-fb41-4177-bc33-f12a67816592/description_image/change-background-explainer.png",
      "is_product": false
    }
  ]
}
""";

  final statusCode = 200;
}

void main() {


  test('should return a list with BGimages', () {
    
  });


  if (DotEnv(includePlatformEnvironment: true).isDefined("ONLINE_TEST")) {
    return;
  }
  test(
    'show what comes from my custom search',
    () async {
      var api_key =
          DotEnv(includePlatformEnvironment: true)["IMAGE_SEARCH_API_KEY"];

      String url =
          "https://serpapi.com/search.json?q=background%20image&tbm=isch&ijn=0&highlight=images_results&api_key=$api_key";
    },
  );
}
