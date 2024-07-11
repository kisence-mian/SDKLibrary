.class public Lcom/facebook/internal/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;,
        Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;,
        Lcom/facebook/internal/ImageDownloader$DownloaderContext;,
        Lcom/facebook/internal/ImageDownloader$RequestKey;
    }
.end annotation


# static fields
.field private static final CACHE_READ_QUEUE_MAX_CONCURRENT:I = 0x2

.field private static final DOWNLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field private static cacheReadQueue:Lcom/facebook/internal/WorkQueue;

.field private static downloadQueue:Lcom/facebook/internal/WorkQueue;

.field private static handler:Landroid/os/Handler;

.field private static final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/internal/ImageDownloader$RequestKey;",
            "Lcom/facebook/internal/ImageDownloader$DownloaderContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    .line 49
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .line 44
    invoke-static {p0, p1, p2}, Lcom/facebook/internal/ImageDownloader;->readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p1, "x1"    # Landroid/content/Context;

    .line 44
    invoke-static {p0, p1}, Lcom/facebook/internal/ImageDownloader;->download(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V

    return-void
.end method

.method public static cancelRequest(Lcom/facebook/internal/ImageRequest;)Z
    .registers 6
    .param p0, "request"    # Lcom/facebook/internal/ImageRequest;

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "cancelled":Z
    new-instance v1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 85
    .local v1, "key":Lcom/facebook/internal/ImageDownloader$RequestKey;
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v2

    .line 86
    :try_start_11
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 87
    .local v3, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v3, :cond_29

    .line 92
    const/4 v0, 0x1

    .line 94
    iget-object v4, v3, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {v4}, Lcom/facebook/internal/WorkQueue$WorkItem;->cancel()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 95
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 99
    :cond_26
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    .line 102
    .end local v3    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :cond_29
    :goto_29
    monitor-exit v2

    .line 104
    return v0

    .line 102
    :catchall_2b
    move-exception v3

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method public static clearCache(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 118
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->clearCache(Landroid/content/Context;)V

    .line 119
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->clearCache()V

    .line 120
    return-void
.end method

.method private static download(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .registers 15
    .param p0, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p1, "context"    # Landroid/content/Context;

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 226
    .local v1, "stream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 227
    .local v2, "error":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 228
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    .line 231
    .local v4, "issueResponse":Z
    const/4 v5, 0x0

    :try_start_6
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 232
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    move-object v0, v7

    .line 233
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 235
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_a8

    .line 265
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    goto :goto_5f

    .line 239
    :sswitch_27
    const/4 v4, 0x0

    .line 241
    const-string v7, "location"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, "redirectLocation":Ljava/lang/String;
    invoke-static {v7}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9a

    .line 243
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 244
    .local v8, "redirectUri":Landroid/net/Uri;
    iget-object v9, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-static {v9, v8}, Lcom/facebook/internal/UrlRedirectCache;->cacheUriRedirect(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 248
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v9

    .line 249
    .local v9, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v9, :cond_53

    iget-boolean v10, v9, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v10, :cond_53

    .line 250
    iget-object v10, v9, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    new-instance v11, Lcom/facebook/internal/ImageDownloader$RequestKey;

    iget-object v12, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    invoke-direct {v11, v8, v12}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    invoke-static {v10, v11, v5}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    .line 255
    .end local v8    # "redirectUri":Landroid/net/Uri;
    .end local v9    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :cond_53
    goto :goto_9a

    .line 260
    .end local v7    # "redirectLocation":Ljava/lang/String;
    :sswitch_54
    invoke-static {p1, v0}, Lcom/facebook/internal/ImageResponseCache;->interceptAndCacheImageStream(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v7

    move-object v1, v7

    .line 261
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v3, v7

    .line 262
    goto :goto_9a

    .line 265
    :goto_5f
    move-object v1, v7

    .line 266
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v7, "errorMessageBuilder":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_80

    .line 268
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 269
    .local v8, "reader":Ljava/io/InputStreamReader;
    const/16 v9, 0x80

    new-array v9, v9, [C

    .line 271
    .local v9, "buffer":[C
    :goto_70
    array-length v10, v9

    invoke-virtual {v8, v9, v5, v10}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v10

    move v11, v10

    .local v11, "bufferLength":I
    if-lez v10, :cond_7c

    .line 272
    invoke-virtual {v7, v9, v5, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 274
    :cond_7c
    invoke-static {v8}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 275
    .end local v8    # "reader":Ljava/io/InputStreamReader;
    .end local v9    # "buffer":[C
    .end local v11    # "bufferLength":I
    goto :goto_85

    .line 276
    :cond_80
    const-string v8, "Unexpected error while downloading an image."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :goto_85
    new-instance v8, Lcom/facebook/FacebookException;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_8e} :catch_98
    .catchall {:try_start_6 .. :try_end_8e} :catchall_90

    move-object v2, v8

    goto :goto_9a

    .line 284
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "errorMessageBuilder":Ljava/lang/StringBuilder;
    :catchall_90
    move-exception v5

    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 285
    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 286
    throw v5

    .line 281
    :catch_98
    move-exception v6

    .line 282
    .local v6, "e":Ljava/io/IOException;
    move-object v2, v6

    .line 284
    .end local v6    # "e":Ljava/io/IOException;
    :cond_9a
    :goto_9a
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 285
    invoke-static {v0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 286
    nop

    .line 288
    if-eqz v4, :cond_a6

    .line 289
    invoke-static {p0, v2, v3, v5}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 291
    :cond_a6
    return-void

    nop

    :sswitch_data_a8
    .sparse-switch
        0xc8 -> :sswitch_54
        0x12d -> :sswitch_27
        0x12e -> :sswitch_27
    .end sparse-switch
.end method

.method public static downloadAsync(Lcom/facebook/internal/ImageRequest;)V
    .registers 5
    .param p0, "request"    # Lcom/facebook/internal/ImageRequest;

    .line 59
    if-nez p0, :cond_3

    .line 60
    return-void

    .line 69
    :cond_3
    new-instance v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 70
    .local v0, "key":Lcom/facebook/internal/ImageDownloader$RequestKey;
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    .line 71
    :try_start_13
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 72
    .local v2, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v2, :cond_26

    .line 73
    iput-object p0, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    .line 74
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    .line 75
    iget-object v3, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {v3}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    goto :goto_2d

    .line 77
    :cond_26
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->isCachedRedirectAllowed()Z

    move-result v3

    invoke-static {p0, v0, v3}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    .line 79
    .end local v2    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :goto_2d
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method private static enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .registers 6
    .param p0, "request"    # Lcom/facebook/internal/ImageRequest;
    .param p1, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p2, "allowCachedRedirects"    # Z

    .line 126
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;

    .line 130
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    .line 126
    invoke-static {p0, p1, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method private static enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .registers 5
    .param p0, "request"    # Lcom/facebook/internal/ImageRequest;
    .param p1, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;

    .line 134
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;

    .line 138
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    .line 134
    invoke-static {p0, p1, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method private static enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V
    .registers 7
    .param p0, "request"    # Lcom/facebook/internal/ImageRequest;
    .param p1, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p2, "workQueue"    # Lcom/facebook/internal/WorkQueue;
    .param p3, "workItem"    # Ljava/lang/Runnable;

    .line 146
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v0

    .line 147
    :try_start_3
    new-instance v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;-><init>(Lcom/facebook/internal/ImageDownloader$1;)V

    .line 148
    .local v1, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    iput-object p0, v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    .line 149
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p2, p3}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 160
    .end local v1    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private static declared-synchronized getHandler()Landroid/os/Handler;
    .registers 3

    const-class v0, Lcom/facebook/internal/ImageDownloader;

    monitor-enter v0

    .line 294
    :try_start_3
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    if-nez v1, :cond_12

    .line 295
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    .line 297
    :cond_12
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    .line 293
    :catchall_16
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .registers 15
    .param p0, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p1, "error"    # Ljava/lang/Exception;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "isCachedRedirect"    # Z

    .line 170
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v0

    .line 171
    .local v0, "completedRequestContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v0, :cond_24

    iget-boolean v1, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v1, :cond_24

    .line 172
    iget-object v1, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    .line 173
    .local v1, "request":Lcom/facebook/internal/ImageRequest;
    invoke-virtual {v1}, Lcom/facebook/internal/ImageRequest;->getCallback()Lcom/facebook/internal/ImageRequest$Callback;

    move-result-object v8

    .line 174
    .local v8, "callback":Lcom/facebook/internal/ImageRequest$Callback;
    if-eqz v8, :cond_24

    .line 175
    invoke-static {}, Lcom/facebook/internal/ImageDownloader;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/facebook/internal/ImageDownloader$1;

    move-object v2, v10

    move-object v3, v1

    move-object v4, p1

    move v5, p3

    move-object v6, p2

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/facebook/internal/ImageDownloader$1;-><init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    .end local v1    # "request":Lcom/facebook/internal/ImageRequest;
    .end local v8    # "callback":Lcom/facebook/internal/ImageRequest$Callback;
    :cond_24
    return-void
.end method

.method public static prioritizeRequest(Lcom/facebook/internal/ImageRequest;)V
    .registers 5
    .param p0, "request"    # Lcom/facebook/internal/ImageRequest;

    .line 108
    new-instance v0, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 109
    .local v0, "key":Lcom/facebook/internal/ImageDownloader$RequestKey;
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    .line 110
    :try_start_10
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 111
    .local v2, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v2, :cond_1d

    .line 112
    iget-object v3, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {v3}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    .line 114
    .end local v2    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :cond_1d
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method private static readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .registers 7
    .param p0, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowCachedRedirects"    # Z

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "cachedStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 196
    .local v1, "isCachedRedirect":Z
    if-eqz p2, :cond_16

    .line 197
    iget-object v2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/facebook/internal/UrlRedirectCache;->getRedirectedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 198
    .local v2, "redirectUri":Landroid/net/Uri;
    if-eqz v2, :cond_16

    .line 199
    invoke-static {v2, p1}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    move v1, v3

    .line 204
    .end local v2    # "redirectUri":Landroid/net/Uri;
    :cond_16
    if-nez v1, :cond_1e

    .line 205
    iget-object v2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    .line 208
    :cond_1e
    if-eqz v0, :cond_2c

    .line 210
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 211
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 212
    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 213
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_3b

    .line 216
    :cond_2c
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v2

    .line 217
    .local v2, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v2, :cond_3b

    iget-boolean v3, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v3, :cond_3b

    .line 218
    iget-object v3, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    invoke-static {v3, p0}, Lcom/facebook/internal/ImageDownloader;->enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    .line 221
    .end local v2    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :cond_3b
    :goto_3b
    return-void
.end method

.method private static removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    .registers 3
    .param p0, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;

    .line 301
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v0

    .line 302
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    monitor-exit v0

    return-object v1

    .line 303
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
