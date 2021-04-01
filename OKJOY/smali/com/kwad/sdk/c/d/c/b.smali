.class public Lcom/kwad/sdk/c/d/c/b;
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
        "Lokhttp3/Response;",
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
.method public a(Lokhttp3/Response;)Lcom/kwad/sdk/c/g/a/a;
    .registers 4

    new-instance v1, Lcom/kwad/sdk/c/g/a/a;

    invoke-direct {v1}, Lcom/kwad/sdk/c/g/a/a;-><init>()V

    if-eqz p1, :cond_13

    :try_start_7
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, v1, Lcom/kwad/sdk/c/g/a/a;->a:I

    invoke-static {p1}, Lcom/kwad/sdk/c/d/b/b;->a(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kwad/sdk/c/g/a/a;->b:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-object v1

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
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

    invoke-static {p1, p2}, Lcom/kwad/sdk/c/d/b/b;->a(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/c/d/c/b;->a(Lokhttp3/Response;)Lcom/kwad/sdk/c/g/a/a;

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

    invoke-static {p1, p2, p3}, Lcom/kwad/sdk/c/d/b/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/c/d/c/b;->a(Lokhttp3/Response;)Lcom/kwad/sdk/c/g/a/a;

    move-result-object v0

    return-object v0
.end method

.method public doPost(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/kwad/sdk/c/g/a/a;
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
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/kwad/sdk/c/g/a/a;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/kwad/sdk/c/d/b/b;->a(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/c/d/c/b;->a(Lokhttp3/Response;)Lcom/kwad/sdk/c/g/a/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseResponse(Ljava/lang/Object;)Lcom/kwad/sdk/c/g/a/a;
    .registers 3

    check-cast p1, Lokhttp3/Response;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/c/d/c/b;->a(Lokhttp3/Response;)Lcom/kwad/sdk/c/g/a/a;

    move-result-object v0

    return-object v0
.end method
