.class final Lcom/sigmob/sdk/mraid/x$1;
.super Lcom/sigmob/sdk/mraid/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/mraid/p;Lcom/sigmob/sdk/base/common/s;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/views/BaseWebView;Ljava/lang/Long;Lcom/sigmob/sdk/mraid/h;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/s;

.field final synthetic b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic c:Lcom/sigmob/sdk/mraid/h;

.field final synthetic d:Lcom/sigmob/sdk/base/views/BaseWebView;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/s;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/mraid/h;Lcom/sigmob/sdk/base/views/BaseWebView;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/x$1;->a:Lcom/sigmob/sdk/base/common/s;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid/x$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid/x$1;->c:Lcom/sigmob/sdk/mraid/h;

    iput-object p4, p0, Lcom/sigmob/sdk/mraid/x$1;->d:Lcom/sigmob/sdk/base/views/BaseWebView;

    invoke-direct {p0}, Lcom/sigmob/sdk/mraid/z;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    const-string v0, "mraid load success"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$1;->c:Lcom/sigmob/sdk/mraid/h;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$1;->d:Lcom/sigmob/sdk/base/views/BaseWebView;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/base/views/BaseWebView;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/mraid/z;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid load faild"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->VIDEO_CACHE_ERROR:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$1;->a:Lcom/sigmob/sdk/base/common/s;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/models/SigmobError;->MRAID_LOAD_ERROR:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$1;->a:Lcom/sigmob/sdk/base/common/s;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$1;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/models/SigmobError;->MRAID_LOAD_ERROR:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
