.class public abstract Lcom/sigmob/sdk/videoAd/b;
.super Lcom/sigmob/sdk/base/common/n;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/Long;Lcom/sigmob/sdk/base/common/o;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/n;-><init>(Landroid/app/Activity;Ljava/lang/Long;Lcom/sigmob/sdk/base/common/o;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/b;->f:Lcom/sigmob/sdk/base/common/o;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/b;->e:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/o;->a(Landroid/view/View;)V

    return-void
.end method

.method protected a(Z)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/b;->f:Lcom/sigmob/sdk/base/common/o;

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/o;->a()V

    :cond_7
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .registers 6

    :try_start_0
    const-string v0, "enablekeepon"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "enablescreenlockdisplayad"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-lt v2, v3, :cond_31

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/b;->j()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/b;->j()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    :cond_26
    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/b;->j()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    if-eqz v1, :cond_40

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/b;->j()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x280000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_40
    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/b;->j()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4f} :catch_50

    goto :goto_30

    :catch_50
    move-exception v0

    goto :goto_30
.end method
