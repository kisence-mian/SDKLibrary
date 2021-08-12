.class public final Lokhttp3/internal/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private done:Z

.field final entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.field final written:[Z


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V
    .registers 4
    .param p1, "this$0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p2, "entry"    # Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 836
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 838
    iget-boolean v0, p2, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_11

    :cond_d
    iget v0, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Z

    :goto_11
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    .line 839
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 935
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_18

    .line 938
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v1, p0, :cond_13

    .line 939
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 941
    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 942
    monitor-exit v0

    .line 943
    return-void

    .line 936
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 942
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public abortUnlessCommitted()V
    .registers 4

    .line 946
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 947
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_17

    if-ne v1, p0, :cond_15

    .line 949
    :try_start_d
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_14
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 951
    goto :goto_15

    .line 950
    :catch_14
    move-exception v1

    .line 953
    :cond_15
    :goto_15
    :try_start_15
    monitor-exit v0

    .line 954
    return-void

    .line 953
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 918
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 919
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_17

    .line 922
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_13

    .line 923
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 925
    :cond_13
    iput-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 926
    monitor-exit v0

    .line 927
    return-void

    .line 920
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 926
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method detach()V
    .registers 4

    .line 848
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v0, p0, :cond_24

    .line 849
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_1f

    .line 851
    :try_start_d
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_1b

    .line 854
    goto :goto_1c

    .line 852
    :catch_1b
    move-exception v1

    .line 849
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 856
    .end local v0    # "i":I
    :cond_1f
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    iput-object v1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 858
    :cond_24
    return-void
.end method

.method public newSink(I)Lokio/Sink;
    .registers 6
    .param p1, "index"    # I

    .line 886
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 887
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_3b

    .line 890
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-eq v1, p0, :cond_13

    .line 891
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 893
    :cond_13
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v1, :cond_1e

    .line 894
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 896
    :cond_1e
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v1, v1, p1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_41

    .line 899
    .local v1, "dirtyFile":Ljava/io/File;
    :try_start_24
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v2, v1}, Lokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v2
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_2c} :catch_34
    .catchall {:try_start_24 .. :try_end_2c} :catchall_41

    .line 902
    .local v2, "sink":Lokio/Sink;
    nop

    .line 903
    :try_start_2d
    new-instance v3, Lokhttp3/internal/cache/DiskLruCache$Editor$1;

    invoke-direct {v3, p0, v2}, Lokhttp3/internal/cache/DiskLruCache$Editor$1;-><init>(Lokhttp3/internal/cache/DiskLruCache$Editor;Lokio/Sink;)V

    monitor-exit v0

    return-object v3

    .line 900
    .end local v2    # "sink":Lokio/Sink;
    :catch_34
    move-exception v2

    .line 901
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 888
    .end local v1    # "dirtyFile":Ljava/io/File;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_3b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "index":I
    throw v1

    .line 910
    .restart local p1    # "index":I
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_41

    throw v1
.end method

.method public newSource(I)Lokio/Source;
    .registers 6
    .param p1, "index"    # I

    .line 865
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 866
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_2a

    .line 869
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_30

    if-eq v1, p0, :cond_15

    goto :goto_28

    .line 873
    :cond_15
    :try_start_15
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v3, v3, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, p1

    invoke-interface {v1, v3}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v1
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_23} :catch_25
    .catchall {:try_start_15 .. :try_end_23} :catchall_30

    :try_start_23
    monitor-exit v0

    return-object v1

    .line 874
    :catch_25
    move-exception v1

    .line 875
    .local v1, "e":Ljava/io/FileNotFoundException;
    monitor-exit v0

    return-object v2

    .line 870
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_28
    :goto_28
    monitor-exit v0

    return-object v2

    .line 867
    :cond_2a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "index":I
    throw v1

    .line 877
    .restart local p1    # "index":I
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_30

    throw v1
.end method
