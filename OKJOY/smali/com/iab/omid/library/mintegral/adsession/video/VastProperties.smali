.class public final Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "VastProperties: "


# instance fields
.field private final isAutoPlay:Z

.field private final isSkippable:Z

.field private final position:Lcom/iab/omid/library/mintegral/adsession/video/Position;

.field private final skipOffset:Ljava/lang/Float;


# direct methods
.method private constructor <init>(ZLjava/lang/Float;ZLcom/iab/omid/library/mintegral/adsession/video/Position;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;->isSkippable:Z

    iput-object p2, p0, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;->skipOffset:Ljava/lang/Float;

    iput-boolean p3, p0, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;->isAutoPlay:Z

    iput-object p4, p0, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;->position:Lcom/iab/omid/library/mintegral/adsession/video/Position;

    return-void
.end method

.method public static createVastPropertiesForNonSkippableVideo(ZLcom/iab/omid/library/mintegral/adsession/video/Position;)Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;
    .registers 5

    const-string v0, "Position is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;-><init>(ZLjava/lang/Float;ZLcom/iab/omid/library/mintegral/adsession/video/Position;)V

    return-object v0
.end method

.method public static createVastPropertiesForSkippableVideo(FZLcom/iab/omid/library/mintegral/adsession/video/Position;)Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;
    .registers 6

    const-string v0, "Position is null"

    invoke-static {p2, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;-><init>(ZLjava/lang/Float;ZLcom/iab/omid/library/mintegral/adsession/video/Position;)V

    return-object v0
.end method


# virtual methods
.method toJSON()Lorg/json/JSONObject;
    .registers 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "skippable"

    iget-boolean v2, p0, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;->isSkippable:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;->isSkippable:Z

    if-eqz v0, :cond_17

    const-string v0, "skipOffset"

    iget-object v2, p0, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;->skipOffset:Ljava/lang/Float;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17
    const-string v0, "autoPlay"

    iget-boolean v2, p0, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;->isAutoPlay:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "position"

    iget-object v2, p0, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;->position:Lcom/iab/omid/library/mintegral/adsession/video/Position;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_25} :catch_26

    :goto_25
    return-object v1

    :catch_26
    move-exception v0

    const-string v2, "VastProperties: JSON error"

    invoke-static {v2, v0}, Lcom/iab/omid/library/mintegral/d/c;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_25
.end method
