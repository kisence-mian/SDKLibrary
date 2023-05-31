.class public Lcom/kwad/sdk/c/d/c/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/export/proxy/AdHttpProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/export/proxy/AdHttpProxy",
        "<",
        "Lcom/kwad/sdk/c/g/a/a;",
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
.method public a(Lcom/kwad/sdk/c/g/a/a;)Lcom/kwad/sdk/c/g/a/a;
    .registers 2

    return-object p1
.end method

.method public doGet(Ljava/lang/String;Ljava/util/Map;)Lcom/kwad/sdk/c/g/a/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kwad/sdk/c/g/a/a;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/kwad/sdk/c/d/b/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/kwad/sdk/c/g/a/a;

    move-result-object v0

    return-object v0
.end method

.method public doPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/kwad/sdk/c/g/a/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kwad/sdk/c/g/a/a;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/kwad/sdk/c/d/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/kwad/sdk/c/g/a/a;

    move-result-object v0

    return-object v0
.end method

.method public doPost(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/kwad/sdk/c/g/a/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/kwad/sdk/c/g/a/a;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lcom/kwad/sdk/c/d/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lcom/kwad/sdk/c/g/a/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseResponse(Ljava/lang/Object;)Lcom/kwad/sdk/c/g/a/a;
    .registers 3

    check-cast p1, Lcom/kwad/sdk/c/g/a/a;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/c/d/c/a;->a(Lcom/kwad/sdk/c/g/a/a;)Lcom/kwad/sdk/c/g/a/a;

    move-result-object v0

    return-object v0
.end method
