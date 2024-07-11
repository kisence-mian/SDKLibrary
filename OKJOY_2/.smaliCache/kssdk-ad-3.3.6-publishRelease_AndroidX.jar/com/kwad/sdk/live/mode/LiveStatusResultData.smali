.class public Lcom/kwad/sdk/live/mode/LiveStatusResultData;
.super Lcom/kwad/sdk/core/network/BaseResultData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/live/mode/LiveStatusResultData$LiveStatus;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x37ec28b19ad91095L


# instance fields
.field public liveStatus:Lcom/kwad/sdk/live/mode/LiveStatusResultData$LiveStatus;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/BaseResultData;-><init>()V

    new-instance v0, Lcom/kwad/sdk/live/mode/LiveStatusResultData$LiveStatus;

    invoke-direct {v0}, Lcom/kwad/sdk/live/mode/LiveStatusResultData$LiveStatus;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/live/mode/LiveStatusResultData;->liveStatus:Lcom/kwad/sdk/live/mode/LiveStatusResultData$LiveStatus;

    return-void
.end method


# virtual methods
.method public isDataEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/live/mode/LiveStatusResultData;->liveStatus:Lcom/kwad/sdk/live/mode/LiveStatusResultData$LiveStatus;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/kwad/sdk/live/mode/LiveStatusResultData$LiveStatus;->liveStreamId:Ljava/lang/String;

    invoke-static {v0}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/network/BaseResultData;->parseJson(Lorg/json/JSONObject;)V

    if-nez p1, :cond_6

    return-void

    :cond_6
    :try_start_6
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {p1}, Lcom/kwad/sdk/core/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kwad/sdk/live/mode/LiveStatusResultData;->liveStatus:Lcom/kwad/sdk/live/mode/LiveStatusResultData$LiveStatus;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/live/mode/LiveStatusResultData$LiveStatus;->parseJson(Lorg/json/JSONObject;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_25
    :goto_25
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    invoke-super {p0}, Lcom/kwad/sdk/core/network/BaseResultData;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/live/mode/LiveStatusResultData;->liveStatus:Lcom/kwad/sdk/live/mode/LiveStatusResultData$LiveStatus;

    const-string v2, "data"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    return-object v0
.end method
