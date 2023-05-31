.class public abstract Lcom/kwad/sdk/c/f/j;
.super Lcom/kwad/sdk/c/d/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/c/d/a/a",
        "<",
        "Lcom/kwad/sdk/c/f/k;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/c/d/a/a;-><init>()V

    return-void
.end method

.method private a(Lcom/kwad/sdk/c/f/k;)V
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Lcom/kwad/sdk/c/f/k;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getProxyForHttp()Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/kwad/sdk/export/proxy/AdHttpProxy;->doGet(Ljava/lang/String;Ljava/util/Map;)Lcom/kwad/sdk/c/g/a/a;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_8

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_21
    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/download/k/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "ReportNetwork"

    const-string v1, "no network while report log"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    invoke-super {p0}, Lcom/kwad/sdk/c/d/a/a;->b()V

    goto :goto_11
.end method

.method protected c()V
    .registers 5

    invoke-virtual {p0}, Lcom/kwad/sdk/c/d/a/a;->a()Lcom/kwad/sdk/core/request/k/b;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/c/f/k;

    :try_start_6
    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getProxyForHttp()Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kwad/sdk/c/f/k;->j()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/kwad/sdk/export/proxy/AdHttpProxy;->doGet(Ljava/lang/String;Ljava/util/Map;)Lcom/kwad/sdk/c/g/a/a;

    move-result-object v1

    if-eqz v1, :cond_39

    iget v1, v1, Lcom/kwad/sdk/c/g/a/a;->a:I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_41

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_39

    const-string v1, "ReportNetwork"

    :try_start_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report success actionType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/kwad/sdk/c/f/k;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    invoke-direct {p0, v0}, Lcom/kwad/sdk/c/f/j;->a(Lcom/kwad/sdk/c/f/k;)V

    :goto_38
    return-void

    :cond_39
    const-string v1, "ReportNetwork"

    const-string v2, "report fail result is null"

    invoke-static {v1, v2}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_40} :catch_41

    goto :goto_35

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method
