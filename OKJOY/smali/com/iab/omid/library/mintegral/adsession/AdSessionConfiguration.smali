.class public Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private final impressionOwner:Lcom/iab/omid/library/mintegral/adsession/Owner;

.field private final isolateVerificationScripts:Z

.field private final videoEventsOwner:Lcom/iab/omid/library/mintegral/adsession/Owner;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/mintegral/adsession/Owner;Lcom/iab/omid/library/mintegral/adsession/Owner;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;->impressionOwner:Lcom/iab/omid/library/mintegral/adsession/Owner;

    if-nez p2, :cond_e

    sget-object v0, Lcom/iab/omid/library/mintegral/adsession/Owner;->NONE:Lcom/iab/omid/library/mintegral/adsession/Owner;

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;->videoEventsOwner:Lcom/iab/omid/library/mintegral/adsession/Owner;

    :goto_b
    iput-boolean p3, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;->isolateVerificationScripts:Z

    return-void

    :cond_e
    iput-object p2, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;->videoEventsOwner:Lcom/iab/omid/library/mintegral/adsession/Owner;

    goto :goto_b
.end method

.method public static createAdSessionConfiguration(Lcom/iab/omid/library/mintegral/adsession/Owner;Lcom/iab/omid/library/mintegral/adsession/Owner;)Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/mintegral/adsession/Owner;Lcom/iab/omid/library/mintegral/adsession/Owner;Z)Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static createAdSessionConfiguration(Lcom/iab/omid/library/mintegral/adsession/Owner;Lcom/iab/omid/library/mintegral/adsession/Owner;Z)Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;
    .registers 4

    const-string v0, "Impression owner is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iab/omid/library/mintegral/d/e;->a(Lcom/iab/omid/library/mintegral/adsession/Owner;)V

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;

    invoke-direct {v0, p0, p1, p2}, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;-><init>(Lcom/iab/omid/library/mintegral/adsession/Owner;Lcom/iab/omid/library/mintegral/adsession/Owner;Z)V

    return-object v0
.end method


# virtual methods
.method public isNativeImpressionOwner()Z
    .registers 3

    sget-object v0, Lcom/iab/omid/library/mintegral/adsession/Owner;->NATIVE:Lcom/iab/omid/library/mintegral/adsession/Owner;

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;->impressionOwner:Lcom/iab/omid/library/mintegral/adsession/Owner;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isNativeVideoEventsOwner()Z
    .registers 3

    sget-object v0, Lcom/iab/omid/library/mintegral/adsession/Owner;->NATIVE:Lcom/iab/omid/library/mintegral/adsession/Owner;

    iget-object v1, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;->videoEventsOwner:Lcom/iab/omid/library/mintegral/adsession/Owner;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "impressionOwner"

    iget-object v2, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;->impressionOwner:Lcom/iab/omid/library/mintegral/adsession/Owner;

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "videoEventsOwner"

    iget-object v2, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;->videoEventsOwner:Lcom/iab/omid/library/mintegral/adsession/Owner;

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "isolateVerificationScripts"

    iget-boolean v2, p0, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;->isolateVerificationScripts:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
