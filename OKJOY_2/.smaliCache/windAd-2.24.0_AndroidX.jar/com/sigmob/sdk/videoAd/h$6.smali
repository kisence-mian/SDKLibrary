.class Lcom/sigmob/sdk/videoAd/h$6;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/h;->a(Landroid/content/Context;Lcom/sigmob/sdk/videoAd/g;)Lcom/sigmob/sdk/base/views/CreativeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/g;

.field final synthetic b:Lcom/sigmob/sdk/videoAd/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/h;Lcom/sigmob/sdk/videoAd/g;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/h$6;->a:Lcom/sigmob/sdk/videoAd/g;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string p1, "onPageFinished: "

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    const-string p2, "done"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/videoAd/h;->b(Lcom/sigmob/sdk/videoAd/h;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string p1, "onPageStarted: "

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, "http://localhost"

    invoke-virtual {p4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    const-string p2, "error"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/videoAd/h;->b(Lcom/sigmob/sdk/videoAd/h;Ljava/lang/String;)Ljava/lang/String;

    :cond_12
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p1, p3, :cond_26

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_26

    const-string p2, "localhost"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    const-string p2, "error"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/videoAd/h;->b(Lcom/sigmob/sdk/videoAd/h;Ljava/lang/String;)Ljava/lang/String;

    :cond_26
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 16

    const-string v0, "sigmobAd"

    const/4 v1, 0x1

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_78

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_78

    const-string v6, "track"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    const-string v6, "active"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    :cond_46
    const-string p1, "data"

    invoke-virtual {v2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "event"

    invoke-virtual {v2, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    new-instance v0, Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v2, "utf-8"

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    new-instance v2, Lcom/sigmob/sdk/videoAd/h$6$1;

    invoke-direct {v2, p0, v0}, Lcom/sigmob/sdk/videoAd/h$6$1;-><init>(Lcom/sigmob/sdk/videoAd/h$6;Ljava/lang/String;)V

    invoke-static {v3, p2, p1, v2}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    :cond_77
    return v1

    :cond_78
    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v3}, Lcom/sigmob/sdk/videoAd/h;->O(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result v3

    if-eqz v3, :cond_81

    return v1

    :cond_81
    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v3}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v3

    iget-object v3, v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->disable_auto_deeplink:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_205

    const-string v6, "http"

    if-eqz v3, :cond_ab

    :try_start_95
    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v3}, Lcom/sigmob/sdk/videoAd/h;->P(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result v3

    if-nez v3, :cond_ab

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_aa

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_aa

    return v5

    :cond_aa
    return v1

    :cond_ab
    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v3}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v3

    iget-object v3, v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v7, Lcom/sigmob/sdk/base/common/i;->a:Lcom/sigmob/sdk/base/common/i;

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/common/i;->a()I

    move-result v7

    if-eq v3, v7, :cond_116

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v3}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v3

    iget-object v3, v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_116

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v3}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v3

    iget-object v3, v3, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v7, Lcom/sigmob/sdk/base/common/j;->f:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v7

    if-ne v3, v7, :cond_ee

    goto :goto_116

    :cond_ee
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/sigmob/sdk/base/common/i;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/i;->a()I

    move-result p2

    if-ne p1, p2, :cond_210

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    return v1

    :cond_116
    :goto_116
    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v3}, Lcom/sigmob/sdk/videoAd/h;->N(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->getVisibility()I

    move-result v3
    :try_end_120
    .catchall {:try_start_95 .. :try_end_120} :catchall_205

    const-string v7, "https"

    if-nez v3, :cond_1ac

    :try_start_124
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1ac

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ac

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ac

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_188

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_188

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_188

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object p1

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_188

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$6;->a:Lcom/sigmob/sdk/videoAd/g;

    sget-object v6, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/h;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v7

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    iget-object v8, p1, Lcom/sigmob/sdk/videoAd/h;->g:Ljava/lang/String;

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto/16 :goto_210

    :cond_188
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6;->a:Lcom/sigmob/sdk/videoAd/g;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_199

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6;->a:Lcom/sigmob/sdk/videoAd/g;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/videoAd/g;->a(Ljava/lang/String;)V

    :cond_199
    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$6;->a:Lcom/sigmob/sdk/videoAd/g;

    const/4 v5, 0x0

    sget-object v6, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/h;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v7

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    iget-object v8, p1, Lcom/sigmob/sdk/videoAd/h;->g:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_210

    :cond_1ac
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_210

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ca

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_210

    :cond_1ca
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->R(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result v0

    if-eqz v0, :cond_201

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$6;->a:Lcom/sigmob/sdk/videoAd/g;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-string v6, "endcard"

    const-string v7, "click"

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v8

    const-string v9, "0"

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    iget-object v11, v0, Lcom/sigmob/sdk/videoAd/h;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result v12

    move-object v10, p2

    invoke-static/range {v6 .. v12}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->Q(Lcom/sigmob/sdk/videoAd/h;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0, v5}, Lcom/sigmob/sdk/videoAd/h;->g(Lcom/sigmob/sdk/videoAd/h;Z)Z

    :cond_201
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_204
    .catchall {:try_start_124 .. :try_end_204} :catchall_205

    goto :goto_210

    :catchall_205
    move-exception p1

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/h;->c_()V

    const-string p1, "webview"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_210
    :goto_210
    return v1
.end method
