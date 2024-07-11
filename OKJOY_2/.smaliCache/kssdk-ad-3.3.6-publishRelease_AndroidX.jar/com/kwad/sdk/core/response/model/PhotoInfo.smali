.class public Lcom/kwad/sdk/core/response/model/PhotoInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;,
        Lcom/kwad/sdk/core/response/model/PhotoInfo$PhotoAd;,
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

.field public liveInfo:Lcom/kwad/sdk/live/mode/LiveInfo;

.field public photoAd:Lcom/kwad/sdk/core/response/model/PhotoInfo$PhotoAd;

.field public trendInfo:Lcom/kwad/sdk/core/response/model/TrendInfo;

.field public tubeEpisode:Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;

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

    new-instance v0, Lcom/kwad/sdk/core/response/model/TrendInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/TrendInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->trendInfo:Lcom/kwad/sdk/core/response/model/TrendInfo;

    new-instance v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$PhotoAd;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/PhotoInfo$PhotoAd;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->photoAd:Lcom/kwad/sdk/core/response/model/PhotoInfo$PhotoAd;

    new-instance v0, Lcom/kwad/sdk/live/mode/LiveInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/live/mode/LiveInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->liveInfo:Lcom/kwad/sdk/live/mode/LiveInfo;

    new-instance v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->tubeEpisode:Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 4

    if-nez p1, :cond_3

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

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->trendInfo:Lcom/kwad/sdk/core/response/model/TrendInfo;

    const-string v1, "trendInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/TrendInfo;->parseJson(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->photoAd:Lcom/kwad/sdk/core/response/model/PhotoInfo$PhotoAd;

    const-string v1, "photoAd"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/PhotoInfo$PhotoAd;->parseJson(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->liveInfo:Lcom/kwad/sdk/live/mode/LiveInfo;

    const-string v1, "liveInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/live/mode/LiveInfo;->parseJson(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->tubeEpisode:Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;

    const-string v1, "tubeEpisode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;->parseJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->baseInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;

    const-string v2, "baseInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->videoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    const-string v2, "videoInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->coverInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$CoverInfo;

    const-string v2, "coverInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->authorInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;

    const-string v2, "authorInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->trendInfo:Lcom/kwad/sdk/core/response/model/TrendInfo;

    const-string v2, "trendInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->photoAd:Lcom/kwad/sdk/core/response/model/PhotoInfo$PhotoAd;

    const-string v2, "photoAd"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->liveInfo:Lcom/kwad/sdk/live/mode/LiveInfo;

    const-string v2, "liveInfo"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->tubeEpisode:Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;

    const-string v2, "tubeEpisode"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/m;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    return-object v0
.end method
