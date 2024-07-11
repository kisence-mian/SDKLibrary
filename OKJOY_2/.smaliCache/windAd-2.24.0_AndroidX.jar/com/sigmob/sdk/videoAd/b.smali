.class public abstract Lcom/sigmob/sdk/videoAd/b;
.super Lcom/sigmob/sdk/base/common/g;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/Long;Lcom/sigmob/sdk/base/common/h;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/g;-><init>(Landroid/app/Activity;Ljava/lang/Long;Lcom/sigmob/sdk/base/common/h;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/b;->f:Lcom/sigmob/sdk/base/common/h;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/b;->e:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/h;->onSetContentView(Landroid/view/View;)V

    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .registers 5

    :try_start_0
    const-string v0, "enablekeepon"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "enablescreenlockdisplayad"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_2e

    const/4 v1, 0x1

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/b;->j()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/b;->j()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTurnScreenOn(Z)V

    :cond_24
    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/b;->j()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    goto :goto_4e

    :cond_2e
    if-eqz p1, :cond_3d

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/b;->j()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, 0x280000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_3d
    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoAd/b;->j()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_4d

    goto :goto_4e

    :catchall_4d
    move-exception p1

    :cond_4e
    :goto_4e
    return-void
.end method
