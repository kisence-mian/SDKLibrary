.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private volatile canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field private forWebSocket:Z

.field private streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 2
    .param p1, "client"    # Lokhttp3/OkHttpClient;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 70
    return-void
.end method

.method private createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;
    .registers 20
    .param p1, "url"    # Lokhttp3/HttpUrl;

    .line 188
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 189
    .local v1, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v2, 0x0

    .line 190
    .local v2, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v3, 0x0

    .line 191
    .local v3, "certificatePinner":Lokhttp3/CertificatePinner;
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 192
    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 193
    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    .line 194
    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v3

    .line 197
    :cond_1d
    new-instance v17, Lokhttp3/Address;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->port()I

    move-result v6

    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v7

    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 198
    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v12

    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 199
    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v14

    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v15

    iget-object v4, v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v16

    move-object/from16 v4, v17

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct/range {v4 .. v16}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 197
    return-object v17
.end method

.method private followUpRequest(Lokhttp3/Response;)Lokhttp3/Request;
    .registers 13
    .param p1, "userResponse"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    if-eqz p1, :cond_f6

    .line 265
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 266
    .local v0, "connection":Lokhttp3/Connection;
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 267
    invoke-interface {v0}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v2

    goto :goto_11

    :cond_10
    move-object v2, v1

    .line 269
    .local v2, "route":Lokhttp3/Route;
    :goto_11
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v3

    .line 271
    .local v3, "responseCode":I
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "method":Ljava/lang/String;
    const-string v5, "GET"

    sparse-switch v3, :sswitch_data_fc

    .line 344
    return-object v1

    .line 337
    :sswitch_23
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v5

    instance-of v5, v5, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v5, :cond_30

    .line 338
    return-object v1

    .line 341
    :cond_30
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    return-object v1

    .line 274
    :sswitch_35
    if-eqz v2, :cond_3c

    .line 275
    invoke-virtual {v2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_42

    :cond_3c
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 276
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v1

    :goto_42
    nop

    .line 277
    .local v1, "selectedProxy":Ljava/net/Proxy;
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_56

    .line 280
    iget-object v5, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v5

    invoke-interface {v5, v2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v5

    return-object v5

    .line 278
    :cond_56
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 283
    .end local v1    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_5e
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v1

    invoke-interface {v1, v2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v1

    return-object v1

    .line 289
    :sswitch_69
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_78

    const-string v6, "HEAD"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_78

    .line 290
    return-object v1

    .line 298
    :cond_78
    :sswitch_78
    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v6}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v6

    if-nez v6, :cond_81

    return-object v1

    .line 300
    :cond_81
    const-string v6, "Location"

    invoke-virtual {p1, v6}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, "location":Ljava/lang/String;
    if-nez v6, :cond_8a

    return-object v1

    .line 302
    :cond_8a
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v7, v6}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v7

    .line 305
    .local v7, "url":Lokhttp3/HttpUrl;
    if-nez v7, :cond_99

    return-object v1

    .line 308
    :cond_99
    invoke-virtual {v7}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 309
    .local v8, "sameScheme":Z
    if-nez v8, :cond_b8

    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v9}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v9

    if-nez v9, :cond_b8

    return-object v1

    .line 312
    :cond_b8
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v9

    .line 313
    .local v9, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-static {v4}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e2

    .line 314
    invoke-static {v4}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d0

    .line 315
    invoke-virtual {v9, v5, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_d3

    .line 317
    :cond_d0
    invoke-virtual {v9, v4, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 319
    :goto_d3
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v9, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 320
    const-string v1, "Content-Length"

    invoke-virtual {v9, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 321
    const-string v1, "Content-Type"

    invoke-virtual {v9, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 327
    :cond_e2
    invoke-direct {p0, p1, v7}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_ed

    .line 328
    const-string v1, "Authorization"

    invoke-virtual {v9, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 331
    :cond_ed
    invoke-virtual {v9, v7}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    return-object v1

    .line 264
    .end local v0    # "connection":Lokhttp3/Connection;
    .end local v2    # "route":Lokhttp3/Route;
    .end local v3    # "responseCode":I
    .end local v4    # "method":Ljava/lang/String;
    .end local v6    # "location":Ljava/lang/String;
    .end local v7    # "url":Lokhttp3/HttpUrl;
    .end local v8    # "sameScheme":Z
    .end local v9    # "requestBuilder":Lokhttp3/Request$Builder;
    :cond_f6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :sswitch_data_fc
    .sparse-switch
        0x12c -> :sswitch_78
        0x12d -> :sswitch_78
        0x12e -> :sswitch_78
        0x12f -> :sswitch_78
        0x133 -> :sswitch_69
        0x134 -> :sswitch_69
        0x191 -> :sswitch_5e
        0x197 -> :sswitch_35
        0x198 -> :sswitch_23
    .end sparse-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "routeException"    # Z

    .line 228
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 229
    return v1

    .line 234
    :cond_6
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 235
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_12

    if-eqz p2, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1

    .line 240
    :cond_13
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_20

    .line 243
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_20

    .line 244
    return v1

    .line 247
    :cond_20
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_25

    .line 249
    return v1

    .line 255
    :cond_25
    return v2
.end method

.method private recover(Ljava/io/IOException;ZLokhttp3/Request;)Z
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "routeException"    # Z
    .param p3, "userRequest"    # Lokhttp3/Request;

    .line 208
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 211
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    .line 214
    :cond_f
    if-nez p2, :cond_1a

    invoke-virtual {p3}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    instance-of v0, v0, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v0, :cond_1a

    return v1

    .line 217
    :cond_1a
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v0

    if-nez v0, :cond_21

    return v1

    .line 220
    :cond_21
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result v0

    if-nez v0, :cond_2a

    return v1

    .line 223
    :cond_2a
    const/4 v0, 0x1

    return v0
.end method

.method private sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z
    .registers 6
    .param p1, "response"    # Lokhttp3/Response;
    .param p2, "followUp"    # Lokhttp3/HttpUrl;

    .line 353
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 354
    .local v0, "url":Lokhttp3/HttpUrl;
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 355
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_30

    .line 356
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    .line 354
    :goto_31
    return v1
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    .line 83
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 84
    .local v0, "streamAllocation":Lokhttp3/internal/connection/StreamAllocation;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->cancel()V

    .line 85
    :cond_a
    return-void
.end method

.method public client()Lokhttp3/OkHttpClient;
    .registers 2

    .line 92
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 11
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 110
    .local v0, "request":Lokhttp3/Request;
    new-instance v1, Lokhttp3/internal/connection/StreamAllocation;

    iget-object v2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 111
    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-direct {p0, v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;)V

    iput-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "followUpCount":I
    const/4 v2, 0x0

    .line 116
    .local v2, "priorResponse":Lokhttp3/Response;
    :cond_1b
    :goto_1b
    iget-boolean v3, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-nez v3, :cond_139

    .line 121
    const/4 v3, 0x0

    .line 122
    .local v3, "response":Lokhttp3/Response;
    const/4 v4, 0x1

    .line 124
    .local v4, "releaseConnection":Z
    const/4 v5, 0x0

    :try_start_22
    move-object v6, p1

    check-cast v6, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v7, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v6, v0, v7, v5, v5}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpStream;Lokhttp3/Connection;)Lokhttp3/Response;

    move-result-object v6
    :try_end_2b
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_22 .. :try_end_2b} :catch_10c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2b} :catch_f4
    .catchall {:try_start_22 .. :try_end_2b} :catchall_f2

    move-object v3, v6

    .line 125
    const/4 v4, 0x0

    .line 138
    if-eqz v4, :cond_39

    .line 139
    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v6, v5}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 140
    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v6}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 145
    :cond_39
    if-eqz v2, :cond_53

    .line 146
    invoke-virtual {v3}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v6

    .line 147
    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v7

    .line 148
    invoke-virtual {v7, v5}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v5

    .line 149
    invoke-virtual {v5}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v5

    .line 147
    invoke-virtual {v6, v5}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v5

    .line 150
    invoke-virtual {v5}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v3

    .line 153
    :cond_53
    invoke-direct {p0, v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v5

    .line 155
    .local v5, "followUp":Lokhttp3/Request;
    if-nez v5, :cond_63

    .line 156
    iget-boolean v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    if-nez v6, :cond_62

    .line 157
    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v6}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 159
    :cond_62
    return-object v3

    .line 162
    :cond_63
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x14

    if-gt v1, v6, :cond_d4

    .line 169
    invoke-virtual {v5}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v6

    instance-of v6, v6, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v6, :cond_c8

    .line 173
    invoke-virtual {v5}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/Response;Lokhttp3/HttpUrl;)Z

    move-result v6

    if-nez v6, :cond_9d

    .line 174
    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v6}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 175
    new-instance v6, Lokhttp3/internal/connection/StreamAllocation;

    iget-object v7, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 176
    invoke-virtual {v7}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v7

    invoke-virtual {v5}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    invoke-direct {p0, v8}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;)V

    iput-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    goto :goto_a5

    .line 177
    :cond_9d
    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v6}, Lokhttp3/internal/connection/StreamAllocation;->stream()Lokhttp3/internal/http/HttpStream;

    move-result-object v6

    if-nez v6, :cond_a9

    .line 182
    :goto_a5
    move-object v0, v5

    .line 183
    move-object v2, v3

    .line 184
    .end local v3    # "response":Lokhttp3/Response;
    .end local v4    # "releaseConnection":Z
    .end local v5    # "followUp":Lokhttp3/Request;
    goto/16 :goto_1b

    .line 178
    .restart local v3    # "response":Lokhttp3/Response;
    .restart local v4    # "releaseConnection":Z
    .restart local v5    # "followUp":Lokhttp3/Request;
    :cond_a9
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Closing the body of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 170
    :cond_c8
    new-instance v6, Ljava/net/HttpRetryException;

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v7

    const-string v8, "Cannot retry streamed HTTP body"

    invoke-direct {v6, v8, v7}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 165
    :cond_d4
    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v6}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 166
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too many follow-up requests: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 138
    .end local v5    # "followUp":Lokhttp3/Request;
    :catchall_f2
    move-exception v6

    goto :goto_12c

    .line 131
    :catch_f4
    move-exception v6

    .line 133
    .local v6, "e":Ljava/io/IOException;
    const/4 v7, 0x0

    :try_start_f6
    invoke-direct {p0, v6, v7, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLokhttp3/Request;)Z

    move-result v7
    :try_end_fa
    .catchall {:try_start_f6 .. :try_end_fa} :catchall_f2

    if-eqz v7, :cond_10b

    .line 134
    const/4 v4, 0x0

    .line 138
    if-eqz v4, :cond_1b

    .line 139
    iget-object v7, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v7, v5}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 140
    iget-object v5, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v5}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    goto/16 :goto_1b

    .line 133
    .end local v0    # "request":Lokhttp3/Request;
    .end local v1    # "followUpCount":I
    .end local v2    # "priorResponse":Lokhttp3/Response;
    .end local v3    # "response":Lokhttp3/Response;
    .end local v4    # "releaseConnection":Z
    .end local p1    # "chain":Lokhttp3/Interceptor$Chain;
    :cond_10b
    :try_start_10b
    throw v6

    .line 126
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v0    # "request":Lokhttp3/Request;
    .restart local v1    # "followUpCount":I
    .restart local v2    # "priorResponse":Lokhttp3/Response;
    .restart local v3    # "response":Lokhttp3/Response;
    .restart local v4    # "releaseConnection":Z
    .restart local p1    # "chain":Lokhttp3/Interceptor$Chain;
    :catch_10c
    move-exception v6

    .line 128
    .local v6, "e":Lokhttp3/internal/connection/RouteException;
    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLokhttp3/Request;)Z

    move-result v7
    :try_end_116
    .catchall {:try_start_10b .. :try_end_116} :catchall_f2

    if-eqz v7, :cond_127

    .line 129
    const/4 v4, 0x0

    .line 138
    if-eqz v4, :cond_1b

    .line 139
    iget-object v7, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v7, v5}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 140
    iget-object v5, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v5}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    goto/16 :goto_1b

    .line 128
    :cond_127
    :try_start_127
    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v7

    .end local v0    # "request":Lokhttp3/Request;
    .end local v1    # "followUpCount":I
    .end local v2    # "priorResponse":Lokhttp3/Response;
    .end local v3    # "response":Lokhttp3/Response;
    .end local v4    # "releaseConnection":Z
    .end local p1    # "chain":Lokhttp3/Interceptor$Chain;
    throw v7
    :try_end_12c
    .catchall {:try_start_127 .. :try_end_12c} :catchall_f2

    .line 138
    .end local v6    # "e":Lokhttp3/internal/connection/RouteException;
    .restart local v0    # "request":Lokhttp3/Request;
    .restart local v1    # "followUpCount":I
    .restart local v2    # "priorResponse":Lokhttp3/Response;
    .restart local v3    # "response":Lokhttp3/Response;
    .restart local v4    # "releaseConnection":Z
    .restart local p1    # "chain":Lokhttp3/Interceptor$Chain;
    :goto_12c
    if-eqz v4, :cond_138

    .line 139
    iget-object v7, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v7, v5}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 140
    iget-object v5, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v5}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    :cond_138
    throw v6

    .line 117
    .end local v3    # "response":Lokhttp3/Response;
    .end local v4    # "releaseConnection":Z
    :cond_139
    iget-object v3, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v3}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    .line 118
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_147

    :goto_146
    throw v3

    :goto_147
    goto :goto_146
.end method

.method public isCanceled()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public isForWebSocket()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    return v0
.end method

.method public setForWebSocket(Z)V
    .registers 2
    .param p1, "forWebSocket"    # Z

    .line 96
    iput-boolean p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    .line 97
    return-void
.end method

.method public streamAllocation()Lokhttp3/internal/connection/StreamAllocation;
    .registers 2

    .line 104
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
