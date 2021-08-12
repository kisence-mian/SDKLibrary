.class public Lcom/kwad/sdk/core/network/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/export/proxy/AdHttpProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/export/proxy/AdHttpProxy<",
        "Lcom/kwad/sdk/core/network/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/network/c;)Lcom/kwad/sdk/core/network/c;
    .registers 2

    return-object p1
.end method

.method public doGet(Ljava/lang/String;Ljava/util/Map;)Lcom/kwad/sdk/core/network/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kwad/sdk/core/network/c;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/network/a/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/kwad/sdk/core/network/c;

    move-result-object p1

    return-object p1
.end method

.method public doGetWithoutResponse(Ljava/lang/String;Ljava/util/Map;)Lcom/kwad/sdk/core/network/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kwad/sdk/core/network/c;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/network/a/a;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/kwad/sdk/core/network/c;

    move-result-object p1

    return-object p1
.end method

.method public doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/kwad/sdk/core/network/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kwad/sdk/core/network/c;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/kwad/sdk/core/network/a/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/kwad/sdk/core/network/c;

    move-result-object p1

    return-object p1
.end method

.method public doPost(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/kwad/sdk/core/network/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/kwad/sdk/core/network/c;"
        }
    .end annotation

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_8

    :cond_7
    const/4 p3, 0x0

    :goto_8
    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/kwad/sdk/core/network/a/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lcom/kwad/sdk/core/network/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic parseResponse(Ljava/lang/Object;)Lcom/kwad/sdk/core/network/c;
    .registers 2

    check-cast p1, Lcom/kwad/sdk/core/network/c;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/network/b/a;->a(Lcom/kwad/sdk/core/network/c;)Lcom/kwad/sdk/core/network/c;

    move-result-object p1

    return-object p1
.end method
