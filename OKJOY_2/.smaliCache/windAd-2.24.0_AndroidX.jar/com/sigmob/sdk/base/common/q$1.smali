.class Lcom/sigmob/sdk/base/common/q$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/q;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/q;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/q;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/q$1;->a:Lcom/sigmob/sdk/base/common/q;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 5

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sigmobAd"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    const-string v5, "track"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    const-string v5, "active"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    :cond_2f
    const-string p1, "data"

    invoke-virtual {v2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "event"

    invoke-virtual {v2, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/q$1;->a:Lcom/sigmob/sdk/base/common/q;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/q;->a(Lcom/sigmob/sdk/base/common/q;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    new-instance v2, Lcom/sigmob/sdk/base/common/q$1$1;

    invoke-direct {v2, p0, v1}, Lcom/sigmob/sdk/base/common/q$1$1;-><init>(Lcom/sigmob/sdk/base/common/q$1;Ljava/lang/String;)V

    invoke-static {v4, p2, p1, v2}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    :cond_61
    return v0

    :cond_62
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_80

    const-string v2, "http"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    const-string v2, "https"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sigmob/sdk/common/f/j;->a(Landroid/content/Context;Landroid/net/Uri;)V

    return v0

    :cond_80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load Url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_99
    .catch Lcom/sigmob/sdk/common/c/b; {:try_start_1 .. :try_end_99} :catch_a0
    .catchall {:try_start_1 .. :try_end_99} :catchall_9a

    goto :goto_a8

    :catchall_9a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_a5

    :catch_a0
    move-exception p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/c/b;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_a5
    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_a8
    return v0
.end method
