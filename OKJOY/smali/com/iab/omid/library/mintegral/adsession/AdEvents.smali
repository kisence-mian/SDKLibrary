.class public final Lcom/iab/omid/library/mintegral/adsession/AdEvents;
.super Ljava/lang/Object;


# instance fields
.field private final adSession:Lcom/iab/omid/library/mintegral/adsession/a;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/mintegral/adsession/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    return-void
.end method

.method public static createAdEvents(Lcom/iab/omid/library/mintegral/adsession/AdSession;)Lcom/iab/omid/library/mintegral/adsession/AdEvents;
    .registers 3

    move-object v0, p0

    check-cast v0, Lcom/iab/omid/library/mintegral/adsession/a;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->d(Lcom/iab/omid/library/mintegral/adsession/a;)V

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->b(Lcom/iab/omid/library/mintegral/adsession/a;)V

    new-instance v1, Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    invoke-direct {v1, v0}, Lcom/iab/omid/library/mintegral/adsession/AdEvents;-><init>(Lcom/iab/omid/library/mintegral/adsession/a;)V

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a(Lcom/iab/omid/library/mintegral/adsession/AdEvents;)V

    return-object v1
.end method


# virtual methods
.method public impressionOccurred()V
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->b(Lcom/iab/omid/library/mintegral/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/d/e;->f(Lcom/iab/omid/library/mintegral/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->d()Z

    move-result v0

    if-nez v0, :cond_17

    :try_start_12
    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->start()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_25

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->d()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->adSession:Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/a;->b()V

    :cond_24
    return-void

    :catch_25
    move-exception v0

    goto :goto_17
.end method
