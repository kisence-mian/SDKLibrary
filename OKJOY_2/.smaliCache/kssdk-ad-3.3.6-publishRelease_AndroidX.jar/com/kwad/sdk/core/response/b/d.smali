.class public Lcom/kwad/sdk/core/response/b/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->videoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;->videoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/Long;
    .registers 3

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->videoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    iget-wide v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;->duration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J
    .registers 3

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->baseInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;

    iget-wide v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;->photoId:J

    return-wide v0
.end method

.method public static d(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->baseInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;->recoExt:Ljava/lang/String;

    return-object p0
.end method

.method public static e(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J
    .registers 3

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->authorInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;

    iget-wide v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorId:J

    return-wide v0
.end method

.method public static f(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J
    .registers 3

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->tubeEpisode:Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;

    iget-wide v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;->tubeId:J

    return-wide v0
.end method

.method public static g(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->tubeEpisode:Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;->tubeName:Ljava/lang/String;

    return-object p0
.end method

.method public static h(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->tubeEpisode:Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo$TubeEpisode;->episodeName:Ljava/lang/String;

    return-object p0
.end method

.method public static i(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J
    .registers 3

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->trendInfo:Lcom/kwad/sdk/core/response/model/TrendInfo;

    iget-wide v0, p0, Lcom/kwad/sdk/core/response/model/TrendInfo;->trendId:J

    return-wide v0
.end method

.method public static j(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->trendInfo:Lcom/kwad/sdk/core/response/model/TrendInfo;

    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/TrendInfo;->name:Ljava/lang/String;

    return-object p0
.end method
