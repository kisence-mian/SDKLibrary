.class public Lcom/kwad/sdk/core/c/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/c<",
        "Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;)Lorg/json/JSONObject;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p1, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->cacheTime:J

    const-string v3, "cacheTime"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p1, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->expiredTime:J

    const-string v3, "expiredTime"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object p1, p1, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->preloadId:Ljava/lang/String;

    const-string v1, "preloadId"

    invoke-static {v0, v1, p1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/response/a/a;)Lorg/json/JSONObject;
    .registers 2

    check-cast p1, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/c/a/w;->a(Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;Lorg/json/JSONObject;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "cacheTime"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->cacheTime:J

    const-string v0, "expiredTime"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->expiredTime:J

    const-string v0, "preloadId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;->preloadId:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/response/a/a;Lorg/json/JSONObject;)V
    .registers 3

    check-cast p1, Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/c/a/w;->a(Lcom/kwad/sdk/core/preload/SplashPreloadManager$PreLoadItem;Lorg/json/JSONObject;)V

    return-void
.end method
