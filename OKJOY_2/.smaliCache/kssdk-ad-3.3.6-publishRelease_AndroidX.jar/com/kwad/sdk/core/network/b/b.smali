.class public Lcom/kwad/sdk/core/network/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/export/proxy/AdHttpProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/export/proxy/AdHttpProxy<",
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

.method private b(Lokhttp3/Response;)Lcom/kwad/sdk/core/network/c;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/core/network/c;

    invoke-direct {v0}, Lcom/kwad/sdk/core/network/c;-><init>()V

    if-eqz p1, :cond_16

    :try_start_7
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    iput p1, v0, Lcom/kwad/sdk/core/network/c;->a:I

    const-string p1, ""

    iput-object p1, v0, Lcom/kwad/sdk/core/network/c;->b:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    return-object v0
.end method


# virtual methods
.method public a(Lokhttp3/Response;)Lcom/kwad/sdk/core/network/c;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/network/c;

    invoke-direct {v0}, Lcom/kwad/sdk/core/network/c;-><init>()V

    if-eqz p1, :cond_18

    :try_start_7
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    iput v1, v0, Lcom/kwad/sdk/core/network/c;->a:I

    invoke-static {p1}, Lcom/kwad/sdk/core/network/a/b;->a(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/kwad/sdk/core/network/c;->b:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_18
    :goto_18
    return-object v0
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

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/network/a/b;->a(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/network/b/b;->a(Lokhttp3/Response;)Lcom/kwad/sdk/core/network/c;

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

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/network/a/b;->a(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/network/b/b;->b(Lokhttp3/Response;)Lcom/kwad/sdk/core/network/c;

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

    invoke-static {p1, p2, p3}, Lcom/kwad/sdk/core/network/a/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/network/b/b;->a(Lokhttp3/Response;)Lcom/kwad/sdk/core/network/c;

    move-result-object p1

    return-object p1
.end method

.method public doPost(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/kwad/sdk/core/network/c;
    .registers 4
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

    invoke-static {p1, p2, p3}, Lcom/kwad/sdk/core/network/a/b;->a(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/network/b/b;->a(Lokhttp3/Response;)Lcom/kwad/sdk/core/network/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic parseResponse(Ljava/lang/Object;)Lcom/kwad/sdk/core/network/c;
    .registers 2

    check-cast p1, Lokhttp3/Response;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/network/b/b;->a(Lokhttp3/Response;)Lcom/kwad/sdk/core/network/c;

    move-result-object p1

    return-object p1
.end method
