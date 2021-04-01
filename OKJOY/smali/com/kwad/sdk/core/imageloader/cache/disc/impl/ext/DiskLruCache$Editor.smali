.class public final Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$700(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->written:[Z

    return-void

    :cond_11
    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$1900(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_e
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)[Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method static synthetic access$2402(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->completeEdit(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$2300(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public abortUnlessCommitted()V
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_7

    :try_start_4
    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    :cond_7
    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public commit()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->completeEdit(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$2300(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->remove(Ljava/lang/String;)Z

    :goto_16
    iput-boolean v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->committed:Z

    return-void

    :cond_19
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    # invokes: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->completeEdit(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$2300(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V

    goto :goto_16
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_b

    # invokes: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$1800(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_2a

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$700(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_16

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_27

    :goto_15
    return-object v0

    :cond_16
    :try_start_16
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_21} :catch_24
    .catchall {:try_start_16 .. :try_end_21} :catchall_27

    :try_start_21
    monitor-exit v2

    move-object v0, v1

    goto :goto_15

    :catch_24
    move-exception v1

    monitor-exit v2

    goto :goto_15

    :catchall_27
    move-exception v0

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_27

    throw v0

    :cond_2a
    :try_start_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_27
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .registers 6

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_47

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$700(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->written:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :cond_18
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_44

    move-result-object v1

    :try_start_1e
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_23} :catch_2c
    .catchall {:try_start_1e .. :try_end_23} :catchall_44

    move-object v1, v0

    :goto_24
    :try_start_24
    new-instance v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;)V

    monitor-exit v2

    :goto_2b
    return-object v0

    :catch_2c
    move-exception v0

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$2000(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_44

    :try_start_36
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_3b} :catch_3d
    .catchall {:try_start_36 .. :try_end_3b} :catchall_44

    move-object v1, v0

    goto :goto_24

    :catch_3d
    move-exception v0

    :try_start_3e
    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;
    invoke-static {}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$2100()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2

    goto :goto_2b

    :catchall_44
    move-exception v0

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_44

    throw v0

    :cond_47
    :try_start_47
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_44
.end method

.method public set(ILjava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    sget-object v3, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    :try_start_c
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_19

    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_13
    move-exception v0

    move-object v1, v2

    :goto_15
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_19
    move-exception v0

    goto :goto_15
.end method
