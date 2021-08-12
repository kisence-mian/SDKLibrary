.class public Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdWebCardInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e20c98c0eb9e6c3L


# instance fields
.field public cardData:Ljava/lang/String;

.field public cardDelayTime:J

.field public cardShowPlayCount:I

.field public cardShowTime:J

.field public cardUrl:Ljava/lang/String;

.field public typeLandscape:J

.field public typePortrait:J


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
    const-string v0, "typeLandscape"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->typeLandscape:J

    const-string v0, "typePortrait"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->typePortrait:J

    const-string v0, "cardUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->cardUrl:Ljava/lang/String;

    const-string v0, "cardShowTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->cardShowTime:J

    const-string v0, "cardDelayTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->cardDelayTime:J

    const-string v0, "cardData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->cardData:Ljava/lang/String;

    const-string v0, "cardShowPlayCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->cardShowPlayCount:I

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->typeLandscape:J

    const-string v3, "typeLandscape"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->typePortrait:J

    const-string v3, "typePortrait"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->cardUrl:Ljava/lang/String;

    const-string v2, "cardUrl"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->cardShowTime:J

    const-string v3, "cardShowTime"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->cardDelayTime:J

    const-string v3, "cardDelayTime"

    invoke-static {v0, v3, v1, v2}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->cardData:Ljava/lang/String;

    const-string v2, "cardData"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->cardShowPlayCount:I

    const-string v2, "cardShowPlayCount"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-object v0
.end method
