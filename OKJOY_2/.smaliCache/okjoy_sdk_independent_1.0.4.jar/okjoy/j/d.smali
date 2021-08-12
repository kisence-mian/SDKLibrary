.class public Lokjoy/j/d;
.super Landroid/webkit/WebViewClient;
.source ""


# instance fields
.field public final synthetic a:Lokjoy/u/a;

.field public final synthetic b:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

.field public final synthetic c:Lokjoy/j/e;


# direct methods
.method public constructor <init>(Lokjoy/j/e;Lokjoy/u/a;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
    .registers 4

    iput-object p1, p0, Lokjoy/j/d;->c:Lokjoy/j/e;

    iput-object p2, p0, Lokjoy/j/d;->a:Lokjoy/u/a;

    iput-object p3, p0, Lokjoy/j/d;->b:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/j/d;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lokjoy/j/d;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_10
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object p1, p0, Lokjoy/j/d;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lokjoy/j/d;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_10
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object p2, p2, Lokjoy/c/b;->a:Landroid/app/Activity;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lokjoy/j/d;->c:Lokjoy/j/e;

    .line 1
    iput-object p1, p2, Lokjoy/j/e;->h:Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Lokjoy/j/e;->b()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "\u65e0\u6cd5\u8c03\u8d77\u652f\u4ed8\u754c\u9762\uff0c\u4e0d\u4fdd\u5b58\u8ba2\u5355\u4fe1\u606f"

    const-string v4, "order_verify_record"

    const-string v5, "duration"

    const-string v6, "payType"

    const-string v7, "price"

    const-string v8, "productName"

    const-string v9, "productId"

    const-string v10, "gameOrderId"

    const-string v11, "sdkOrderId"

    const-string v12, "userId"

    const-string v13, "\u8c03\u8d77\u652f\u4ed8\u754c\u9762\uff0c\u4fdd\u5b58\u8ba2\u5355\u4fe1\u606f"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "url == "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, v1, Lokjoy/j/d;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, v1, Lokjoy/j/d;->a:Lokjoy/u/a;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_3d
    const-string v14, "weixin://"

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v15, "alipays://"

    move-object/from16 v16, v3

    const/4 v3, 0x1

    if-nez v0, :cond_c4

    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_c4

    :cond_51
    const-string v0, "okgamepayover:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "success"

    const-string v6, ""

    if-eqz v4, :cond_91

    iget-object v4, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v4, v4, Lokjoy/j/e;->b:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    iget-object v4, v4, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->getPaytype()Ljava/lang/String;

    move-result-object v4

    const-string v7, "wxpay"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    invoke-static {v0, v3}, Lokjoy/j/e;->a(Lokjoy/j/e;Z)Z

    goto :goto_8b

    :cond_7f
    iget-object v0, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lokjoy/j/e;->a(Lokjoy/j/e;Z)Z

    iget-object v0, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    .line 1
    const-string v2, "\u8c03\u8d77\u5fae\u4fe1\u652f\u4ed8\u5931\u8d25"

    iput-object v2, v0, Lokjoy/j/e;->h:Ljava/lang/String;

    .line 2
    :goto_8b
    iget-object v0, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    .line 3
    invoke-virtual {v0}, Lokjoy/j/e;->b()V

    return v3

    :cond_91
    nop

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bf

    iget-object v4, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v4, v4, Lokjoy/j/e;->b:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    iget-object v4, v4, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->getPaytype()Ljava/lang/String;

    move-result-object v4

    const-string v7, "alipay"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bf

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-object v0, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    invoke-static {v0, v3}, Lokjoy/j/e;->a(Lokjoy/j/e;Z)Z

    :cond_b9
    iget-object v0, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    .line 5
    invoke-virtual {v0}, Lokjoy/j/e;->b()V

    return v3

    .line 6
    :cond_bf
    invoke-super/range {p0 .. p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_c4
    :goto_c4
    iget-object v0, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    invoke-static {v0, v3}, Lokjoy/j/e;->a(Lokjoy/j/e;Z)Z

    :try_start_c9
    iget-object v0, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lokjoy/j/e;->a(Lokjoy/j/e;Z)Z

    new-instance v0, Landroid/content/Intent;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d1} :catch_184
    .catchall {:try_start_c9 .. :try_end_d1} :catchall_17d

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v17, v15

    :try_start_d5
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v0, v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    invoke-virtual {v3, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_e1} :catch_17a
    .catchall {:try_start_d5 .. :try_end_e1} :catchall_17d

    iget-object v0, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    .line 7
    iget-boolean v0, v0, Lokjoy/j/e;->g:Z

    if-eqz v0, :cond_24e

    .line 8
    invoke-static {v13}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, v1, Lokjoy/j/d;->b:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v2, v2, Lokjoy/j/e;->b:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    iget-object v2, v2, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->getCno()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v3, v3, Lokjoy/j/e;->c:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v3}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v3

    iget-object v13, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v13, v13, Lokjoy/j/e;->c:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v13}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v14, v14, Lokjoy/j/e;->c:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v14}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v15, v15, Lokjoy/j/e;->b:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    iget-object v15, v15, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;

    invoke-virtual {v15}, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->getPrice()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    move-object/from16 v18, v4

    iget-object v4, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v4, v4, Lokjoy/j/e;->b:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    iget-object v4, v4, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->getPaytype()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v5

    iget-object v5, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v5, v5, Lokjoy/c/b;->a:Landroid/app/Activity;

    .line 9
    invoke-static {v5}, Lokjoy/f/b;->a(Landroid/content/Context;)Lokjoy/f/b;

    move-result-object v5

    .line 10
    iget-object v5, v5, Lokjoy/f/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_13b
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, v19

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v4, v18

    const/4 v2, 0x0

    invoke-virtual {v5, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_16c} :catch_170
    .catchall {:try_start_13b .. :try_end_16c} :catchall_16e

    goto/16 :goto_244

    :catchall_16e
    move-exception v0

    goto :goto_176

    :catch_170
    move-exception v0

    :try_start_171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_174
    .catchall {:try_start_171 .. :try_end_174} :catchall_16e

    goto/16 :goto_244

    :goto_176
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 13
    :catch_17a
    move-exception v0

    move-object v3, v5

    goto :goto_188

    :catchall_17d
    move-exception v0

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v2, v5

    goto/16 :goto_25e

    :catch_184
    move-exception v0

    move-object v3, v5

    move-object/from16 v17, v15

    .line 14
    :goto_188
    move-object/from16 v1, p0

    :try_start_18a
    iget-object v5, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    const/4 v15, 0x0

    invoke-static {v5, v15}, Lokjoy/j/e;->a(Lokjoy/j/e;Z)Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_19b
    .catchall {:try_start_18a .. :try_end_19b} :catchall_25b

    if-eqz v5, :cond_1a0

    const-string v0, "\u672a\u5b89\u88c5\u5fae\u4fe1"

    goto :goto_1aa

    :cond_1a0
    move-object/from16 v5, v17

    :try_start_1a2
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_1a6
    .catchall {:try_start_1a2 .. :try_end_1a6} :catchall_25b

    if-eqz v2, :cond_1aa

    const-string v0, "\u672a\u5b89\u88c5\u652f\u4ed8\u5b9d"

    :cond_1aa
    :goto_1aa
    :try_start_1aa
    iget-object v2, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    .line 15
    iput-object v0, v2, Lokjoy/j/e;->h:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V
    :try_end_1b1
    .catchall {:try_start_1aa .. :try_end_1b1} :catchall_25b

    iget-object v0, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    .line 17
    iget-boolean v0, v0, Lokjoy/j/e;->g:Z

    if-eqz v0, :cond_24e

    .line 18
    invoke-static {v13}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, v1, Lokjoy/j/d;->b:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v2, v2, Lokjoy/j/e;->b:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    iget-object v2, v2, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->getCno()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v5, v5, Lokjoy/j/e;->c:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v5}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v5

    iget-object v13, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v13, v13, Lokjoy/j/e;->c:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v13}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v14, v14, Lokjoy/j/e;->c:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v14}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v15, v15, Lokjoy/j/e;->b:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    iget-object v15, v15, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;

    invoke-virtual {v15}, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->getPrice()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    move-object/from16 v18, v4

    iget-object v4, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v4, v4, Lokjoy/j/e;->b:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    iget-object v4, v4, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->getPaytype()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v3

    iget-object v3, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v3, v3, Lokjoy/c/b;->a:Landroid/app/Activity;

    .line 19
    invoke-static {v3}, Lokjoy/f/b;->a(Landroid/content/Context;)Lokjoy/f/b;

    move-result-object v3

    .line 20
    iget-object v3, v3, Lokjoy/f/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_20b
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v19

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v4, v18

    const/4 v2, 0x0

    invoke-virtual {v3, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23c
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_23c} :catch_23f
    .catchall {:try_start_20b .. :try_end_23c} :catchall_23d

    goto :goto_243

    :catchall_23d
    move-exception v0

    goto :goto_24a

    :catch_23f
    move-exception v0

    :try_start_240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_243
    .catchall {:try_start_240 .. :try_end_243} :catchall_23d

    .line 11
    :goto_243
    move-object v5, v3

    :goto_244
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object/from16 v1, p0

    goto :goto_259

    .line 21
    :goto_24a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 11
    :cond_24e
    nop

    .line 12
    invoke-static/range {v16 .. v16}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    move-object/from16 v1, p0

    iget-object v0, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    .line 13
    invoke-virtual {v0}, Lokjoy/j/e;->b()V

    .line 21
    :goto_259
    const/4 v2, 0x1

    return v2

    .line 13
    :catchall_25b
    move-exception v0

    move-object v2, v3

    move-object v3, v0

    .line 22
    :goto_25e
    iget-object v0, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    .line 23
    iget-boolean v0, v0, Lokjoy/j/e;->g:Z

    if-eqz v0, :cond_2fc

    .line 24
    invoke-static {v13}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v0, v1, Lokjoy/j/d;->b:Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v5, v5, Lokjoy/j/e;->b:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    iget-object v5, v5, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;

    invoke-virtual {v5}, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->getCno()Ljava/lang/String;

    move-result-object v5

    iget-object v13, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v13, v13, Lokjoy/j/e;->c:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v13}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v14, v14, Lokjoy/j/e;->c:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v14}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductId()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v15, v15, Lokjoy/j/e;->c:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v15}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 p2, v3

    iget-object v3, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v3, v3, Lokjoy/j/e;->b:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    iget-object v3, v3, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;

    invoke-virtual {v3}, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    move-object/from16 v18, v4

    iget-object v4, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v4, v4, Lokjoy/j/e;->b:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;

    iget-object v4, v4, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/entity/response/OkJoyPayOrderResponseModel$OkJoyDataModel;->getPaytype()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v2

    iget-object v2, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    iget-object v2, v2, Lokjoy/c/b;->a:Landroid/app/Activity;

    .line 25
    invoke-static {v2}, Lokjoy/f/b;->a(Landroid/content/Context;)Lokjoy/f/b;

    move-result-object v2

    .line 26
    iget-object v2, v2, Lokjoy/f/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_2ba
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, v19

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v3, v18

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2eb
    .catch Ljava/lang/Exception; {:try_start_2ba .. :try_end_2eb} :catch_2ee
    .catchall {:try_start_2ba .. :try_end_2eb} :catchall_2ec

    goto :goto_2f2

    :catchall_2ec
    move-exception v0

    goto :goto_2f8

    :catch_2ee
    move-exception v0

    :try_start_2ef
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f2
    .catchall {:try_start_2ef .. :try_end_2f2} :catchall_2ec

    :goto_2f2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object/from16 v1, p0

    goto :goto_308

    :goto_2f8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_2fc
    move-object/from16 p2, v3

    .line 28
    invoke-static/range {v16 .. v16}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    move-object/from16 v1, p0

    iget-object v0, v1, Lokjoy/j/d;->c:Lokjoy/j/e;

    .line 29
    invoke-virtual {v0}, Lokjoy/j/e;->b()V

    .line 30
    :goto_308
    throw p2
.end method
