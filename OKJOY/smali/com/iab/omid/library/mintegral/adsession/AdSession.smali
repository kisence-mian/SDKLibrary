.class public abstract Lcom/iab/omid/library/mintegral/adsession/AdSession;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAdSession(Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;)Lcom/iab/omid/library/mintegral/adsession/AdSession;
    .registers 3

    invoke-static {}, Lcom/iab/omid/library/mintegral/d/e;->a()V

    const-string v0, "AdSessionConfiguration is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdSessionContext is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/a;

    invoke-direct {v0, p0, p1}, Lcom/iab/omid/library/mintegral/adsession/a;-><init>(Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;)V

    return-object v0
.end method


# virtual methods
.method public abstract addFriendlyObstruction(Landroid/view/View;)V
.end method

.method public abstract error(Lcom/iab/omid/library/mintegral/adsession/ErrorType;Ljava/lang/String;)V
.end method

.method public abstract finish()V
.end method

.method public abstract getAdSessionId()Ljava/lang/String;
.end method

.method public abstract getAdSessionStatePublisher()Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;
.end method

.method public abstract registerAdView(Landroid/view/View;)V
.end method

.method public abstract removeAllFriendlyObstructions()V
.end method

.method public abstract removeFriendlyObstruction(Landroid/view/View;)V
.end method

.method public abstract start()V
.end method
