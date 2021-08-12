.class public Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/AdStyleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayDetailInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;,
        Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$ActionBarInfo;,
        Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;,
        Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailWebCardInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x129e432862736f6fL


# instance fields
.field public actionBarInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$ActionBarInfo;

.field public detailTopToolBarInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;

.field public detailWebCardInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailWebCardInfo;

.field public patchAdInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailWebCardInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailWebCardInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;->detailWebCardInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailWebCardInfo;

    new-instance v0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;->detailTopToolBarInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;

    new-instance v0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$ActionBarInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$ActionBarInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;->actionBarInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$ActionBarInfo;

    new-instance v0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;->patchAdInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;->type:I

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;->detailWebCardInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailWebCardInfo;

    const-string v1, "detailWebCardInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailWebCardInfo;->parseJson(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;->detailTopToolBarInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;

    const-string v1, "detailTopToolBarInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;->parseJson(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;->actionBarInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$ActionBarInfo;

    const-string v1, "actionBarInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$ActionBarInfo;->parseJson(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;->patchAdInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;

    const-string v1, "patchAdInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;->parseJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;->type:I

    const-string v2, "type"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;->detailWebCardInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailWebCardInfo;

    const-string v2, "detailWebCardInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;->detailTopToolBarInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$DetailTopToolBarInfo;

    const-string v2, "detailTopToolBarInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;->actionBarInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$ActionBarInfo;

    const-string v2, "actionBarInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo;->patchAdInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayDetailInfo$PatchAdInfo;

    const-string v2, "patchAdInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    return-object v0
.end method
