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

    .line 170
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 172
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache;->access$000(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    invoke-static {v4}, Lokhttp3/internal/cache/DiskLruCache;->access$100(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v4

    or-int/2addr v1, v4

    if-eqz v1, :cond_1b

    .line 174
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_4f

    return-void

    .line 178
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # invokes: Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache;->access$200(Lokhttp3/internal/cache/DiskLruCache;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_21
    .catchall {:try_start_1b .. :try_end_20} :catchall_4f

    .line 181
    goto :goto_27

    .line 179
    :catch_21
    move-exception v1

    .line 180
    .local v1, "ignored":Ljava/io/IOException;
    :try_start_22
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # setter for: Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    invoke-static {v4, v3}, Lokhttp3/internal/cache/DiskLruCache;->access$302(Lokhttp3/internal/cache/DiskLruCache;Z)Z
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_4f

    .line 184
    .end local v1    # "ignored":Ljava/io/IOException;
    :goto_27
    :try_start_27
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # invokes: Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache;->access$400(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 185
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # invokes: Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache;->access$500(Lokhttp3/internal/cache/DiskLruCache;)V

    .line 186
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # setter for: Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    invoke-static {v1, v2}, Lokhttp3/internal/cache/DiskLruCache;->access$602(Lokhttp3/internal/cache/DiskLruCache;I)I
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_39} :catch_3a
    .catchall {:try_start_27 .. :try_end_39} :catchall_4f

    .line 191
    :cond_39
    goto :goto_4d

    .line 188
    :catch_3a
    move-exception v1

    .line 189
    .local v1, "e":Ljava/io/IOException;
    :try_start_3b
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # setter for: Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z
    invoke-static {v2, v3}, Lokhttp3/internal/cache/DiskLruCache;->access$702(Lokhttp3/internal/cache/DiskLruCache;Z)Z

    .line 190
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->NULL_SINK:Lokio/Sink;
    invoke-static {}, Lokhttp3/internal/cache/DiskLruCache;->access$900()Lokio/Sink;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v3

    # setter for: Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    invoke-static {v2, v3}, Lokhttp3/internal/cache/DiskLruCache;->access$802(Lokhttp3/internal/cache/DiskLruCache;Lokio/BufferedSink;)Lokio/BufferedSink;

    .line 192
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4d
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_4f

    throw v1
.end method
