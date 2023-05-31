.class Lcom/sigmob/sdk/mraid/x$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/x;->k()Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/x;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/x;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "MraidActivity failed to load. Finishing the activity"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->g(Lcom/sigmob/sdk/mraid/x;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    const-string v1, "com.sigmob.action.interstitial.fail"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/x;->d(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->h(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/o;->a()V

    return-void
.end method

.method public a(F)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->e(Lcom/sigmob/sdk/mraid/x;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/mraid/x;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->b:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    const-string v1, "com.sigmob.action.rewardedvideo.complete"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/x;->h(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->a:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    const-string v0, "onLoaded() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/SigmobError;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing the activity due to a problem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->E:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->i(Lcom/sigmob/sdk/mraid/x;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    const-string v1, "com.sigmob.action.interstitial.fail"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/x;->e(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V

    :cond_2c
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->j(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/o;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->c(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->d(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/x;->m(Lcom/sigmob/sdk/mraid/x;)Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v4}, Lcom/sigmob/sdk/mraid/x;->c(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/mraid/h;->a()Ljava/lang/String;

    move-result-object v6

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/videoAd/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/f;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->o:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    const-string v1, "com.sigmob.action.interstitial.click"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/x;->j(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/net/URI;Lcom/sigmob/sdk/videoAd/f;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->c(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/sigmob/sdk/mraid/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->d(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/x;->n(Lcom/sigmob/sdk/mraid/x;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v4}, Lcom/sigmob/sdk/mraid/x;->c(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/mraid/h;->a()Ljava/lang/String;

    move-result-object v6

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/videoAd/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/videoAd/f;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->c:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    const-string v1, "com.sigmob.action.interstitial.click"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/x;->k(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(F)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->k(Lcom/sigmob/sdk/mraid/x;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/x;->b(Lcom/sigmob/sdk/mraid/x;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->m:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    const-string v1, "com.sigmob.action.rewardedvideo.skip"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/x;->i(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public b(Z)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->v:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->w:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    goto :goto_9
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->c(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/mraid/h;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/mraid/x$4$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/x$4$1;-><init>(Lcom/sigmob/sdk/mraid/x$4;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/h;->a(Landroid/webkit/ValueCallback;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    const-string v1, "com.sigmob.action.rewardedvideo.Close"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid/x;->g(Lcom/sigmob/sdk/mraid/x;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->l(Lcom/sigmob/sdk/mraid/x;)Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/o;->a()V

    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->d:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$4;->a:Lcom/sigmob/sdk/mraid/x;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->F:Lcom/sigmob/sdk/base/common/a;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/x;->a(Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method
