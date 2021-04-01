.class public Lcom/iab/omid/library/mintegral/d/e;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .registers 2

    invoke-static {}, Lcom/iab/omid/library/mintegral/Omid;->isActive()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method called before OM SDK activation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method public static a(Lcom/iab/omid/library/mintegral/adsession/Owner;)V
    .registers 3

    sget-object v0, Lcom/iab/omid/library/mintegral/adsession/Owner;->NONE:Lcom/iab/omid/library/mintegral/adsession/Owner;

    invoke-virtual {p0, v0}, Lcom/iab/omid/library/mintegral/adsession/Owner;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Impression owner is none"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-void
.end method

.method public static a(Lcom/iab/omid/library/mintegral/adsession/a;)V
    .registers 3

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/adsession/a;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AdSession is started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    if-nez p0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method public static b(Lcom/iab/omid/library/mintegral/adsession/a;)V
    .registers 3

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/adsession/a;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AdSession is finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method public static c(Lcom/iab/omid/library/mintegral/adsession/a;)V
    .registers 1

    invoke-static {p0}, Lcom/iab/omid/library/mintegral/d/e;->h(Lcom/iab/omid/library/mintegral/adsession/a;)V

    invoke-static {p0}, Lcom/iab/omid/library/mintegral/d/e;->b(Lcom/iab/omid/library/mintegral/adsession/a;)V

    return-void
.end method

.method public static d(Lcom/iab/omid/library/mintegral/adsession/a;)V
    .registers 3

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->c()Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AdEvents already exists for AdSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method

.method public static e(Lcom/iab/omid/library/mintegral/adsession/a;)V
    .registers 3

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->d()Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VideoEvents already exists for AdSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method

.method public static f(Lcom/iab/omid/library/mintegral/adsession/a;)V
    .registers 3

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/adsession/a;->g()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impression event is not expected from the Native AdSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method public static g(Lcom/iab/omid/library/mintegral/adsession/a;)V
    .registers 3

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/adsession/a;->h()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create VideoEvents for JavaScript AdSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method private static h(Lcom/iab/omid/library/mintegral/adsession/a;)V
    .registers 3

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/adsession/a;->e()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AdSession is not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method
