var express=require("express");
var router=express.Router();
var query=require("./../../queries");
var con=require("./../../connection");
var url=require('url')

function checkLogin(session)
{
    if(session.user_id)
        return true;
    else
        return false;
}
function validateLogin(session,res)
{
    if(session.user_id)
        return true;
    else
    {
        res.send(`
            <script>
                alert("Need Login");
                window.location.assign("/login");
            </script>
        `);
    }
}

router.get("/",function(req,res)
{
    var sql=query.select("category");
    con.query(sql,function(err,result)
    {
        var sql=query.select("subcategory");
        con.query(sql,function(err,result1)
        {
            var sql=query.select("slider");
            con.query(sql,function(err,result2)
            {
                var sql="SELECT * FROM category,subcategory,product WHERE category.category_id=subcategory.cat_id AND subcategory.subcategory_id=product.sub_cat_id";
                con.query(sql,function(err,result3){
                    data={'navlist':result,'subcategory':result1,'slider_images':result2,'products':result3,'islogin':checkLogin(req.session)};
                    res.render("user/home.ejs",data);
                    
                })
            });
        });

     
    });
})

router.get("/view_product",function(req,res)
{
    var urlData=url.parse(req.url,true).query;
    var sql=query.select("category");
    con.query(sql,function(err,result)
    {
        var sql=query.select("subcategory");
        con.query(sql,function(err,result1)
        {
            var sql="SELECT * FROM category,subcategory,product WHERE category.category_id=subcategory.cat_id AND subcategory.subcategory_id=product.sub_cat_id AND product.product_id='"+urlData.product_id+"'";
            con.query(sql,function(err,result2)
            {
                con.query("SELECT * FROM cart WHERE user_id='"+req.session.user_id+"' AND product_id='"+urlData.product_id+"'",function(err,result3)
                { 
                    isincard = false;
                    if(result3.length>0)
                        isincard = true;

                    data={'navlist':result,'subcategory':result1,'product':result2[0],'islogin':checkLogin(req.session),'isincard':isincard};
                    res.render("user/view_product.ejs",data);
                })
            })
        })
    })
})

router.get("/product_list",function(req,res)
{
    var urlData=url.parse(req.url,true).query;
    var sql=query.select("category");
    con.query(sql,function(err,result)
    {
        var sql=query.select("subcategory");
        con.query(sql,function(err,result1)
        { 
            var sql="SELECT * FROM category,subcategory,product WHERE category.category_id=subcategory.cat_id AND subcategory.subcategory_id=product.sub_cat_id AND product.sub_cat_id='"+urlData.subcat_id+"'";
            con.query(sql,function(err,result2)
            {
                data={'navlist':result,'subcategory':result1,'products':result2,'islogin':checkLogin(req.session)};
                console.log(result2);
                res.render("user/product_list.ejs",data);
            });
        })
    })
});

router.get("/login",function(req,res){
    var sql=query.select("category");
    con.query(sql,function(err,result)
    {
        var sql=query.select("subcategory");
        con.query(sql,function(err,result1)
        { 
            data={'navlist':result,'subcategory':result1,'islogin':checkLogin(req.session)};
            res.render("user/login.ejs",data);
        });
    });
});

router.get("/create_account",function(req,res){
    var sql=query.select("category");
    con.query(sql,function(err,result)
    {
        var sql=query.select("subcategory");
        con.query(sql,function(err,result1)
        { 
            data={'navlist':result,'subcategory':result1,'islogin':checkLogin(req.session)};
            res.render("user/create_account.ejs",data);
        });
    });
})

router.post("/saveuser",function(req,res)
{
    var sql=query.insert("user_tbl",req.body);
    con.query(sql,function(err,result){      
        res.send(`
                <script>
                    alert("Account Created Successfully");
                    window.location.assign("/login");
                </script>
        `);
    })
});

router.post("/login_process",function(req,res)
{
    console.log(req.body)
    id=10;
    var sql=`SELECT * FROM user_tbl WHERE user_password='${req.body.user_password}' AND email_id='${req.body.user_email}'`;
    con.query(sql,function(err,result)
    {
        if(result.length>0)
        {
            console.log(result);
            req.session.user_id=result[0].user_tbl_id;
            res.send(`
                <script>
                    alert("Login Success");
                    window.location.assign("/");
                </script>
            `);
        }  
        else
        {
            res.send(`
                <script>
                    alert("Invalid Credentials");
                    window.location.assign("/login");
                </script>
            `);

        }
    })
});

router.get("/cart",function(req,res)
{
    validateLogin(req.session,res);
    var sql=query.select("category");
    con.query(sql,function(err,result)
    {
        var sql=query.select("subcategory");
        con.query(sql,function(err,result1)
        { 
            sql=`SELECT * FROM cart,product WHERE user_id='${req.session.user_id}' AND product.product_id=cart.product_id`;
            con.query(sql,function(err,result2)
            {
                data={
                        'navlist':result,
                        'subcategory':result1,
                        'islogin':checkLogin(req.session),
                        'cartdata':result2
                    };
                    res.render("user/cart.ejs",data);
            });
        });
    });
});


