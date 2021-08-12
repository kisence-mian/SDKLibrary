.class public Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo;
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
    name = "PlayEndInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$EndTopToolBarInfo;,
        Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x41b2081b492ccf89L


# instance fields
.field public adWebCardInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;

.field public endTopToolBarInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$EndTopToolBarInfo;

.field public showLandingPage:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo;->adWebCardInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;

    new-instance v0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$EndTopToolBarInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$EndTopToolBarInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo;->endTopToolBarInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$EndTopToolBarInfo;

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

    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo;->type:I

    const-string v0, "showLandingPage3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo;->showLandingPage:I

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo;->adWebCardInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;

    const-string v1, "adWebCardInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;->parseJson(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo;->endTopToolBarInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$EndTopToolBarInfo;

    const-string v1, "endTopToolBarInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$EndTopToolBarInfo;->parseJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo;->type:I

    const-string v2, "type"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo;->adWebCardInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$AdWebCardInfo;

    const-string v2, "adWebCardInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo;->showLandingPage:I

    const-string v2, "showLandingPage3"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo;->endTopToolBarInfo:Lcom/kwad/sdk/core/response/model/AdStyleInfo$PlayEndInfo$EndTopToolBarInfo;

    const-string v2, "endTopToolBarInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    return-object v0
.end method
