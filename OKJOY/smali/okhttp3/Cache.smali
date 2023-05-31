.class public final Lokhttp3/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cache$CacheResponseBody;,
        Lokhttp3/Cache$Entry;,
        Lokhttp3/Cache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field final cache:Lokhttp3/internal/cache/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lokhttp3/internal/cache/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field writeAbortCount:I

.field writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .registers 6
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    .prologue
    .line 182
    sget-object v0, Lokhttp3/internal/io/FileSystem;->SYSTEM:Lokhttp3/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/Cache;-><init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V

    .line 183
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V
    .registers 11
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J
    .param p4, "fileSystem"    # Lokhttp3/internal/io/FileSystem;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Lokhttp3/Cache$1;

    invoke-direct {v0, p0}, Lokhttp3/Cache$1;-><init>(Lokhttp3/Cache;)V

    iput-object v0, p0, Lokhttp3/Cache;->internalCache:Lokhttp3/internal/cache/InternalCache;

    .line 186
    const v2, 0x31191

    const/4 v3, 0x2

    move-object v0, p4

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/cache/DiskLruCache;->create(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp3/internal/cache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    .line 187
    return-void
.end method

.method private abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .registers 3
    .param p1, "editor"    # Lokhttp3/internal/cache/DiskLruCache$Editor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 283
    if-eqz p1, :cond_5

    .line 284
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 288
    :cond_5
    :goto_5
    return-void

    .line 286
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static key(Lokhttp3/HttpUrl;)Ljava/lang/String;
    .registers 2
    .param p0, "url"    # Lokhttp3/HttpUrl;

    .prologue
    .line 190
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static readInt(Lokio/BufferedSource;)I
    .registers 8
    .param p0, "source"    # Lokio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    :try_start_0
    invoke-interface {p0}, Lokio/BufferedSource;->readDecimalLong()J

    move-result-wide v2

    .line 727
    .local v2, "result":J
    invoke-interface {p0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, "line":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1b

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_49

    .line 729
    :cond_1b
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected an int but was \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3e} :catch_3e

    .line 732
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "result":J
    :catch_3e
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 731
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "result":J
    :cond_49
    long-to-int v4, v2

    return v4
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    .line 396
    return-void
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->delete()V

    .line 311
    return-void
.end method

.method public directory()Ljava/io/File;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public evictAll()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->evictAll()V

    .line 319
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->flush()V

    .line 392
    return-void
.end method

.method get(Lokhttp3/Request;)Lokhttp3/Response;
    .registers 9
    .param p1, "request"    # Lokhttp3/Request;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 194
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "key":Ljava/lang/String;
    :try_start_9
    iget-object v6, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v6, v2}, Lokhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_13

    move-result-object v4

    .line 199
    .local v4, "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    if-nez v4, :cond_16

    move-object v3, v5

    .line 221
    .end local v4    # "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    :cond_12
    :goto_12
    return-object v3

    .line 202
    :catch_13
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v3, v5

    .line 204
    goto :goto_12

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    :cond_16
    :try_start_16
    new-instance v1, Lokhttp3/Cache$Entry;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v6

    invoke-direct {v1, v6}, Lokhttp3/Cache$Entry;-><init>(Lokio/Source;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_20} :catch_33

    .line 214
    .local v1, "entry":Lokhttp3/Cache$Entry;
    invoke-virtual {v1, v4}, Lokhttp3/Cache$Entry;->response(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;

    move-result-object v3

    .line 216
    .local v3, "response":Lokhttp3/Response;
    invoke-virtual {v1, p1, v3}, Lokhttp3/Cache$Entry;->matches(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 217
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v5

    .line 218
    goto :goto_12

    .line 209
    .end local v1    # "entry":Lokhttp3/Cache$Entry;
    .end local v3    # "response":Lokhttp3/Response;
    :catch_33
    move-exception v0

    .line 210
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v5

    .line 211
    goto :goto_12
.end method

.method public declared-synchronized hitCount()I
    .registers 2

    .prologue
    .line 427
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 303
    return-void
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public maxSize()J
    .registers 3

    .prologue
    .line 387
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized networkCount()I
    .registers 2

    .prologue
    .line 423
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->networkCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method put(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    .registers 9
    .param p1, "response"    # Lokhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 225
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "requestMethod":Ljava/lang/String;
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 229
    :try_start_17
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {p0, v5}, Lokhttp3/Cache;->remove(Lokhttp3/Request;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_56

    .line 257
    :cond_1e
    :goto_1e
    return-object v4

    .line 235
    :cond_1f
    const-string v5, "GET"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 242
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Response;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 246
    new-instance v2, Lokhttp3/Cache$Entry;

    invoke-direct {v2, p1}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    .line 247
    .local v2, "entry":Lokhttp3/Cache$Entry;
    const/4 v1, 0x0

    .line 249
    .local v1, "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_start_33
    iget-object v5, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-static {v6}, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_1e

    .line 253
    invoke-virtual {v2, v1}, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 254
    new-instance v5, Lokhttp3/Cache$CacheRequestImpl;

    invoke-direct {v5, p0, v1}, Lokhttp3/Cache$CacheRequestImpl;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_4f} :catch_51

    move-object v4, v5

    goto :goto_1e

    .line 255
    :catch_51
    move-exception v0

    .line 256
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lokhttp3/Cache;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    goto :goto_1e

    .line 230
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    .end local v2    # "entry":Lokhttp3/Cache$Entry;
    :catch_56
    move-exception v5

    goto :goto_1e
.end method

.method remove(Lokhttp3/Request;)V
    .registers 4
    .param p1, "request"    # Lokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 263
    return-void
.end method

.method public declared-synchronized requestCount()I
    .registers 2

    .prologue
    .line 431
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->requestCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lokhttp3/Cache;->cache:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized trackConditionalCacheHit()V
    .registers 2

    .prologue
    .line 419
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->hitCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 420
    monitor-exit p0

    return-void

    .line 419
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V
    .registers 3
    .param p1, "cacheStrategy"    # Lokhttp3/internal/cache/CacheStrategy;

    .prologue
    .line 407
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->requestCount:I

    .line 409
    iget-object v0, p1, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    if-eqz v0, :cond_13

    .line 411
    iget v0, p0, Lokhttp3/Cache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->networkCount:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1e

    .line 416
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    .line 412
    :cond_13
    :try_start_13
    iget-object v0, p1, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    if-eqz v0, :cond_11

    .line 414
    iget v0, p0, Lokhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->hitCount:I
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 407
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method update(Lokhttp3/Response;Lokhttp3/Response;)V
    .registers 8
    .param p1, "cached"    # Lokhttp3/Response;
    .param p2, "network"    # Lokhttp3/Response;

    .prologue
    .line 266
    new-instance v2, Lokhttp3/Cache$Entry;

    invoke-direct {v2, p2}, Lokhttp3/Cache$Entry;-><init>(Lokhttp3/Response;)V

    .line 267
    .local v2, "entry":Lokhttp3/Cache$Entry;
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    check-cast v4, Lokhttp3/Cache$CacheResponseBody;

    iget-object v3, v4, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 268
    .local v3, "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    const/4 v1, 0x0

    .line 270
    .local v1, "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_start_e
    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->edit()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_1a

    .line 272
    invoke-virtual {v2, v1}, Lokhttp3/Cache$Entry;->writeTo(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 273
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_1b

    .line 278
    :cond_1a
    :goto_1a
    return-void

    .line 275
    :catch_1b
    move-exception v0

    .line 276
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lokhttp3/Cache;->abortQuietly(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    goto :goto_1a
.end method

.method public urls()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    new-instance v0, Lokhttp3/Cache$2;

    invoke-direct {v0, p0}, Lokhttp3/Cache$2;-><init>(Lokhttp3/Cache;)V

    return-object v0
.end method

.method public declared-synchronized writeAbortCount()I
    .registers 2

    .prologue
    .line 374
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->writeAbortCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeSuccessCount()I
    .registers 2

    .prologue
    .line 378
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lokhttp3/Cache;->writeSuccessCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
