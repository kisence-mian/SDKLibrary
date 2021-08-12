.class public final Lcom/kwad/sdk/core/b/e;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    return-object v0

    :cond_d
    invoke-static {v0}, Lcom/kwad/sdk/utils/aa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_c

    :cond_9
    invoke-static {p0, p1}, Lcom/kwad/sdk/utils/aa;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    sget v1, Lcom/kwad/sdk/d;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    const-class v1, Lcom/kwad/sdk/plugin/a;

    invoke-static {v1}, Lcom/kwad/sdk/plugin/f;->a(Ljava/lang/Class;)Lcom/kwad/sdk/plugin/d;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/plugin/a;

    if-eqz v1, :cond_2b

    invoke-interface {v1, v0, p0}, Lcom/kwad/sdk/plugin/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b

    :cond_1e
    const-class v1, Lcom/kwad/sdk/plugin/b;

    invoke-static {v1}, Lcom/kwad/sdk/plugin/f;->a(Ljava/lang/Class;)Lcom/kwad/sdk/plugin/d;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/plugin/b;

    if-eqz v1, :cond_2b

    invoke-interface {v1, v0, p0}, Lcom/kwad/sdk/plugin/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    return-object v0

    :cond_d
    invoke-static {v0}, Lcom/kwad/sdk/utils/aa;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
