.class public Lcom/kwad/sdk/c/g/b/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->authorInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorIcon:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J
    .registers 3
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->authorInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;

    iget-wide v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorId:J

    return-wide v0
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->authorInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$AuthorInfo;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Lcom/kwad/sdk/core/response/model/PhotoInfo;)I
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->coverInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$CoverInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$CoverInfo;->height:I

    return v0
.end method

.method public static e(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->coverInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$CoverInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$CoverInfo;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Lcom/kwad/sdk/core/response/model/PhotoInfo;)I
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->coverInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$CoverInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$CoverInfo;->width:I

    return v0
.end method

.method public static g(Lcom/kwad/sdk/core/response/model/PhotoInfo;)I
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->videoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;->height:I

    return v0
.end method

.method public static h(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->videoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;->firstFrame:Ljava/lang/String;

    return-object v0
.end method

.method public static i(Lcom/kwad/sdk/core/response/model/PhotoInfo;)I
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->videoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;->width:I

    return v0
.end method

.method public static j(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->baseInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public static k(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J
    .registers 3
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->baseInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;

    iget-wide v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;->photoId:J

    return-wide v0
.end method

.method public static l(Lcom/kwad/sdk/core/response/model/PhotoInfo;)J
    .registers 3
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->baseInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;

    iget-wide v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;->likeCount:J

    return-wide v0
.end method

.method public static m(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->baseInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;->recoExt:Ljava/lang/String;

    return-object v0
.end method

.method public static n(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/Long;
    .registers 3
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->videoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    iget-wide v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;->duration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static o(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Lcom/kwad/sdk/core/response/model/d;
    .registers 8
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/c;->h(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kwad/sdk/e/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-static {v1}, Lcom/kwad/sdk/e/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/c;->i(Lcom/kwad/sdk/core/response/model/PhotoInfo;)I

    move-result v2

    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/c;->g(Lcom/kwad/sdk/core/response/model/PhotoInfo;)I

    move-result v3

    move v5, v4

    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "frameUrl="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " useCover="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " isAd="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "PhotoInfoHelper"

    invoke-static {v6, v0}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kwad/sdk/core/response/model/d;

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/core/response/model/d;-><init>(Ljava/lang/String;IIZZ)V

    return-object v0

    :cond_4c
    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/c;->e(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/c;->f(Lcom/kwad/sdk/core/response/model/PhotoInfo;)I

    move-result v2

    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/c;->d(Lcom/kwad/sdk/core/response/model/PhotoInfo;)I

    move-result v3

    const/4 v5, 0x1

    goto :goto_1a
.end method

.method public static p(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->videoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$VideoInfo;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static q(Lcom/kwad/sdk/core/response/model/PhotoInfo;)I
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->baseInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;->waterMarkPosition:I

    return v0
.end method

.method public static r(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Z
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/PhotoInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/PhotoInfo;->baseInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/PhotoInfo$BaseInfo;->waterMarkPosition:I

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
