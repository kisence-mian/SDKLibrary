.class public abstract Lcom/kwad/sdk/core/request/j;
.super Lcom/kwad/sdk/c/d/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/c/d/a/a",
        "<",
        "Lcom/kwad/sdk/core/request/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/c/d/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()V
    .registers 8

    invoke-virtual {p0}, Lcom/kwad/sdk/c/d/a/a;->a()Lcom/kwad/sdk/core/request/k/b;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/request/c;

    :try_start_6
    invoke-virtual {v0}, Lcom/kwad/sdk/core/request/c;->e()Lcom/kwad/sdk/protocol/model/AdScene;

    move-result-object v1

    iget-wide v2, v1, Lcom/kwad/sdk/protocol/model/AdScene;->posId:J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_54

    const-string v1, "RequestNetwork"

    :try_start_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request start posId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/kwad/sdk/core/request/k/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getProxyForHttp()Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kwad/sdk/core/request/k/a;->d()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0}, Lcom/kwad/sdk/core/request/k/a;->c()Lorg/json/JSONObject;

    move-result-object v6

    invoke-interface {v4, v1, v5, v6}, Lcom/kwad/sdk/export/proxy/AdHttpProxy;->doPost(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/kwad/sdk/c/g/a/a;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_37} :catch_54

    move-result-object v1

    const-string v4, "RequestNetwork"

    :try_start_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request success posId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/c/d/a/a;->a(Lcom/kwad/sdk/core/request/k/b;Lcom/kwad/sdk/c/g/a/a;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_53} :catch_54

    :goto_53
    return-void

    :catch_54
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_53
.end method
