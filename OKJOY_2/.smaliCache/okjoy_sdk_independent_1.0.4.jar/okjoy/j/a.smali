.class public Lokjoy/j/a;
.super Landroid/webkit/WebViewClient;
.source ""


# instance fields
.field public final synthetic a:Lokjoy/u/a;

.field public final synthetic b:Lokjoy/j/c;


# direct methods
.method public constructor <init>(Lokjoy/j/c;Lokjoy/u/a;)V
    .registers 3

    iput-object p1, p0, Lokjoy/j/a;->b:Lokjoy/j/c;

    iput-object p2, p0, Lokjoy/j/a;->a:Lokjoy/u/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lokjoy/j/a;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lokjoy/j/a;->a:Lokjoy/u/a;

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

    iget-object p1, p0, Lokjoy/j/a;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lokjoy/j/a;->a:Lokjoy/u/a;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_10
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lokjoy/j/a;->b:Lokjoy/j/c;

    iget-object p2, p2, Lokjoy/c/b;->a:Landroid/app/Activity;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    invoke-static {p1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 19

    move-object/from16 v0, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    const-string v1, "okgamepay:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b5

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_b2

    aget-object v8, v0, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u652f\u4ed8\u65b9\u5f0f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    move-object/from16 v1, p0

    iget-object v0, v1, Lokjoy/j/a;->b:Lokjoy/j/c;

    if-eqz v0, :cond_b0

    .line 1
    new-instance v2, Lokjoy/u/a;

    iget-object v4, v0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {v2, v4}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 2
    const-string v4, "\u4e0b\u5355\u4e2d..."

    iput-object v4, v2, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Lokjoy/u/a;->show()V

    iget-object v4, v0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object v4

    iget-object v5, v0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object v6

    iget-object v4, v0, Lokjoy/j/c;->c:Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;

    iget-object v4, v4, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->getProductid()Ljava/lang/String;

    move-result-object v7

    iget-object v4, v0, Lokjoy/j/c;->b:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getOrderId()Ljava/lang/String;

    move-result-object v9

    iget-object v4, v0, Lokjoy/j/c;->b:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getRoleId()Ljava/lang/String;

    move-result-object v10

    iget-object v4, v0, Lokjoy/j/c;->b:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getRoleName()Ljava/lang/String;

    move-result-object v11

    iget-object v4, v0, Lokjoy/j/c;->b:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getServerId()Ljava/lang/String;

    move-result-object v12

    iget-object v4, v0, Lokjoy/j/c;->b:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getServerName()Ljava/lang/String;

    move-result-object v13

    iget-object v4, v0, Lokjoy/j/c;->b:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getRoleLevel()Ljava/lang/String;

    move-result-object v14

    iget-object v4, v0, Lokjoy/j/c;->b:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getExtraInfo()Ljava/lang/String;

    move-result-object v15

    new-instance v4, Lokjoy/j/b;

    invoke-direct {v4, v0, v2}, Lokjoy/j/b;-><init>(Lokjoy/j/c;Lokjoy/u/a;)V

    .line 4
    new-instance v0, Lokjoy/h/l0;

    move-object v2, v4

    move-object v4, v0

    invoke-direct/range {v4 .. v15}, Lokjoy/h/l0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/entity/request/OkJoyBaseRequestData;->getRequestParams()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lokjoy/h/m0;

    invoke-direct {v4, v2}, Lokjoy/h/m0;-><init>(Lokjoy/h/c;)V

    const-string v2, "https://sdk.ok-joy.com/common/?ct=pay&ac=order"

    invoke-static {v2, v0, v4}, Lokjoy/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lokjoy/h/b;)V

    goto :goto_b4

    :cond_b0
    const/4 v0, 0x0

    .line 5
    throw v0

    .line 0
    :cond_b2
    move-object/from16 v1, p0

    .line 5
    :goto_b4
    return v3

    .line 6
    :cond_b5
    move-object/from16 v1, p0

    invoke-super/range {p0 .. p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
