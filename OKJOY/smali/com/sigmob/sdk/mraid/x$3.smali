.class Lcom/sigmob/sdk/mraid/x$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/x;->k()Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/x;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/x;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    const-string v1, "com.sigmob.action.mraid.playFail"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/x;->b(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->E:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string v0, "adError() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/mraid/x;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/x;->f(Lcom/sigmob/sdk/mraid/x;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/x;->d(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/a;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(II)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v0, "playerHandles"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->d(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/x;->b(Lcom/sigmob/sdk/mraid/x;)Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/sigmob/sdk/videoAd/f;->a:Lcom/sigmob/sdk/videoAd/f;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v6}, Lcom/sigmob/sdk/mraid/x;->c(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sigmob/sdk/mraid/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/videoAd/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/f;ZLjava/lang/String;)V

    :cond_42
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->o:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    const-string v1, "com.sigmob.action.interstitial.click"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adClickThru() called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6a} :catch_6b

    :goto_6a
    return-void

    :catch_6b
    move-exception v0

    const-string v1, "adClickThru"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a
.end method

.method public b()V
    .registers 2

    const-string v0, "adImpression() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/x$3;->b:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->h:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    :cond_b
    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->f:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string v0, "adPlaying() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .registers 4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sigmob/sdk/mraid/x$3;->b:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->e(Lcom/sigmob/sdk/mraid/x;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3b

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0, v2}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/mraid/x;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    const-string v1, "com.sigmob.action.rewardedvideo.complete"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/x;->c(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/x;->g:Lcom/sigmob/sdk/base/common/w;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->b:Lcom/sigmob/sdk/base/common/a;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/x;->c(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/mraid/h;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    :cond_3b
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->l:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string v0, "adVideoComplete() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->e:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string v0, "adVideoFirstQuartile() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->j:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string v0, "adVideoThirdQuartile() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->i:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string v0, "adVideoMidpoint() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$3;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->H:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string v0, "adVideoStart() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method
