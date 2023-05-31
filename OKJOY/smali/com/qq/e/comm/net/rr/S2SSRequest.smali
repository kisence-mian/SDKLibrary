.class public Lcom/qq/e/comm/net/rr/S2SSRequest;
.super Lcom/qq/e/comm/net/rr/AbstractRequest;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    sget-object v0, Lcom/qq/e/comm/net/rr/Request$Method;->POST:Lcom/qq/e/comm/net/rr/Request$Method;

    invoke-direct {p0, p1, v0, p2}, Lcom/qq/e/comm/net/rr/AbstractRequest;-><init>(Ljava/lang/String;Lcom/qq/e/comm/net/rr/Request$Method;[B)V

    return-void
.end method


# virtual methods
.method public getPostData()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lcom/qq/e/comm/net/rr/AbstractRequest;->getPostData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/net/rr/a;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public initResponse(Ljava/net/HttpURLConnection;)Lcom/qq/e/comm/net/rr/Response;
    .registers 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    new-instance v0, Lcom/qq/e/comm/net/rr/S2SSResponse;

    invoke-direct {v0, p1}, Lcom/qq/e/comm/net/rr/S2SSResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method
