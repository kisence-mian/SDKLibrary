.class public Lcom/kwad/sdk/core/response/model/PhotoInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/kwad/sdk/c/g/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;,
        Lcom/kwad/sdk/core/response/model/PhotoInfo$CoverInfo;,
        Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;,
        Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3e380fcdf83c8d60L


# instance fields
.field public authorInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;

.field public baseInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;

.field public coverInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$CoverInfo;

.field public videoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->baseInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;

    new-instance v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->videoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    new-instance v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$CoverInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/PhotoInfo$CoverInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->coverInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$CoverInfo;

    new-instance v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->authorInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->baseInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;

    const-string v1, "baseInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;->parseJson(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->videoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    const-string v1, "videoInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;->parseJson(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->coverInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$CoverInfo;

    const-string v1, "coverInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/PhotoInfo$CoverInfo;->parseJson(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->authorInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;

    const-string v1, "authorInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->parseJson(Lorg/json/JSONObject;)V

    goto :goto_2
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
