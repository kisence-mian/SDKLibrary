.class Lcom/sigmob/sdk/videoAd/h$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/h;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$9;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$9;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/h;->b(Lcom/sigmob/sdk/videoAd/h;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache_video_Success() called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$9;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/h;->i(Lcom/sigmob/sdk/videoAd/h;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$9;->a:Lcom/sigmob/sdk/videoAd/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/h;->h(Lcom/sigmob/sdk/videoAd/h;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$9;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$9;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->l(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->pause()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$9;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->u(Lcom/sigmob/sdk/videoAd/h;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$9;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->l(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/h$9;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$9;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/h;->S(Lcom/sigmob/sdk/videoAd/h;)V
    :try_end_5f
    .catchall {:try_start_0 .. :try_end_5f} :catchall_60

    goto :goto_66

    :catchall_60
    move-exception v0

    const-string v1, "cache_video_ready error"

    invoke-static {v1, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_66
    return-void
.end method
