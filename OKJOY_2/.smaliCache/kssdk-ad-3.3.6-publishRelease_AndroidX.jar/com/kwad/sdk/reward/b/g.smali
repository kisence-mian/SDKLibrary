.class public Lcom/kwad/sdk/reward/b/g;
.super Lcom/kwad/sdk/reward/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 5

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    invoke-static {p2}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance p1, Lcom/kwad/sdk/reward/b/f;

    invoke-direct {p1}, Lcom/kwad/sdk/reward/b/f;-><init>()V

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/b/g;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    goto :goto_1f

    :cond_16
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/response/b/a;->b(Lcom/kwad/sdk/core/response/model/AdInfo;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-static {p2}, Lcom/kwad/sdk/core/report/e;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    :cond_1f
    :goto_1f
    return-void
.end method
