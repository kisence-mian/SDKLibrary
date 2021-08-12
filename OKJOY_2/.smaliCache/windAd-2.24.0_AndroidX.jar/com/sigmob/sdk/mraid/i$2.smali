.class Lcom/sigmob/sdk/mraid/i$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/i;->k()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/i;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/i;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    const-string v1, "com.sigmob.action.mraid.playFail"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/i;->b(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->E:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string v0, "adError() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/mraid/i;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid/i;->g:Lcom/sigmob/sdk/base/common/p;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->f(Lcom/sigmob/sdk/mraid/i;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/i;->d(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/a;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/sdk/base/common/p;->a(II)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
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

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "playerHandles"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->d(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->b(Lcom/sigmob/sdk/mraid/i;)Landroid/content/Context;

    move-result-object v3

    sget-object v5, Lcom/sigmob/sdk/videoAd/f;->a:Lcom/sigmob/sdk/videoAd/f;

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/mraid/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/c;->a()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/sigmob/sdk/videoAd/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/f;ZLjava/lang/String;Z)V

    :cond_44
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->o:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    const-string v1, "com.sigmob.action.interstitial.click"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adClickThru() called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_0 .. :try_end_6c} :catchall_6d

    goto :goto_73

    :catchall_6d
    move-exception p1

    const-string v0, "adClickThru"

    invoke-static {v0, p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_73
    return-void
.end method

.method public b()V
    .registers 2

    const-string v0, "adImpression() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 3

    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid/i$2;->b:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->h:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    :cond_b
    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->f:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string v0, "adPlaying() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid/i$2;->b:Z

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/i;->e(Lcom/sigmob/sdk/mraid/i;)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3b

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v1, v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/mraid/i;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    const-string v1, "com.sigmob.action.rewardedvideo.complete"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/mraid/i;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    iget-object v0, v0, Lcom/sigmob/sdk/mraid/i;->g:Lcom/sigmob/sdk/base/common/p;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->b:Lcom/sigmob/sdk/base/common/a;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/i;->c(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/mraid/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/mraid/c;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    :cond_3b
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->l:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string v0, "adVideoComplete() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->e:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string v0, "adVideoFirstQuartile() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->j:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string v0, "adVideoThirdQuartile() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->i:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string v0, "adVideoMidpoint() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$2;->a:Lcom/sigmob/sdk/mraid/i;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->H:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string v0, "adVideoStart() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method
