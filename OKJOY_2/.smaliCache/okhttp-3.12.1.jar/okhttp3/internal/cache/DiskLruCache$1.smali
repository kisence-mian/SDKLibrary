.class Lokhttp3/internal/cache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;)V
    .registers 2
    .param p1, "this$0"    # Lokhttp3/internal/cache/DiskLruCache;

    .line 169
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 171
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 172
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-boolean v1, v1, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_d

    move v1, v3

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-boolean v4, v4, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    or-int/2addr v1, v4

    if-eqz v1, :cond_17

    .line 173
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_47

    return-void

    .line 177
    :cond_17
    :try_start_17
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_1d
    .catchall {:try_start_17 .. :try_end_1c} :catchall_47

    .line 180
    goto :goto_22

    .line 178
    :catch_1d
    move-exception v1

    .line 179
    .local v1, "ignored":Ljava/io/IOException;
    :try_start_1e
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iput-boolean v3, v4, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_47

    .line 183
    .end local v1    # "ignored":Ljava/io/IOException;
    :goto_22
    :try_start_22
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 184
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    .line 185
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iput v2, v1, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_33} :catch_34
    .catchall {:try_start_22 .. :try_end_33} :catchall_47

    .line 190
    :cond_33
    goto :goto_45

    .line 187
    :catch_34
    move-exception v1

    .line 188
    .local v1, "e":Ljava/io/IOException;
    :try_start_35
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iput-boolean v3, v2, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    .line 189
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v3

    iput-object v3, v2, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    .line 191
    .end local v1    # "e":Ljava/io/IOException;
    :goto_45
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_47

    throw v1
.end method
