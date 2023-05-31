.class public Lcom/qq/e/comm/net/rr/PlainRequest;
.super Lcom/qq/e/comm/net/rr/AbstractRequest;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qq/e/comm/net/rr/Request$Method;[B)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Lcom/qq/e/comm/net/rr/Request$Method;
    .param p3, "postData"    # [B

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/qq/e/comm/net/rr/AbstractRequest;-><init>(Ljava/lang/String;Lcom/qq/e/comm/net/rr/Request$Method;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/qq/e/comm/net/rr/Request$Method;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "method"    # Lcom/qq/e/comm/net/rr/Request$Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qq/e/comm/net/rr/Request$Method;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/qq/e/comm/net/rr/AbstractRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/qq/e/comm/net/rr/Request$Method;)V

    return-void
.end method


# virtual methods
.method public initResponse(Ljava/net/HttpURLConnection;)Lcom/qq/e/comm/net/rr/Response;
    .registers 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    new-instance v0, Lcom/qq/e/comm/net/rr/PlainResponse;

    invoke-direct {v0, p1}, Lcom/qq/e/comm/net/rr/PlainResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method
