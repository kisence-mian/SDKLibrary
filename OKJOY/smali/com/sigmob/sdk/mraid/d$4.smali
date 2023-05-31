.class Lcom/sigmob/sdk/mraid/d$4;
.super Lcom/sigmob/sdk/mraid/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/d;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/d;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/d$4;->a:Lcom/sigmob/sdk/mraid/d;

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/z;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d$4;->a:Lcom/sigmob/sdk/mraid/d;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->d(Lcom/sigmob/sdk/mraid/d;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/mraid/z;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d$4;->a:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/mraid/d;->a(Landroid/webkit/RenderProcessGoneDetail;)V

    const/4 v0, 0x1

    return v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d$4;->a:Lcom/sigmob/sdk/mraid/d;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->c(Lcom/sigmob/sdk/mraid/d;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d$4;->a:Lcom/sigmob/sdk/mraid/d;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->c(Lcom/sigmob/sdk/mraid/d;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isVideoExist()Z

    move-result v0

    if-eqz v0, :cond_39

    :try_start_1c
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d$4;->a:Lcom/sigmob/sdk/mraid/d;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->c(Lcom/sigmob/sdk/mraid/d;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v2, "video/mp4"

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_34} :catch_35

    :goto_34
    return-object v0

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_39
    invoke-super {p0, p1, p2}, Lcom/sigmob/sdk/mraid/z;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_34
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d$4;->a:Lcom/sigmob/sdk/mraid/d;

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/mraid/d;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
