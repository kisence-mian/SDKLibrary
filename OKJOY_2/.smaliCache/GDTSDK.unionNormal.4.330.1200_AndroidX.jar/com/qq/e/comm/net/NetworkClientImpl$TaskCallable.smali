.class Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/net/NetworkClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/qq/e/comm/net/rr/Response;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/comm/net/rr/Request;

.field private b:Lcom/qq/e/comm/net/NetworkCallBack;


# direct methods
.method public constructor <init>(Lcom/qq/e/comm/net/rr/Request;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;-><init>(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkCallBack;)V

    return-void
.end method

.method public constructor <init>(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkCallBack;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    iput-object p2, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->b:Lcom/qq/e/comm/net/NetworkCallBack;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .registers 5

    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v0}, Lcom/qq/e/comm/net/rr/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GDTADNetClient-["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v0}, Lcom/qq/e/comm/net/rr/Request;->getConnectionTimeOut()I

    move-result v0

    const/16 v1, 0x7530

    if-lez v0, :cond_5e

    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v0}, Lcom/qq/e/comm/net/rr/Request;->getConnectionTimeOut()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    goto :goto_61

    :cond_5e
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :goto_61
    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v0}, Lcom/qq/e/comm/net/rr/Request;->getSocketTimeOut()I

    move-result v0

    if-lez v0, :cond_73

    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v0}, Lcom/qq/e/comm/net/rr/Request;->getSocketTimeOut()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void

    :cond_73
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method


# virtual methods
.method public call()Lcom/qq/e/comm/net/rr/Response;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v2}, Lcom/qq/e/comm/net/rr/Request;->getUrlWithParas()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-direct {p0, v1}, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a(Ljava/net/HttpURLConnection;)V

    sget-object v2, Lcom/qq/e/comm/net/NetworkClientImpl$1;->a:[I

    iget-object v3, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v3}, Lcom/qq/e/comm/net/rr/Request;->getMethod()Lcom/qq/e/comm/net/rr/Request$Method;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qq/e/comm/net/rr/Request$Method;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_86

    goto :goto_4c

    :pswitch_27
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    iget-object v2, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v2}, Lcom/qq/e/comm/net/rr/Request;->getPostData()[B

    move-result-object v2

    if-eqz v2, :cond_4c

    array-length v3, v2

    if-lez v3, :cond_4c

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_4c
    :goto_4c
    invoke-static {v1}, Lcom/qq/e/comm/net/NetworkClientImpl;->followRedirect(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v2, v1}, Lcom/qq/e/comm/net/rr/Request;->initResponse(Ljava/net/HttpURLConnection;)Lcom/qq/e/comm/net/rr/Response;

    move-result-object v1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_5b
    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->b:Lcom/qq/e/comm/net/NetworkCallBack;

    if-eqz v0, :cond_66

    iget-object v2, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v0, v2, v1}, Lcom/qq/e/comm/net/NetworkCallBack;->onResponse(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/rr/Response;)V

    :cond_66
    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v0}, Lcom/qq/e/comm/net/rr/Request;->isAutoClose()Z

    move-result v0

    if-eqz v0, :cond_83

    :goto_6e
    invoke-interface {v1}, Lcom/qq/e/comm/net/rr/Response;->close()V

    goto :goto_83

    :cond_72
    iget-object v2, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->b:Lcom/qq/e/comm/net/NetworkCallBack;

    if-eqz v2, :cond_84

    const-string v2, "NetworkClientException"

    invoke-static {v2, v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->b:Lcom/qq/e/comm/net/NetworkCallBack;

    invoke-interface {v2, v0}, Lcom/qq/e/comm/net/NetworkCallBack;->onException(Ljava/lang/Exception;)V

    if-eqz v1, :cond_83

    goto :goto_6e

    :cond_83
    :goto_83
    return-object v1

    :cond_84
    throw v0

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_27
    .end packed-switch
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->call()Lcom/qq/e/comm/net/rr/Response;

    move-result-object v0

    return-object v0
.end method
