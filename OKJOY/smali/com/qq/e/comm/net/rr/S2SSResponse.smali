.class public Lcom/qq/e/comm/net/rr/S2SSResponse;
.super Lcom/qq/e/comm/net/rr/AbstractResponse;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 2
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/qq/e/comm/net/rr/AbstractResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-void
.end method


# virtual methods
.method public getBytesContent()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Lcom/qq/e/comm/net/rr/AbstractResponse;->getBytesContent()[B

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/net/rr/a;->b([B)[B
    :try_end_7
    .catch Lcom/qq/e/comm/net/rr/a$b; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lcom/qq/e/comm/net/rr/a$b;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_8
.end method
