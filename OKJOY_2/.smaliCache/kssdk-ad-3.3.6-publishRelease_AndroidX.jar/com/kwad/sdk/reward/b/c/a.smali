.class public Lcom/kwad/sdk/reward/b/c/a;
.super Lcom/kwad/sdk/reward/d;


# instance fields
.field private b:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private c:Lcom/kwad/sdk/core/response/model/AdTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/reward/d;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/reward/b/c/a;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p2}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/kwad/sdk/reward/b/c/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    if-eqz p3, :cond_11

    invoke-direct {p0, p1}, Lcom/kwad/sdk/reward/b/c/a;->a(Landroid/content/Context;)V

    goto :goto_14

    :cond_11
    invoke-direct {p0}, Lcom/kwad/sdk/reward/b/c/a;->e()V

    :goto_14
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/response/b/a;->a(Lcom/kwad/sdk/core/response/model/AdInfo;Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/kwad/sdk/reward/b/c/a;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1, p1}, Lcom/kwad/sdk/core/config/c;->a(Lcom/kwad/sdk/core/response/model/AdInfo;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance p1, Lcom/kwad/sdk/reward/b/b;

    invoke-direct {p1}, Lcom/kwad/sdk/reward/b/b;-><init>()V

    :goto_13
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/reward/b/c/a;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    goto :goto_2f

    :cond_17
    if-nez v0, :cond_2f

    new-instance v0, Lcom/kwad/sdk/reward/b/c/a/a;

    invoke-direct {v0}, Lcom/kwad/sdk/reward/b/c/a/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/c/a;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/response/b/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2f

    new-instance p1, Lcom/kwad/sdk/reward/b/c/a/b;

    invoke-direct {p1}, Lcom/kwad/sdk/reward/b/c/a/b;-><init>()V

    goto :goto_13

    :cond_2f
    :goto_2f
    return-void
.end method

.method private e()V
    .registers 2

    new-instance v0, Lcom/kwad/sdk/reward/b/c/a/a;

    invoke-direct {v0}, Lcom/kwad/sdk/reward/b/c/a/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/c/a;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/b;->j(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/kwad/sdk/reward/b/c/a;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->k(Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_18
    new-instance v0, Lcom/kwad/sdk/reward/b/c/a/b;

    invoke-direct {v0}, Lcom/kwad/sdk/reward/b/c/a/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/reward/b/c/a;->a(Lcom/kwad/sdk/mvp/Presenter;)V

    :cond_20
    return-void
.end method
