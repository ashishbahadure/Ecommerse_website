var express=require("express");
var router=express.Router();
var query=require("./../../queries");
var con=require("./../../connection");
var url=require('url')

router.get("/",function(req,res){
    res.render("admin/home.ejs");
})
router.get("/category",function(req,res)
{
    var sql=query.select("category");
    con.query(sql,function(err,result)
    {
        data={'categoryList':result};
        res.render("admin/category.ejs",data);
    })
});
router.get("/subcategory",function(req,res)
{
    var sql=query.select("category");
    con.query(sql,function(err,catlist)
    {
        var sql="SELECT * FROM category,subcategory WHERE category.category_id=subcategory.cat_id";
        con.query(sql,function(err1,subcatlist){
            var data={'catlist':catlist,'subcatlist':subcatlist};
            res.render("admin/subcategory.ejs",data);
        })
    });
});
router.post("/savecategory",function(req,res)
{
    // var sql=query.create("category",req.body);
    var sql=query.insert("category",req.body);
    con.query(sql,function(err,result)
    {
        res.redirect("/admin/category");
    });
});
router.post("/savesubcategory",function(req,res){
    //    var sql=query.create("subcategory",req.body);
       var sql=query.insert("subcategory",req.body);
       con.query(sql,function(err,result)
       {
           res.redirect("/admin/subcategory");
       });
})
router.get("/slider",function(req,res)
{
    var sql=query.select("slider");
    con.query(sql,function(err,images)
    {
        data={'slider_images':images}
        res.render("admin/slider.ejs",data);
    })
})
router.post("/saveslider",function(req,res)
{
    console.log(req.body);
    console.log(req.files);
    var slider_img=req.files.slider_image;
    var img_name=new Date().getTime()+slider_img.name;
    slider_img.mv("public/uploads/"+img_name,function(err){ console.log(err); });
    req.body.slider_image=img_name;
     
    // var sql=query.create("slider",req.body);
     var sql=query.insert("slider",req.body);
     con.query(sql,function(err,result)
     {
        // res.send("Data Received - "+sql);
         res.redirect("/admin/slider");
     });
    
});

router.get("/product",function(req,res)
{
    var sql=query.select("category");
    con.query(sql,function(err,catlist)
    {
        data={'catlist':catlist};
        res.render("admin/product.ejs",data);
    });
})

router.post("/getSubcategory_by_ajax",function(req,res)
{
    var sql="SELECT * FROM subcategory WHERE cat_id='"+req.body.cat_id+"'";
    con.query(sql,function(err,catlist)
    {
        res.send(catlist);
    });
})

router.post("/save_product",function(req,res)
{

    var product_image=req.files.product_image;
    var img_name=new Date().getTime()+product_image.name;
    product_image.mv("public/uploads/"+img_name,function(err){});
    req.body.product_image=img_name;

    // sql=query.create("product",req.body);
    sql=query.insert("product",req.body);
    con.query(sql,function(err,result){
        console.log(req.body);
        res.send(`<script>
                    alert('Product Added');
                    location.assign('/admin/product');
        </script>`);
    });
});


router.get("/product_list",function(req,res)
{
    var sql="SELECT * FROM category,subcategory,product WHERE category.category_id=subcategory.cat_id AND subcategory.subcategory_id=product.sub_cat_id";
    con.query(sql,function(err,result){
        res.render("admin/product_list.ejs",{'products':result});
    })
})

router.get("/pending_orders",function(req,res)
{
    var sql="SELECT * FROM order_tbl,user_tbl WHERE status='pending' AND order_tbl.user_id=user_tbl.user_tbl_id";
    con.query(sql,function(err,result)
    {
        res.render("admin/pending_orders.ejs",{'orders':result});
    })
})
router.get("/processing_orders",function(req,res)
{
    var sql="SELECT * FROM order_tbl,user_tbl WHERE status='processing' AND order_tbl.user_id=user_tbl.user_tbl_id";
    con.query(sql,function(err,result)
    {
        res.render("admin/processing_orders.ejs",{'orders':result});
    })
})

function getCDate()
{
    today=new Date();
    m=today.getMonth()+1;
    if(m<10)
    {
        m="0"+m;
    }
    return today.getFullYear()+'-'+m+'-'+today.getDate();
}
router.get("/send_to_processing",function(req,res)
{
    urlData=url.parse(req.url,true).query;
    sql=`UPDATE order_tbl SET processing_date='${getCDate()}',status='processing' WHERE order_tbl_id='${urlData.id}'`
    con.query(sql,function(err,result){
        // res.redirect();
        res.send("Order Sended In Processing<br>"+sql);
    })
});
router.get("/send_to_dispatch",function(req,res)
{
    urlData=url.parse(req.url,true).query;
    sql=`UPDATE order_tbl SET dispatch_date='${getCDate()}',status='dispatch' WHERE order_tbl_id='${urlData.id}'`
    con.query(sql,function(err,result){
        // res.redirect();
        res.send("Order Sended In dispatch<br>"+sql);
    })
});

module.exports=router;