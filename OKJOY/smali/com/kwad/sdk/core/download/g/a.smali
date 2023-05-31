.class public Lcom/kwad/sdk/core/download/g/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/download/g/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/g/a$a;Lcom/kwad/sdk/core/download/g/b;)V
    .registers 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/core/download/g/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kwad/sdk/core/download/g/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/e/p;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {p0, p1}, Lcom/kwad/sdk/core/download/g/c;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    invoke-interface {p2}, Lcom/kwad/sdk/core/download/g/a$a;->onAdClicked()V

    goto :goto_a

    :cond_16
    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/a;->B(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {p0, p1}, Lcom/kwad/sdk/core/page/AdWebViewActivity;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-interface {p2}, Lcom/kwad/sdk/core/download/g/a$a;->onAdClicked()V

    goto :goto_a

    :cond_23
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/g/b;->c()V

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DOWNLOADING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PROGRESS:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v0, v1, :cond_a

    invoke-interface {p2}, Lcom/kwad/sdk/core/download/g/a$a;->onAdClicked()V

    goto :goto_a
.end method
