.class public final Lcom/tds/common/widgets/image/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/widgets/image/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/tds/common/widgets/image/DiskLruCache$Entry;

.field final synthetic this$0:Lcom/tds/common/widgets/image/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/tds/common/widgets/image/DiskLruCache;Lcom/tds/common/widgets/image/DiskLruCache$Entry;)V
    .registers 4
    .param p1, "this$0"    # Lcom/tds/common/widgets/image/DiskLruCache;
    .param p2, "entry"    # Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    .line 765
    iput-object p1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iput-object p2, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->entry:Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    .line 767
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$700(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_15

    :cond_f
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/tds/common/widgets/image/DiskLruCache;->access$1900(Lcom/tds/common/widgets/image/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    :goto_15
    iput-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->written:[Z

    .line 768
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/widgets/image/DiskLruCache;Lcom/tds/common/widgets/image/DiskLruCache$Entry;Lcom/tds/common/widgets/image/DiskLruCache$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache;
    .param p2, "x1"    # Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    .param p3, "x2"    # Lcom/tds/common/widgets/image/DiskLruCache$1;

    .line 760
    invoke-direct {p0, p1, p2}, Lcom/tds/common/widgets/image/DiskLruCache$Editor;-><init>(Lcom/tds/common/widgets/image/DiskLruCache;Lcom/tds/common/widgets/image/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/tds/common/widgets/image/DiskLruCache$Editor;)Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    .line 760
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->entry:Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tds/common/widgets/image/DiskLruCache$Editor;)[Z
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    .line 760
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method private newInputStream(I)Ljava/io/InputStream;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 775
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    monitor-enter v0

    .line 776
    :try_start_3
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->entry:Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$800(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_26

    .line 779
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->entry:Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->readable:Z
    invoke-static {v1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$700(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 780
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2c

    return-object v2

    .line 783
    :cond_16
    :try_start_16
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->entry:Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_21} :catch_23
    .catchall {:try_start_16 .. :try_end_21} :catchall_2c

    :try_start_21
    monitor-exit v0

    return-object v1

    .line 784
    :catch_23
    move-exception v1

    .line 785
    .local v1, "e":Ljava/io/FileNotFoundException;
    monitor-exit v0

    return-object v2

    .line 777
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_26
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    .end local p1    # "index":I
    throw v1

    .line 787
    .restart local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    .restart local p1    # "index":I
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw v1
.end method


# virtual methods
.method public abort()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/tds/common/widgets/image/DiskLruCache;->completeEdit(Lcom/tds/common/widgets/image/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/tds/common/widgets/image/DiskLruCache;->access$2100(Lcom/tds/common/widgets/image/DiskLruCache;Lcom/tds/common/widgets/image/DiskLruCache$Editor;Z)V

    .line 846
    return-void
.end method

.method public abortUnlessCommitted()V
    .registers 2

    .line 849
    iget-boolean v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_9

    .line 851
    :try_start_4
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->abort()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    .line 853
    goto :goto_9

    .line 852
    :catch_8
    move-exception v0

    .line 855
    :cond_9
    :goto_9
    return-void
.end method

.method public commit()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    const/4 v1, 0x1

    # invokes: Lcom/tds/common/widgets/image/DiskLruCache;->completeEdit(Lcom/tds/common/widgets/image/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/tds/common/widgets/image/DiskLruCache;->access$2100(Lcom/tds/common/widgets/image/DiskLruCache;Lcom/tds/common/widgets/image/DiskLruCache$Editor;Z)V

    .line 837
    iput-boolean v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->committed:Z

    .line 838
    return-void
.end method

.method public getFile(I)Ljava/io/File;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 800
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    monitor-enter v0

    .line 801
    :try_start_3
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->entry:Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$800(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_35

    .line 804
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->entry:Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->readable:Z
    invoke-static {v1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$700(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 805
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 807
    :cond_18
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->entry:Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    invoke-virtual {v1, p1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 808
    .local v1, "dirtyFile":Ljava/io/File;
    iget-object v2, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v2}, Lcom/tds/common/widgets/image/DiskLruCache;->access$2000(Lcom/tds/common/widgets/image/DiskLruCache;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_33

    .line 809
    iget-object v2, p0, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v2}, Lcom/tds/common/widgets/image/DiskLruCache;->access$2000(Lcom/tds/common/widgets/image/DiskLruCache;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 811
    :cond_33
    monitor-exit v0

    return-object v1

    .line 802
    .end local v1    # "dirtyFile":Ljava/io/File;
    :cond_35
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    .end local p1    # "index":I
    throw v1

    .line 812
    .restart local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    .restart local p1    # "index":I
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    invoke-direct {p0, p1}, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 796
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_b

    # invokes: Lcom/tds/common/widgets/image/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache;->access$1800(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public set(ILjava/lang/String;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 817
    const/4 v0, 0x0

    .line 819
    .local v0, "writer":Ljava/io/Writer;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->getFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 820
    .local v1, "os":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lcom/tds/common/widgets/image/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v2

    .line 821
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1a

    .line 823
    .end local v1    # "os":Ljava/io/OutputStream;
    invoke-static {v0}, Lcom/tds/common/widgets/image/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 824
    nop

    .line 825
    return-void

    .line 823
    :catchall_1a
    move-exception v1

    invoke-static {v0}, Lcom/tds/common/widgets/image/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 824
    throw v1
.end method
