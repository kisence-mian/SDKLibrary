.class public Lcom/kwad/sdk/fullscreen/a/b/a;
.super Lcom/kwad/sdk/reward/d;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    new-instance v0, Lcom/kwad/sdk/reward/b/c/b/a;

    invoke-direct {v0}, Lcom/kwad/sdk/reward/b/c/b/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/fullscreen/a/b/a;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->o()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    new-instance v2, Lcom/kwad/sdk/reward/b/c/b/b;

    invoke-direct {v2, v0, v1}, Lcom/kwad/sdk/reward/b/c/b/b;-><init>(J)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/kwad/sdk/reward/b/c/b/b;->a(Z)Lcom/kwad/sdk/reward/b/c/b/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/fullscreen/a/b/a;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    return-void
.end method