router.get("/add_to_cart",function(req,res)
{
    validateLogin(req.session,res);
    var urlData=url.parse(req.url,true).query;
    obj=
        {
            'product_id':urlData.product_id,
            'user_id':req.session.user_id,
            'qty': urlData.qty
        }
    var sql=query.insert("cart",obj);
    con.query(sql,function(err,result)
    {
        console.log(result);
        if(urlData.btn=='cart')
            res.redirect("/view_product?product_id="+urlData.product_id);
        else
            res.redirect("/checkout_order");
    });
});


router.post("/changeQtyByAjax",function(req,res)
{
    if(req.body.operation=='plus')
    {
        var sql="UPDATE cart SET qty=qty+1 WHERE cart_id='"+req.body.cart_id+"'";
        con.query(sql,function(err,result)
        {
           sql="SELECT * FROM cart WHERE cart_id='"+req.body.cart_id+"'";
           con.query(sql,function(err,result1)
            {
                ret={
                    qty:result1[0].qty,
                    'status':'success'
                };
                res.send(ret);
            });
        });
    }
    else
    {
        var sql="UPDATE cart SET qty=qty-1 WHERE cart_id='"+req.body.cart_id+"'";
        con.query(sql,function(err,result)
        {
           sql="SELECT * FROM cart WHERE cart_id='"+req.body.cart_id+"'";
           con.query(sql,function(err,result1)
            {
                if(result1[0].qty==0)
                {
                    var sql="DELETE FROM cart WHERE cart_id='"+req.body.cart_id+"'";
                    con.query(sql,function(err,result2)
                    {
                        ret={
                            qty:result1[0].qty,
                            'status':'deleted'
                        };
                        res.send(ret);
                    });
                }
                else
                {
                    ret={
                        qty:result1[0].qty,
                        'status':'success'
                    };
                    res.send(ret);
                }
            });
        });
    }

});

router.get("/checkout_order",function(req,res)
{
    var sql=query.select("category");
    con.query(sql,function(err,result)
    {
        var sql=query.select("subcategory");
        con.query(sql,function(err,result1)
        {
            sql=`SELECT * FROM cart,product WHERE user_id='${req.session.user_id}' AND product.product_id=cart.product_id`;
            con.query(sql,function(err,result2)
            {
                data={
                        'navlist':result,
                        'subcategory':result1,
                        'islogin':checkLogin(req.session),
                        'cartdata':result2
                    };
                res.render("user/checkout_order.ejs",data);
            });
        });
    });
});
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
router.post("/place_order",function(req,res)
{
    validateLogin(req.session,res);
    req.body.user_id=req.session.user_id;
    req.body.status='pending';
    req.body.order_date=getCDate();
    var sql=query.insert("order_tbl",req.body);
    con.query(sql,function(err,result)
    {
        order_id=result.insertId;
        sql=`SELECT * FROM cart,product WHERE user_id='${req.session.user_id}' AND product.product_id=cart.product_id`;
        con.query(sql,function(err,result1)
        {
            var sql="INSERT INTO order_product_details (order_id,product_id,user_id,qty,product_name,product_price,product_company,product_color,product_discription,product_image) VALUES "
            for(i=0;i<result1.length;i++)
            {
                order_product_details = {
                    'order_id':result.insertId,
                    'product_id':result1[i].product_id,
                    'user_id':req.body.user_id,
                    'qty':result1[i].qty,
                    'product_name':result1[i].product_name,
                    'product_price':result1[i].product_price,
                    'product_company':result1[i].product_company,
                    'product_color':result1[i].product_color,
                    'product_discription':result1[i].product_discription,
                    'product_image':result1[i].product_image,
                };
                sql+=`(`;
                objvalues=Object.values(order_product_details);
                for(j=0;j<objvalues.length;j++)
                {
                    if(j!=0)
                        sql+=`,'${objvalues[j]}'`;
                    else
                        sql+=`'${objvalues[j]}'`;
                }
                sql+=`),`;
            }
            sql=sql.slice(0,-1);
            con.query(sql,function(err,result){
                con.query('DELETE FROM cart WHERE user_id="'+req.body.user_id+'"',function(err,result5){
                    res.send(`
                    <script>
                        alert("Order Placed Successfully");
                        window.location.assign("/order_track?order_id=${order_id}");
                    </script>
                `);
                })
            })
        });

    })
    // res.send("Your Order Placed Successfully");
});

router.get("/order_track",function(req,res)
{
    var urlData=url.parse(req.url,true).query;
    var sql=`SELECT * FROM order_tbl WHERE order_tbl_id='${urlData.order_id}'`
    con.query(sql,function(err,result)
    {
        res.render("user/order_track.ejs",{'order_details':result[0]});
    })
});

module.exports=router;