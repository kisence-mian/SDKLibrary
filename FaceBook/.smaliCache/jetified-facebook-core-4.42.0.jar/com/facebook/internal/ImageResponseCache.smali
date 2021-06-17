.class Lcom/facebook/internal/ImageResponseCache;
.super Ljava/lang/Object;
.source "ImageResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field private static imageCache:Lcom/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/facebook/internal/ImageResponseCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearCache(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 110
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/internal/FileLruCache;->clearCache()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 113
    goto :goto_28

    .line 111
    :catch_8
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x5

    sget-object v3, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

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

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :goto_28
    return-void
.end method

.method static declared-synchronized getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/facebook/internal/ImageResponseCache;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lcom/facebook/internal/ImageResponseCache;->imageCache:Lcom/facebook/internal/FileLruCache;

    if-nez v1, :cond_15

    .line 45
    new-instance v1, Lcom/facebook/internal/FileLruCache;

    sget-object v2, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v1, Lcom/facebook/internal/ImageResponseCache;->imageCache:Lcom/facebook/internal/FileLruCache;

    .line 47
    :cond_15
    sget-object v1, Lcom/facebook/internal/ImageResponseCache;->imageCache:Lcom/facebook/internal/FileLruCache;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-object v1

    .line 43
    .end local p0    # "context":Landroid/content/Context;
    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getCachedImageStream(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;
    .registers 8
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "imageStream":Ljava/io/InputStream;
    if-eqz p0, :cond_24

    .line 55
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->isCDNURL(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 57
    :try_start_9
    invoke-static {p1}, Lcom/facebook/internal/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object v1

    .line 58
    .local v1, "cache":Lcom/facebook/internal/FileLruCache;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_17

    move-object v0, v2

    .line 61
    .end local v1    # "cache":Lcom/facebook/internal/FileLruCache;
    goto :goto_24

    .line 59
    :catch_17
    move-exception v1

    .line 60
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v3, 0x5

    sget-object v4, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v1    # "e":Ljava/io/IOException;
    :cond_24
    :goto_24
    return-object v0
.end method

.method static interceptAndCacheImageStream(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "stream":Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_34

    .line 74
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 75
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 77
    :try_start_19
    invoke-static {v1}, Lcom/facebook/internal/ImageResponseCache;->isCDNURL(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 78
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object v2

    .line 81
    .local v2, "cache":Lcom/facebook/internal/FileLruCache;
    nop

    .line 82
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;

    invoke-direct {v4, v0, p1}, Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 81
    invoke-virtual {v2, v3, v4}, Lcom/facebook/internal/FileLruCache;->interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_31} :catch_33

    move-object v0, v3

    .line 87
    .end local v2    # "cache":Lcom/facebook/internal/FileLruCache;
    :cond_32
    goto :goto_34

    .line 85
    :catch_33
    move-exception v2

    .line 89
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_34
    :goto_34
    return-object v0
.end method

.method private static isCDNURL(Landroid/net/Uri;)Z
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;

    .line 93
    if-eqz p0, :cond_21

    .line 94
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "uriHost":Ljava/lang/String;
    const-string v1, "fbcdn.net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    .line 97
    return v2

    .line 100
    :cond_10
    const-string v1, "fbcdn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "akamaihd.net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 101
    return v2

    .line 105
    .end local v0    # "uriHost":Ljava/lang/String;
    :cond_21
    const/4 v0, 0x0

    return v0
.end method
