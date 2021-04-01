.class Lcom/sigmob/sdk/videoAd/k$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Lcom/sigmob/sdk/videoAd/k;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$8;->b:Lcom/sigmob/sdk/videoAd/k;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/k$8;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$8;->b:Lcom/sigmob/sdk/videoAd/k;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$8;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache_video_Success() called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$8;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/k;->h(Lcom/sigmob/sdk/videoAd/k;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$8;->b:Lcom/sigmob/sdk/videoAd/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->g(Lcom/sigmob/sdk/videoAd/k;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$8;->b:Lcom/sigmob/sdk/videoAd/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$8;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->k(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->pause()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$8;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->u(Lcom/sigmob/sdk/videoAd/k;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$8;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->k(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$8;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$8;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->N(Lcom/sigmob/sdk/videoAd/k;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_55} :catch_56

    :goto_55
    return-void

    :catch_56
    move-exception v0

    const-string v1, "cache_video_ready error"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55
.end method
