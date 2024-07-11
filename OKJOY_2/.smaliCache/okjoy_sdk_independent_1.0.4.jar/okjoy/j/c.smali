.class public Lokjoy/j/c;
.super Lokjoy/c/b;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

.field public c:Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/Button;

.field public g:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokjoy/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lokjoy/j/c;->e:Landroid/widget/Button;

    if-ne v0, p1, :cond_c

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_19

    :cond_c
    iget-object v0, p0, Lokjoy/j/c;->f:Landroid/widget/Button;

    if-ne v0, p1, :cond_19

    new-instance p1, Lokjoy/o/f;

    invoke-direct {p1}, Lokjoy/o/f;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lokjoy/c/b;->a(Landroid/app/Fragment;Z)V

    :cond_19
    :goto_19
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lokjoy/c/b;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "joy_fragment_pay_center_new_layout"

    invoke-static {p3, v0}, Lokjoy/a/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lokjoy/j/c;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "backButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/j/c;->e:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/j/c;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "helpButton"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lokjoy/j/c;->f:Landroid/widget/Button;

    iget-object p1, p0, Lokjoy/j/c;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "webView"

    invoke-static {p2, p3}, Lokjoy/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lokjoy/j/c;->g:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    sget-object p3, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object p1, p0, Lokjoy/j/c;->d:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .registers 14

    const-string v0, "utf-8"

    invoke-super {p0}, Lokjoy/c/b;->onStart()V

    iget-object v1, p0, Lokjoy/j/c;->e:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lokjoy/j/c;->f:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1
    new-instance v1, Lokjoy/u/a;

    iget-object v2, p0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lokjoy/u/a;-><init>(Landroid/content/Context;)V

    .line 2
    const-string v2, "\u52a0\u8f7d\u4e2d..."

    iput-object v2, v1, Lokjoy/u/a;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Lokjoy/u/a;->show()V

    iget-object v2, p0, Lokjoy/j/c;->b:Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/api/model/request/OkJoySdkPayModel;->getProductDesc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v2, p0, Lokjoy/j/c;->c:Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;

    iget-object v2, v2, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;

    invoke-virtual {v2}, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->getProductname()Ljava/lang/String;

    move-result-object v2

    :cond_31
    const-string v3, "PayApi.webPayViewNew"

    iget-object v4, p0, Lokjoy/j/c;->c:Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;

    iget-object v4, v4, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;

    invoke-virtual {v4}, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->getParam()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lokjoy/j/c;->c:Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;

    iget-object v5, v5, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;

    invoke-virtual {v5}, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->getPrice()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "v"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1.0.4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lokjoy/j/c;->c:Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;

    iget-object v7, v7, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel;->data:Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;

    invoke-virtual {v7}, Lcom/okjoy/okjoysdk/entity/response/OkJoyProductInfoResponseModel$OkJoyDataModel;->getProductname()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, "productDesc"

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "s"

    invoke-virtual {v8, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "param"

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "price"

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "clineVersion"

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "productName"

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const-string v10, ""

    :goto_95
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_95

    :cond_b9
    invoke-static {v10}, Lokjoy/q/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Formatter;

    invoke-direct {v9}, Ljava/util/Formatter;-><init>()V

    :try_start_c2
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_ca
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c2 .. :try_end_ca} :catch_cb

    goto :goto_cf

    :catch_cb
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_cf
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v0, v10

    const/4 v2, 0x1

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v4, v0, v2

    const/4 v2, 0x3

    aput-object v5, v0, v2

    const/4 v2, 0x4

    aput-object v6, v0, v2

    const/4 v2, 0x5

    aput-object v7, v0, v2

    const/4 v2, 0x6

    aput-object v8, v0, v2

    const-string v2, "https://phalapi.ok-joy.com/?productDesc=%s&s=%s&param=%s&price=%s&clineVersion=%s&productName=%s&sign=%s"

    invoke-virtual {v9, v2, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v9}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lokjoy/j/c;->g:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lokjoy/j/c;->g:Landroid/webkit/WebView;

    new-instance v2, Lokjoy/j/a;

    invoke-direct {v2, p0, v1}, Lokjoy/j/a;-><init>(Lokjoy/j/c;Lokjoy/u/a;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
