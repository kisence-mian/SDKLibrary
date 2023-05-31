.class public Lcom/kwad/sdk/c/g/b/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;
    .registers 3
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdInfo;

    if-nez v0, :cond_17

    const-string v0, "AdTemplateHelper"

    const-string v1, "adInfo in null"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/AdInfo;-><init>()V

    :cond_17
    return-object v0
.end method

.method public static b(Lcom/kwad/sdk/core/response/model/AdTemplate;)I
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->contentType:I

    return v0
.end method

.method public static c(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->l(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/PhotoInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/c;->e(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static d(Lcom/kwad/sdk/core/response/model/AdTemplate;)J
    .registers 3
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->llsid:J

    return-wide v0
.end method

.method public static e(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/PhotoInfo;
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->photoInfo:Lcom/kwad/sdk/core/response/model/PhotoInfo;

    return-object v0
.end method

.method public static f(Lcom/kwad/sdk/core/response/model/AdTemplate;)J
    .registers 3
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->posId:J

    return-wide v0
.end method

.method public static g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;
    .registers 2
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->A(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-static {p0}, Lcom/kwad/sdk/c/g/b/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/PhotoInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/c;->p(Lcom/kwad/sdk/core/response/model/PhotoInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static h(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z
    .registers 4
    .param p0    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->contentType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method
