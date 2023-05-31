.class Lcom/sigmob/sdk/videoAd/k$5;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k;->a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/base/views/CreativeWebView;
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/g;

.field final synthetic b:Lcom/sigmob/sdk/videoAd/k;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k;Lcom/sigmob/sdk/videoAd/g;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/k$5;->a:Lcom/sigmob/sdk/videoAd/g;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, "onPageFinished: "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    const-string v1, "done"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string v0, "onPageStarted: "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 12

    const/4 v8, 0x1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/k;->K(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_27
    :goto_27
    return v8

    :cond_28
    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/sigmob/sdk/base/common/p;->a:Lcom/sigmob/sdk/base/common/p;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/p;->a()I

    move-result v3

    if-eq v2, v3, :cond_6a

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v2

    iget-object v2, v2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/sigmob/sdk/base/common/q;->f:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v3

    if-ne v2, v3, :cond_175

    :cond_6a
    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/k;->J(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->getVisibility()I

    move-result v2

    if-nez v2, :cond_108

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_108

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sigmobAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e3

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "download"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->a:Lcom/sigmob/sdk/videoAd/g;

    sget-object v3, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/k;->m()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    iget-object v5, v2, Lcom/sigmob/sdk/videoAd/k;->h:Ljava/lang/String;

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d4} :catch_d6

    goto/16 :goto_27

    :catch_d6
    move-exception v0

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->c_()V

    const-string v0, "webview"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto/16 :goto_27

    :cond_e3
    :try_start_e3
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->a:Lcom/sigmob/sdk/videoAd/g;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f4

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->a:Lcom/sigmob/sdk/videoAd/g;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/videoAd/g;->b(Ljava/lang/String;)V

    :cond_f4
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->a:Lcom/sigmob/sdk/videoAd/g;

    const/4 v2, 0x0

    sget-object v3, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v4}, Lcom/sigmob/sdk/videoAd/k;->m()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    iget-object v5, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    iget-object v5, v5, Lcom/sigmob/sdk/videoAd/k;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto/16 :goto_27

    :cond_108
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12a

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_12a
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->M(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-eqz v0, :cond_170

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->a:Lcom/sigmob/sdk/videoAd/g;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->a:Lcom/sigmob/sdk/videoAd/g;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/common/b/b;->r:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v3}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v4}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    iget-object v6, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    iget-object v7, v6, Lcom/sigmob/sdk/videoAd/k;->h:Ljava/lang/String;

    move-object v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->L(Lcom/sigmob/sdk/videoAd/k;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->f(Lcom/sigmob/sdk/videoAd/k;Z)Z

    :cond_170
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_27

    :cond_175
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/common/p;->b:Lcom/sigmob/sdk/base/common/p;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/p;->a()I

    move-result v1

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$5;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_19c
    .catch Ljava/lang/Throwable; {:try_start_e3 .. :try_end_19c} :catch_d6

    move-result v0

    if-eqz v0, :cond_27

    goto/16 :goto_27
.end method
