.class public Lcom/kwad/sdk/contentalliance/detail/photo/c/e;
.super Lcom/kwad/sdk/b/c/b;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/kwad/sdk/b/c/b;-><init>()V

    invoke-static {}, Lcom/kwad/sdk/c/a/a;->b()I

    move-result v0

    if-ne v0, v1, :cond_12

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;

    invoke-direct {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/c/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_12
    invoke-static {}, Lcom/kwad/sdk/c/a/a;->c()I

    move-result v0

    if-ne v0, v1, :cond_20

    new-instance v0, Lcom/kwad/sdk/contentalliance/detail/photo/d/g;

    invoke-direct {v0}, Lcom/kwad/sdk/contentalliance/detail/photo/d/g;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_20
    return-void
.end method
