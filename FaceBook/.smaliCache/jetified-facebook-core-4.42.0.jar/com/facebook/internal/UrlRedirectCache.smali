.class Lcom/facebook/internal/UrlRedirectCache;
.super Ljava/lang/Object;
.source "UrlRedirectCache.java"


# static fields
.field private static final REDIRECT_CONTENT_TAG:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;

.field private static urlRedirectCache:Lcom/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    const-class v0, Lcom/facebook/internal/UrlRedirectCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Redirect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cacheUriRedirect(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 6
    .param p0, "fromUri"    # Landroid/net/Uri;
    .param p1, "toUri"    # Landroid/net/Uri;

    .line 90
    if-eqz p0, :cond_2c

    if-nez p1, :cond_5

    goto :goto_2c

    .line 94
    :cond_5
    const/4 v0, 0x0

    .line 96
    .local v0, "redirectStream":Ljava/io/OutputStream;
    :try_start_6
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->getCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v1

    .line 97
    .local v1, "cache":Lcom/facebook/internal/FileLruCache;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    move-object v0, v2

    .line 98
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_20} :catch_26
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    .end local v1    # "cache":Lcom/facebook/internal/FileLruCache;
    goto :goto_27

    .line 102
    :catchall_21
    move-exception v1

    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 103
    throw v1

    .line 99
    :catch_26
    move-exception v1

    .line 102
    :goto_27
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 103
    nop

    .line 104
    return-void

    .line 91
    .end local v0    # "redirectStream":Ljava/io/OutputStream;
    :cond_2c
    :goto_2c
    return-void
.end method

.method static clearCache()V
    .registers 6

    .line 108
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->getCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/internal/FileLruCache;->clearCache()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 111
    goto :goto_28

    .line 109
    :catch_8
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x5

    sget-object v3, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearCache failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :goto_28
    return-void
.end method

.method static declared-synchronized getCache()Lcom/facebook/internal/FileLruCache;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/facebook/internal/UrlRedirectCache;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    if-nez v1, :cond_15

    .line 45
    new-instance v1, Lcom/facebook/internal/FileLruCache;

    sget-object v2, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v1, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    .line 47
    :cond_15
    sget-object v1, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-object v1

    .line 43
    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getRedirectedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 12
    .param p0, "uri"    # Landroid/net/Uri;

    .line 51
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 52
    return-object v0

    .line 55
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "uriString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 59
    .local v2, "reader":Ljava/io/InputStreamReader;
    :try_start_9
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->getCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v3

    .line 60
    .local v3, "cache":Lcom/facebook/internal/FileLruCache;
    const/4 v4, 0x0

    .line 61
    .local v4, "redirectExists":Z
    :goto_e
    sget-object v5, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v6, v5

    .local v6, "stream":Ljava/io/InputStream;
    if-eqz v5, :cond_3d

    .line 62
    const/4 v4, 0x1

    .line 65
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v5

    .line 66
    const/16 v5, 0x80

    new-array v5, v5, [C

    .line 68
    .local v5, "buffer":[C
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v7, "urlBuilder":Ljava/lang/StringBuilder;
    :goto_27
    array-length v8, v5

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v9, v8}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v8

    move v10, v8

    .local v10, "bufferLength":I
    if-lez v8, :cond_34

    .line 70
    invoke-virtual {v7, v5, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 72
    :cond_34
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 75
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 76
    .end local v5    # "buffer":[C
    .end local v7    # "urlBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "bufferLength":I
    goto :goto_e

    .line 78
    :cond_3d
    if-eqz v4, :cond_47

    .line 79
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_43} :catch_4d
    .catchall {:try_start_9 .. :try_end_43} :catchall_48

    .line 83
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    return-object v0

    .line 78
    .end local v3    # "cache":Lcom/facebook/internal/FileLruCache;
    .end local v4    # "redirectExists":Z
    .end local v6    # "stream":Ljava/io/InputStream;
    :cond_47
    goto :goto_4e

    .line 83
    :catchall_48
    move-exception v0

    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    throw v0

    .line 81
    :catch_4d
    move-exception v3

    .line 83
    :goto_4e
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    nop

    .line 86
    return-object v0
.end method
