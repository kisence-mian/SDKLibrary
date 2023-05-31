.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private callStackTrace:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field private final forWebSocket:Z

.field private volatile streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Z)V
    .registers 3
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "forWebSocket"    # Z

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 75
    iput-boolean p2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    .line 76
    return-void
.end method

.method private createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;
    .registers 15
    .param p1, "url"    # Lokhttp3/HttpUrl;

    .prologue
    .line 199
    const/4 v5, 0x0

    .line 200
    .local v5, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v6, 0x0

    .line 201
    .local v6, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v7, 0x0

    .line 202
    .local v7, "certificatePinner":Lokhttp3/CertificatePinner;
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 203
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    .line 204
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    .line 205
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v7

    .line 208
    :cond_1b
    new-instance v0, Lokhttp3/Address;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    iget-object v3, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 209
    invoke-virtual {v8}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v8

    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 210
    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v9

    iget-object v10, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v10}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v11}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v12}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 208
    return-object v0
.end method

.method private followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;
    .registers 14
    .param p1, "userResponse"    # Lokhttp3/Response;
    .param p2, "route"    # Lokhttp3/Route;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 277
    if-nez p1, :cond_9

    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9}, Ljava/lang/IllegalStateException;-><init>()V

    throw v9

    .line 278
    :cond_9
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v5

    .line 280
    .local v5, "responseCode":I
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "method":Ljava/lang/String;
    sparse-switch v5, :sswitch_data_13e

    .line 386
    :cond_18
    :goto_18
    return-object v3

    .line 283
    :sswitch_19
    if-eqz p2, :cond_2f

    .line 284
    invoke-virtual {p2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v7

    .line 286
    .local v7, "selectedProxy":Ljava/net/Proxy;
    :goto_1f
    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v9, v10, :cond_36

    .line 287
    new-instance v9, Ljava/net/ProtocolException;

    const-string v10, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 285
    .end local v7    # "selectedProxy":Ljava/net/Proxy;
    :cond_2f
    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v7

    goto :goto_1f

    .line 289
    .restart local v7    # "selectedProxy":Ljava/net/Proxy;
    :cond_36
    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v9

    invoke-interface {v9, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v3

    goto :goto_18

    .line 292
    .end local v7    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_41
    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v9

    invoke-interface {v9, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v3

    goto :goto_18

    .line 298
    :sswitch_4c
    const-string v9, "GET"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5c

    const-string v9, "HEAD"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 307
    :cond_5c
    :sswitch_5c
    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 309
    const-string v9, "Location"

    invoke-virtual {p1, v9}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "location":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 311
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v9

    invoke-virtual {v9, v0}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v8

    .line 314
    .local v8, "url":Lokhttp3/HttpUrl;
    if-eqz v8, :cond_18

    .line 317
    invoke-virtual {v8}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 318
    .local v6, "sameScheme":Z
    if-nez v6, :cond_98

    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 321
    :cond_98
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v4

    .line 322
    .local v4, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c6

    .line 323
    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v1

    .line 324
    .local v1, "maintainBody":Z
    invoke-static {v2}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_db

    .line 325
    const-string v9, "GET"

    invoke-virtual {v4, v9, v3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 330
    :goto_b5
    if-nez v1, :cond_c6

    .line 331
    const-string v9, "Transfer-Encoding"

    invoke-virtual {v4, v9}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 332
    const-string v9, "Content-Length"

    invoke-virtual {v4, v9}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 333
    const-string v9, "Content-Type"

    invoke-virtual {v4, v9}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 340
    .end local v1    # "maintainBody":Z
    :cond_c6
    invoke-direct {p0, p1, v8}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z

    move-result v9

    if-nez v9, :cond_d1

    .line 341
    const-string v9, "Authorization"

    invoke-virtual {v4, v9}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 344
    :cond_d1
    invoke-virtual {v4, v8}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    goto/16 :goto_18

    .line 327
    .restart local v1    # "maintainBody":Z
    :cond_db
    if-eqz v1, :cond_e5

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    .line 328
    .local v3, "requestBody":Lokhttp3/RequestBody;
    :cond_e5
    invoke-virtual {v4, v2, v3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_b5

    .line 350
    .end local v0    # "location":Ljava/lang/String;
    .end local v1    # "maintainBody":Z
    .end local v3    # "requestBody":Lokhttp3/RequestBody;
    .end local v4    # "requestBuilder":Lokhttp3/Request$Builder;
    .end local v6    # "sameScheme":Z
    .end local v8    # "url":Lokhttp3/HttpUrl;
    :sswitch_e9
    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 355
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v9

    instance-of v9, v9, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v9, :cond_18

    .line 359
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v9

    if-eqz v9, :cond_10f

    .line 360
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Response;->code()I

    move-result v9

    const/16 v10, 0x198

    if-eq v9, v10, :cond_18

    .line 365
    :cond_10f
    const/4 v9, 0x0

    invoke-direct {p0, p1, v9}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result v9

    if-gtz v9, :cond_18

    .line 369
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    goto/16 :goto_18

    .line 372
    :sswitch_11c
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v9

    if-eqz v9, :cond_12e

    .line 373
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Response;->code()I

    move-result v9

    const/16 v10, 0x1f7

    if-eq v9, v10, :cond_18

    .line 378
    :cond_12e
    const v9, 0x7fffffff

    invoke-direct {p0, p1, v9}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result v9

    if-nez v9, :cond_18

    .line 380
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    goto/16 :goto_18

    .line 281
    nop

    :sswitch_data_13e
    .sparse-switch
        0x12c -> :sswitch_5c
        0x12d -> :sswitch_5c
        0x12e -> :sswitch_5c
        0x12f -> :sswitch_5c
        0x133 -> :sswitch_4c
        0x134 -> :sswitch_4c
        0x191 -> :sswitch_41
        0x197 -> :sswitch_19
        0x198 -> :sswitch_e9
        0x1f7 -> :sswitch_11c
    .end sparse-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestSendStarted"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 241
    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_7

    .line 268
    :cond_6
    :goto_6
    return v1

    .line 247
    :cond_7
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_15

    .line 248
    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_13

    if-nez p2, :cond_13

    :goto_11
    move v1, v0

    goto :goto_6

    :cond_13
    move v0, v1

    goto :goto_11

    .line 253
    :cond_15
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_21

    .line 256
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_6

    .line 260
    :cond_21
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_6

    move v1, v0

    .line 268
    goto :goto_6
.end method

.method private recover(Ljava/io/IOException;Lokhttp3/internal/connection/StreamAllocation;ZLokhttp3/Request;)Z
    .registers 7
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "streamAllocation"    # Lokhttp3/internal/connection/StreamAllocation;
    .param p3, "requestSendStarted"    # Z
    .param p4, "userRequest"    # Lokhttp3/Request;

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-virtual {p2, p1}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 224
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v1

    if-nez v1, :cond_d

    .line 236
    :cond_c
    :goto_c
    return v0

    .line 227
    :cond_d
    if-eqz p3, :cond_17

    invoke-virtual {p4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    instance-of v1, v1, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v1, :cond_c

    .line 230
    :cond_17
    invoke-direct {p0, p1, p3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 233
    invoke-virtual {p2}, Lokhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 236
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private retryAfter(Lokhttp3/Response;I)I
    .registers 5
    .param p1, "userResponse"    # Lokhttp3/Response;
    .param p2, "defaultDelay"    # I

    .prologue
    .line 391
    const-string v1, "Retry-After"

    invoke-virtual {p1, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "header":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 403
    .end local p2    # "defaultDelay":I
    :goto_8
    return p2

    .line 399
    .restart local p2    # "defaultDelay":I
    :cond_9
    const-string v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 400
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_8

    .line 403
    :cond_1a
    const p2, 0x7fffffff

    goto :goto_8
.end method

.method private sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z
    .registers 6
    .param p1, "response"    # Lokhttp3/Response;
    .param p2, "followUp"    # Lokhttp3/HttpUrl;

    .prologue
    .line 411
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 412
    .local v0, "url":Lokhttp3/HttpUrl;
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 413
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_30

    .line 414
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x1

    .line 412
    :goto_2f
    return v1

    .line 414
    :cond_30
    const/4 v1, 0x0

    goto :goto_2f
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    .line 89
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 90
    .local v0, "streamAllocation":Lokhttp3/internal/connection/StreamAllocation;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->cancel()V

    .line 91
    :cond_a
    return-void
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 17
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v12

    .local v12, "request":Lokhttp3/Request;
    move-object/from16 v10, p1

    .line 107
    check-cast v10, Lokhttp3/internal/http/RealInterceptorChain;

    .line 108
    .local v10, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    invoke-virtual {v10}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v3

    .line 109
    .local v3, "call":Lokhttp3/Call;
    invoke-virtual {v10}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v4

    .line 111
    .local v4, "eventListener":Lokhttp3/EventListener;
    new-instance v0, Lokhttp3/internal/connection/StreamAllocation;

    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v1

    .line 112
    invoke-virtual {v12}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-direct {p0, v2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v2

    iget-object v5, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V

    .line 113
    .local v0, "streamAllocation":Lokhttp3/internal/connection/StreamAllocation;
    iput-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 115
    const/4 v8, 0x0

    .line 116
    .local v8, "followUpCount":I
    const/4 v9, 0x0

    .line 118
    .local v9, "priorResponse":Lokhttp3/Response;
    :cond_29
    :goto_29
    iget-boolean v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-eqz v1, :cond_38

    .line 119
    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 120
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_38
    const/4 v11, 0x1

    .line 126
    .local v11, "releaseConnection":Z
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3b
    invoke-virtual {v10, v12, v0, v1, v2}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpCodec;Lokhttp3/internal/connection/RealConnection;)Lokhttp3/Response;
    :try_end_3e
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_3b .. :try_end_3e} :catch_72
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_99
    .catchall {:try_start_3b .. :try_end_3e} :catchall_83

    move-result-object v14

    .line 127
    .local v14, "response":Lokhttp3/Response;
    const/4 v11, 0x0

    .line 143
    if-eqz v11, :cond_49

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 145
    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 150
    :cond_49
    if-eqz v9, :cond_64

    .line 151
    invoke-virtual {v14}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    .line 152
    invoke-virtual {v9}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v2

    const/4 v5, 0x0

    .line 153
    invoke-virtual {v2, v5}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v14

    .line 160
    :cond_64
    :try_start_64
    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->route()Lokhttp3/Route;

    move-result-object v1

    invoke-direct {p0, v14, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6b} :catch_b4

    move-result-object v7

    .line 166
    .local v7, "followUp":Lokhttp3/Request;
    if-nez v7, :cond_b9

    .line 167
    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 168
    return-object v14

    .line 128
    .end local v7    # "followUp":Lokhttp3/Request;
    .end local v14    # "response":Lokhttp3/Response;
    :catch_72
    move-exception v6

    .line 130
    .local v6, "e":Lokhttp3/internal/connection/RouteException;
    :try_start_73
    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v12}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/StreamAllocation;ZLokhttp3/Request;)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 131
    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_83
    .catchall {:try_start_73 .. :try_end_83} :catchall_83

    .line 143
    .end local v6    # "e":Lokhttp3/internal/connection/RouteException;
    :catchall_83
    move-exception v1

    if-eqz v11, :cond_8d

    .line 144
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 145
    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    :cond_8d
    throw v1

    .line 133
    .restart local v6    # "e":Lokhttp3/internal/connection/RouteException;
    :cond_8e
    const/4 v11, 0x0

    .line 143
    if-eqz v11, :cond_29

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 145
    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    goto :goto_29

    .line 135
    .end local v6    # "e":Lokhttp3/internal/connection/RouteException;
    :catch_99
    move-exception v6

    .line 137
    .local v6, "e":Ljava/io/IOException;
    :try_start_9a
    instance-of v1, v6, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v1, :cond_a6

    const/4 v13, 0x1

    .line 138
    .local v13, "requestSendStarted":Z
    :goto_9f
    invoke-direct {p0, v6, v0, v13, v12}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/StreamAllocation;ZLokhttp3/Request;)Z

    move-result v1

    if-nez v1, :cond_a8

    throw v6
    :try_end_a6
    .catchall {:try_start_9a .. :try_end_a6} :catchall_83

    .line 137
    .end local v13    # "requestSendStarted":Z
    :cond_a6
    const/4 v13, 0x0

    goto :goto_9f

    .line 139
    .restart local v13    # "requestSendStarted":Z
    :cond_a8
    const/4 v11, 0x0

    .line 143
    if-eqz v11, :cond_29

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 145
    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    goto/16 :goto_29

    .line 161
    .end local v6    # "e":Ljava/io/IOException;
    .end local v13    # "requestSendStarted":Z
    .restart local v14    # "response":Lokhttp3/Response;
    :catch_b4
    move-exception v6

    .line 162
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 163
    throw v6

    .line 171
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "followUp":Lokhttp3/Request;
    :cond_b9
    invoke-virtual {v14}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 173
    add-int/lit8 v8, v8, 0x1

    const/16 v1, 0x14

    if-le v8, v1, :cond_e2

    .line 174
    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 175
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many follow-up requests: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_e2
    invoke-virtual {v7}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    instance-of v1, v1, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v1, :cond_f9

    .line 179
    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 180
    new-instance v1, Ljava/net/HttpRetryException;

    const-string v2, "Cannot retry streamed HTTP body"

    invoke-virtual {v14}, Lokhttp3/Response;->code()I

    move-result v5

    invoke-direct {v1, v2, v5}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 183
    :cond_f9
    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v14, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_121

    .line 184
    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 185
    new-instance v0, Lokhttp3/internal/connection/StreamAllocation;

    .end local v0    # "streamAllocation":Lokhttp3/internal/connection/StreamAllocation;
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v1

    .line 186
    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-direct {p0, v2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v2

    iget-object v5, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V

    .line 187
    .restart local v0    # "streamAllocation":Lokhttp3/internal/connection/StreamAllocation;
    iput-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 193
    :cond_11d
    move-object v12, v7

    .line 194
    move-object v9, v14

    .line 195
    goto/16 :goto_29

    .line 188
    :cond_121
    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->codec()Lokhttp3/internal/http/HttpCodec;

    move-result-object v1

    if-eqz v1, :cond_11d

    .line 189
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing the body of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isCanceled()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public setCallStackTrace(Ljava/lang/Object;)V
    .registers 2
    .param p1, "callStackTrace"    # Ljava/lang/Object;

    .prologue
    .line 98
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public streamAllocation()Lokhttp3/internal/connection/StreamAllocation;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
