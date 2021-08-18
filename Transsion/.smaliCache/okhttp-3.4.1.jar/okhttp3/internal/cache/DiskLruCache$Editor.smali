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

.field private final entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V
    .registers 4
    .param p1, "this$0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p2, "entry"    # Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 847
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 849
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    invoke-static {p2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1200(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_15

    :cond_f
    # getter for: Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache;->access$2600(Lokhttp3/internal/cache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    :goto_15
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    .line 850
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$1;)V
    .registers 4
    .param p1, "x0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p2, "x1"    # Lokhttp3/internal/cache/DiskLruCache$Entry;
    .param p3, "x2"    # Lokhttp3/internal/cache/DiskLruCache$1;

    .line 842
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$2100(Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Entry;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 842
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$2200(Lokhttp3/internal/cache/DiskLruCache$Editor;)[Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 842
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method


# virtual methods
.method public abort()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 946
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_1a

    .line 949
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_15

    .line 950
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    # invokes: Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    invoke-static {v1, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->access$2800(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 952
    :cond_15
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 953
    monitor-exit v0

    .line 954
    return-void

    .line 947
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 953
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public abortUnlessCommitted()V
    .registers 4

    .line 957
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 958
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_17

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_19

    if-ne v1, p0, :cond_17

    .line 960
    :try_start_f
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    # invokes: Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    invoke-static {v1, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->access$2800(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_16
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 962
    goto :goto_17

    .line 961
    :catch_16
    move-exception v1

    .line 964
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v0

    .line 965
    return-void

    .line 964
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 929
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 930
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_19

    .line 933
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_15

    .line 934
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # invokes: Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    invoke-static {v1, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->access$2800(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 936
    :cond_15
    iput-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 937
    monitor-exit v0

    .line 938
    return-void

    .line 931
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 937
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method detach()V
    .registers 4

    .line 859
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_2d

    .line 860
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache;->access$2600(Lokhttp3/internal/cache/DiskLruCache;)I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 862
    :try_start_11
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache;->access$2700(Lokhttp3/internal/cache/DiskLruCache;)Lokhttp3/internal/io/FileSystem;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1800(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_22} :catch_23

    .line 865
    goto :goto_24

    .line 863
    :catch_23
    move-exception v1

    .line 860
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 867
    .end local v0    # "i":I
    :cond_27
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    # setter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1302(Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 869
    :cond_2d
    return-void
.end method

.method public newSink(I)Lokio/Sink;
    .registers 6
    .param p1, "index"    # I

    .line 897
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 898
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_43

    .line 901
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p0, :cond_15

    .line 902
    # getter for: Lokhttp3/internal/cache/DiskLruCache;->NULL_SINK:Lokio/Sink;
    invoke-static {}, Lokhttp3/internal/cache/DiskLruCache;->access$900()Lokio/Sink;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 904
    :cond_15
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1200(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 905
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 907
    :cond_22
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1800(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, p1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_49

    .line 910
    .local v1, "dirtyFile":Ljava/io/File;
    :try_start_2a
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache;->access$2700(Lokhttp3/internal/cache/DiskLruCache;)Lokhttp3/internal/io/FileSystem;

    move-result-object v2

    invoke-interface {v2, v1}, Lokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v2
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_34} :catch_3c
    .catchall {:try_start_2a .. :try_end_34} :catchall_49

    .line 913
    .local v2, "sink":Lokio/Sink;
    nop

    .line 914
    :try_start_35
    new-instance v3, Lokhttp3/internal/cache/DiskLruCache$Editor$1;

    invoke-direct {v3, p0, v2}, Lokhttp3/internal/cache/DiskLruCache$Editor$1;-><init>(Lokhttp3/internal/cache/DiskLruCache$Editor;Lokio/Sink;)V

    monitor-exit v0

    return-object v3

    .line 911
    .end local v2    # "sink":Lokio/Sink;
    :catch_3c
    move-exception v2

    .line 912
    .local v2, "e":Ljava/io/FileNotFoundException;
    # getter for: Lokhttp3/internal/cache/DiskLruCache;->NULL_SINK:Lokio/Sink;
    invoke-static {}, Lokhttp3/internal/cache/DiskLruCache;->access$900()Lokio/Sink;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 899
    .end local v1    # "dirtyFile":Ljava/io/File;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "index":I
    throw v1

    .line 921
    .restart local p1    # "index":I
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public newSource(I)Lokio/Source;
    .registers 6
    .param p1, "index"    # I

    .line 876
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 877
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_32

    .line 880
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1200(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_38

    if-eq v1, p0, :cond_19

    goto :goto_30

    .line 884
    :cond_19
    :try_start_19
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache;->access$2700(Lokhttp3/internal/cache/DiskLruCache;)Lokhttp3/internal/io/FileSystem;

    move-result-object v1

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1700(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-interface {v1, v3}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v1
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_2b} :catch_2d
    .catchall {:try_start_19 .. :try_end_2b} :catchall_38

    :try_start_2b
    monitor-exit v0

    return-object v1

    .line 885
    :catch_2d
    move-exception v1

    .line 886
    .local v1, "e":Ljava/io/FileNotFoundException;
    monitor-exit v0

    return-object v2

    .line 881
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_30
    :goto_30
    monitor-exit v0

    return-object v2

    .line 878
    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p1    # "index":I
    throw v1

    .line 888
    .restart local p1    # "index":I
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v1
.end method
