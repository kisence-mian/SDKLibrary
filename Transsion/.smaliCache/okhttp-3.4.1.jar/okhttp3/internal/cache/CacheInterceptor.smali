.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final EMPTY_BODY:Lokhttp3/ResponseBody;


# instance fields
.field final cache:Lokhttp3/internal/cache/InternalCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor$1;

    invoke-direct {v0}, Lokhttp3/internal/cache/CacheInterceptor$1;-><init>()V

    sput-object v0, Lokhttp3/internal/cache/CacheInterceptor;->EMPTY_BODY:Lokhttp3/ResponseBody;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/cache/InternalCache;)V
    .registers 2
    .param p1, "cache"    # Lokhttp3/internal/cache/InternalCache;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    .line 66
    return-void
.end method

.method private cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;
    .registers 11
    .param p1, "cacheRequest"    # Lokhttp3/internal/cache/CacheRequest;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    if-nez p1, :cond_3

    return-object p2

    .line 185
    :cond_3
    invoke-interface {p1}, Lokhttp3/internal/cache/CacheRequest;->body()Lokio/Sink;

    move-result-object v0

    .line 186
    .local v0, "cacheBodyUnbuffered":Lokio/Sink;
    if-nez v0, :cond_a

    return-object p2

    .line 188
    :cond_a
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    .line 189
    .local v1, "source":Lokio/BufferedSource;
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    .line 191
    .local v2, "cacheBody":Lokio/BufferedSink;
    new-instance v3, Lokhttp3/internal/cache/CacheInterceptor$2;

    invoke-direct {v3, p0, v1, p1, v2}, Lokhttp3/internal/cache/CacheInterceptor$2;-><init>(Lokhttp3/internal/cache/CacheInterceptor;Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V

    .line 233
    .local v3, "cacheWritingSource":Lokio/Source;
    invoke-virtual {p2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v4

    new-instance v5, Lokhttp3/internal/http/RealResponseBody;

    .line 234
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v6

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v4

    .line 235
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v4

    .line 233
    return-object v4
.end method

.method private static combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .registers 8
    .param p0, "cachedHeaders"    # Lokhttp3/Headers;
    .param p1, "networkHeaders"    # Lokhttp3/Headers;

    .line 262
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 264
    .local v0, "result":Lokhttp3/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_a
    if-ge v1, v2, :cond_39

    .line 265
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Warning"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 268
    goto :goto_36

    .line 270
    :cond_25
    invoke-static {v3}, Lokhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {p1, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_36

    .line 271
    :cond_31
    sget-object v5, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v5, v0, v3, v4}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 275
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_39
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v2

    .restart local v2    # "size":I
    :goto_3e
    if-ge v1, v2, :cond_5f

    .line 276
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 277
    .restart local v3    # "fieldName":Ljava/lang/String;
    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 278
    goto :goto_5c

    .line 280
    :cond_4d
    invoke-static {v3}, Lokhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 281
    sget-object v4, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v3, v5}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .end local v3    # "fieldName":Ljava/lang/String;
    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 285
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_5f
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    return-object v1
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .registers 2
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 293
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 294
    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 295
    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 296
    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 297
    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 298
    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 299
    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 300
    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    .line 293
    :goto_43
    return v0
.end method

.method private maybeCache(Lokhttp3/Response;Lokhttp3/Request;Lokhttp3/internal/cache/InternalCache;)Lokhttp3/internal/cache/CacheRequest;
    .registers 6
    .param p1, "userResponse"    # Lokhttp3/Response;
    .param p2, "networkRequest"    # Lokhttp3/Request;
    .param p3, "responseCache"    # Lokhttp3/internal/cache/InternalCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    .line 161
    :cond_4
    invoke-static {p1, p2}, Lokhttp3/internal/cache/CacheStrategy;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 162
    invoke-virtual {p2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 164
    :try_start_14
    invoke-interface {p3, p2}, Lokhttp3/internal/cache/InternalCache;->remove(Lokhttp3/Request;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    .line 167
    goto :goto_19

    .line 165
    :catch_18
    move-exception v1

    .line 169
    :cond_19
    :goto_19
    return-object v0

    .line 173
    :cond_1a
    invoke-interface {p3, p1}, Lokhttp3/internal/cache/InternalCache;->put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method private static stripBody(Lokhttp3/Response;)Lokhttp3/Response;
    .registers 3
    .param p0, "response"    # Lokhttp3/Response;

    .line 151
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 152
    invoke-virtual {p0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, p0

    .line 151
    :goto_17
    return-object v0
.end method

.method private static validate(Lokhttp3/Response;Lokhttp3/Response;)Z
    .registers 10
    .param p0, "cached"    # Lokhttp3/Response;
    .param p1, "network"    # Lokhttp3/Response;

    .line 243
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x130

    if-ne v0, v2, :cond_a

    return v1

    .line 248
    :cond_a
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string v2, "Last-Modified"

    invoke-virtual {v0, v2}, Lokhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 249
    .local v0, "lastModified":Ljava/util/Date;
    if-eqz v0, :cond_2d

    .line 250
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokhttp3/Headers;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 251
    .local v2, "networkLastModified":Ljava/util/Date;
    if-eqz v2, :cond_2d

    .line 252
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_2d

    .line 253
    return v1

    .line 257
    .end local v2    # "networkLastModified":Ljava/util/Date;
    :cond_2d
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 12
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    if-eqz v0, :cond_d

    .line 70
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/internal/cache/InternalCache;->get(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 73
    .local v0, "cacheCandidate":Lokhttp3/Response;
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 75
    .local v1, "now":J
    new-instance v3, Lokhttp3/internal/cache/CacheStrategy$Factory;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lokhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLokhttp3/Request;Lokhttp3/Response;)V

    invoke-virtual {v3}, Lokhttp3/internal/cache/CacheStrategy$Factory;->get()Lokhttp3/internal/cache/CacheStrategy;

    move-result-object v3

    .line 76
    .local v3, "strategy":Lokhttp3/internal/cache/CacheStrategy;
    iget-object v4, v3, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    .line 77
    .local v4, "networkRequest":Lokhttp3/Request;
    iget-object v5, v3, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    .line 79
    .local v5, "cacheResponse":Lokhttp3/Response;
    iget-object v6, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    if-eqz v6, :cond_2a

    .line 80
    invoke-interface {v6, v3}, Lokhttp3/internal/cache/InternalCache;->trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V

    .line 83
    :cond_2a
    if-eqz v0, :cond_35

    if-nez v5, :cond_35

    .line 84
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 88
    :cond_35
    if-nez v4, :cond_71

    if-nez v5, :cond_71

    .line 89
    new-instance v6, Lokhttp3/Response$Builder;

    invoke-direct {v6}, Lokhttp3/Response$Builder;-><init>()V

    .line 90
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v6

    sget-object v7, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 91
    invoke-virtual {v6, v7}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v6

    const/16 v7, 0x1f8

    .line 92
    invoke-virtual {v6, v7}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v6

    .line 93
    const-string v7, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v6, v7}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v6

    sget-object v7, Lokhttp3/internal/cache/CacheInterceptor;->EMPTY_BODY:Lokhttp3/ResponseBody;

    .line 94
    invoke-virtual {v6, v7}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v6

    const-wide/16 v7, -0x1

    .line 95
    invoke-virtual {v6, v7, v8}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v6

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v6

    .line 97
    invoke-virtual {v6}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v6

    .line 89
    return-object v6

    .line 101
    :cond_71
    if-nez v4, :cond_84

    .line 102
    invoke-virtual {v5}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v6

    .line 103
    invoke-static {v5}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v6

    .line 104
    invoke-virtual {v6}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v6

    .line 102
    return-object v6

    .line 107
    :cond_84
    const/4 v6, 0x0

    .line 109
    .local v6, "networkResponse":Lokhttp3/Response;
    :try_start_85
    invoke-interface {p1, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v7
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_10b

    move-object v6, v7

    .line 112
    if-nez v6, :cond_95

    if-eqz v0, :cond_95

    .line 113
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 118
    :cond_95
    if-eqz v5, :cond_de

    .line 119
    invoke-static {v5, v6}, Lokhttp3/internal/cache/CacheInterceptor;->validate(Lokhttp3/Response;Lokhttp3/Response;)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 120
    invoke-virtual {v5}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v7

    .line 121
    invoke-virtual {v5}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v8

    invoke-virtual {v6}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v9

    invoke-static {v8, v9}, Lokhttp3/internal/cache/CacheInterceptor;->combine(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v7

    .line 122
    invoke-static {v5}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v7

    .line 123
    invoke-static {v6}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v7

    .line 124
    invoke-virtual {v7}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v7

    .line 125
    .local v7, "response":Lokhttp3/Response;
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->close()V

    .line 129
    iget-object v8, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {v8}, Lokhttp3/internal/cache/InternalCache;->trackConditionalCacheHit()V

    .line 130
    iget-object v8, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {v8, v5, v7}, Lokhttp3/internal/cache/InternalCache;->update(Lokhttp3/Response;Lokhttp3/Response;)V

    .line 131
    return-object v7

    .line 133
    .end local v7    # "response":Lokhttp3/Response;
    :cond_d7
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 137
    :cond_de
    invoke-virtual {v6}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v7

    .line 138
    invoke-static {v5}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokhttp3/Response$Builder;->cacheResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v7

    .line 139
    invoke-static {v6}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokhttp3/Response$Builder;->networkResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v7

    .line 140
    invoke-virtual {v7}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v7

    .line 142
    .restart local v7    # "response":Lokhttp3/Response;
    invoke-static {v7}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 143
    invoke-virtual {v6}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v8

    iget-object v9, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-direct {p0, v7, v8, v9}, Lokhttp3/internal/cache/CacheInterceptor;->maybeCache(Lokhttp3/Response;Lokhttp3/Request;Lokhttp3/internal/cache/InternalCache;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object v8

    .line 144
    .local v8, "cacheRequest":Lokhttp3/internal/cache/CacheRequest;
    invoke-direct {p0, v8, v7}, Lokhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v7

    .line 147
    .end local v8    # "cacheRequest":Lokhttp3/internal/cache/CacheRequest;
    :cond_10a
    return-object v7

    .line 112
    .end local v7    # "response":Lokhttp3/Response;
    :catchall_10b
    move-exception v7

    if-nez v6, :cond_117

    if-eqz v0, :cond_117

    .line 113
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-static {v8}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_117
    throw v7
.end method
