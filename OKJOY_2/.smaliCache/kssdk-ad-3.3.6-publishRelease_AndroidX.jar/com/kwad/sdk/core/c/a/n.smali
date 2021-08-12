.class public Lcom/kwad/sdk/core/c/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/c<",
        "Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;",
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
.method public bridge synthetic a(Lcom/kwad/sdk/core/response/a/a;)Lorg/json/JSONObject;
    .registers 2

    check-cast p1, Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/c/a/n;->a(Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p1, Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;->templateConfig:Ljava/lang/String;

    const-string v2, "templateConfig"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;->heightRatio:D

    const-string p1, "heightRatio"

    invoke-static {v0, p1, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;D)V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/kwad/sdk/core/response/a/a;Lorg/json/JSONObject;)V
    .registers 3

    check-cast p1, Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/c/a/n;->a(Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;Lorg/json/JSONObject;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string v0, "templateConfig"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;->templateConfig:Ljava/lang/String;

    const-string v0, "heightRatio"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/kwad/sdk/core/response/model/AdStyleInfo$FeedAdInfo;->heightRatio:D

    return-void
.end method
