.class Lcom/sigmob/sdk/videoAd/h$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


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

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/sigmob/sdk/base/views/CreativeWebView;

.field final synthetic d:Lcom/sigmob/sdk/videoAd/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/h;Lcom/sigmob/sdk/videoAd/g;Landroid/content/Context;Lcom/sigmob/sdk/base/views/CreativeWebView;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$5;->d:Lcom/sigmob/sdk/videoAd/h;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/h$5;->a:Lcom/sigmob/sdk/videoAd/g;

    iput-object p3, p0, Lcom/sigmob/sdk/videoAd/h$5;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/sigmob/sdk/videoAd/h$5;->c:Lcom/sigmob/sdk/base/views/CreativeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 15

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$5;->d:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->P(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$5;->a:Lcom/sigmob/sdk/videoAd/g;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$5;->d:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/g;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$5;->d:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$5;->d:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4e

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h$5;->a:Lcom/sigmob/sdk/videoAd/g;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$5;->b:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Lcom/sigmob/sdk/base/a;->b:Lcom/sigmob/sdk/base/a;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$5;->d:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/h;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v6

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$5;->d:Lcom/sigmob/sdk/videoAd/h;

    iget-object v7, v0, Lcom/sigmob/sdk/videoAd/h;->g:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/sigmob/sdk/videoAd/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_7c

    :cond_4e
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$5;->c:Lcom/sigmob/sdk/base/views/CreativeWebView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$5;->d:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sigmob/sdk/base/common/l;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$5;->d:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$5;->d:Lcom/sigmob/sdk/videoAd/h;

    iget-object v6, v0, Lcom/sigmob/sdk/videoAd/h;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$5;->d:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->f(Lcom/sigmob/sdk/videoAd/h;)I

    move-result v7

    const-string v1, "companion"

    const-string v2, "click"

    const-string v4, "0"

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$5;->d:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->Q(Lcom/sigmob/sdk/videoAd/h;)V

    :goto_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadStart() called with: url = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], userAgent = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "], contentDisposition = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "], mimetype = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "], contentLength = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method
