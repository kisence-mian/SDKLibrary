.class Lcom/sigmob/sdk/splash/i;
.super Lcom/sigmob/sdk/splash/e;


# instance fields
.field private final c:Lcom/sigmob/sdk/base/views/AdVideoPlayer;

.field private final d:Lcom/sigmob/sdk/base/models/BaseAdUnit;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 6

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/e;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/sigmob/sdk/base/views/AdVideoPlayer;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sigmob/sdk/base/views/AdVideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/i;->c:Lcom/sigmob/sdk/base/views/AdVideoPlayer;

    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/splash/i;->setBackgroundColor(I)V

    iput-object p2, p0, Lcom/sigmob/sdk/splash/i;->d:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->c:Lcom/sigmob/sdk/base/views/AdVideoPlayer;

    invoke-virtual {p0, v1, v0}, Lcom/sigmob/sdk/splash/i;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/sigmob/sdk/splash/e;->setVisibility(I)V

    const-string v0, "video showAd"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->c:Lcom/sigmob/sdk/base/views/AdVideoPlayer;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->c:Lcom/sigmob/sdk/base/views/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->b()V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 5

    const/4 v2, 0x0

    const-string v0, "video start"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->c:Lcom/sigmob/sdk/base/views/AdVideoPlayer;

    invoke-virtual {v1, v2, v2}, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->a(II)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->c:Lcom/sigmob/sdk/base/views/AdVideoPlayer;

    new-instance v2, Lcom/sigmob/sdk/splash/i$1;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/splash/i$1;-><init>(Lcom/sigmob/sdk/splash/i;)V

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i;->c:Lcom/sigmob/sdk/base/views/AdVideoPlayer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->setVideoPath(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setVisibility(I)V
    .registers 5

    const/16 v0, 0x8

    if-ne p1, v0, :cond_15

    :try_start_4
    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->c:Lcom/sigmob/sdk/base/views/AdVideoPlayer;

    if-eqz v0, :cond_15

    const-string v0, "video GONE"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i;->c:Lcom/sigmob/sdk/base/views/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/AdVideoPlayer;->a()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/i;->removeAllViews()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_15} :catch_19

    :cond_15
    :goto_15
    invoke-super {p0, p1}, Lcom/sigmob/sdk/splash/e;->setVisibility(I)V

    return-void

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set splash ad video content error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_15
.end method
