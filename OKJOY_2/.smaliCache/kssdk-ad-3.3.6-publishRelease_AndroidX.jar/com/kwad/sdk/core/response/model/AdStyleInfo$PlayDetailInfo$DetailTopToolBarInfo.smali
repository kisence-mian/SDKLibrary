.class public Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailTopToolBarInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6167fbfece6541b1L


# instance fields
.field public callButtonDescription:Ljava/lang/String;

.field public callButtonShowTime:J

.field public rewardCallDescription:Ljava/lang/String;

.field public rewardIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "callButtonShowTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;->callButtonShowTime:J

    const-string v0, "callButtonDescription"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;->callButtonDescription:Ljava/lang/String;

    const-string v0, "rewardIconUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;->rewardIconUrl:Ljava/lang/String;

    const-string v0, "rewardCallDescription"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;->rewardCallDescription:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;->callButtonShowTime:J

    const-string v3, "callButtonShowTime"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;->callButtonDescription:Ljava/lang/String;

    const-string v2, "callButtonDescription"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;->rewardIconUrl:Ljava/lang/String;

    const-string v2, "rewardIconUrl"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;->rewardCallDescription:Ljava/lang/String;

    const-string v2, "rewardCallDescription"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
