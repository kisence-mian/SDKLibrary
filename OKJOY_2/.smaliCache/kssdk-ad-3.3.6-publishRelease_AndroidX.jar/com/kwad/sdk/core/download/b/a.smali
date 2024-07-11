.class public Lcom/kwad/sdk/core/download/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/download/b/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V
    .registers 7

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/home/download/a;->a()Lcom/kwad/sdk/home/download/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/home/download/a;->a(Z)V

    invoke-static {p0, p1, v2}, Lcom/kwad/sdk/core/download/b/d;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;I)I

    move-result v1

    if-ne v1, v2, :cond_16

    invoke-interface {p2}, Lcom/kwad/sdk/core/download/b/a$a;->a()V

    return-void

    :cond_16
    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {p0, p1}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-interface {p2}, Lcom/kwad/sdk/core/download/b/a$a;->a()V

    return-void

    :cond_23
    if-eqz p3, :cond_37

    invoke-virtual {p3, p0}, Lcom/kwad/sdk/core/download/b/b;->a(Landroid/content/Context;)V

    iget-object p0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object p1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DOWNLOADING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq p0, p1, :cond_37

    iget-object p0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object p1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PROGRESS:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq p0, p1, :cond_37

    invoke-interface {p2}, Lcom/kwad/sdk/core/download/b/a$a;->a()V

    :cond_37
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/download/b/a$a;Lcom/kwad/sdk/core/download/b/b;)V
    .registers 7

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {}, Lcom/kwad/sdk/utils/ah;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/kwad/sdk/core/download/b/d;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;I)I

    move-result v2

    if-ne v2, v1, :cond_16

    invoke-interface {p2}, Lcom/kwad/sdk/core/download/b/a$a;->a()V

    return-void

    :cond_16
    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->t(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->I(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result p3

    if-eqz p3, :cond_26

    invoke-static {p0, p1}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    goto :goto_29

    :cond_26
    invoke-static {p0, p1}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    :goto_29
    invoke-interface {p2}, Lcom/kwad/sdk/core/download/b/a$a;->a()V

    return-void

    :cond_2d
    if-eqz p3, :cond_5b

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->I(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->w(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/b/b;->c()Z

    move-result p3

    if-nez p3, :cond_4c

    invoke-static {p0, p1}, Lcom/kwad/sdk/core/page/AdWebViewVideoActivityProxy;->launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    goto :goto_4c

    :cond_49
    invoke-virtual {p3, p0}, Lcom/kwad/sdk/core/download/b/b;->a(Landroid/content/Context;)V

    :cond_4c
    :goto_4c
    iget-object p0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object p1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DOWNLOADING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq p0, p1, :cond_5b

    iget-object p0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object p1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PROGRESS:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq p0, p1, :cond_5b

    invoke-interface {p2}, Lcom/kwad/sdk/core/download/b/a$a;->a()V

    :cond_5b
    return-void
.end method
