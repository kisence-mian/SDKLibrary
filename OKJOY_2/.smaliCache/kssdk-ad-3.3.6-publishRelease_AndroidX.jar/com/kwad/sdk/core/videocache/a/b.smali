.class public Lcom/kwad/sdk/core/videocache/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/videocache/a;


# instance fields
.field public a:Ljava/io/File;

.field private final b:Lcom/kwad/sdk/core/videocache/a/a;

.field private c:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/kwad/sdk/core/videocache/a/a;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_4b

    :try_start_5
    iput-object p2, p0, Lcom/kwad/sdk/core/videocache/a/b;->b:Lcom/kwad/sdk/core/videocache/a/a;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lcom/kwad/sdk/core/videocache/a/d;->a(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_16

    move-object v0, p1

    goto :goto_36

    :cond_16
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_36
    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    if-eqz p2, :cond_41

    const-string p2, "r"

    goto :goto_43

    :cond_41
    const-string p2, "rw"

    :goto_43
    invoke-direct {v0, v1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/a/b;->c:Ljava/io/RandomAccessFile;

    return-void

    :catch_49
    move-exception p2

    goto :goto_51

    :cond_4b
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2}, Ljava/lang/NullPointerException;-><init>()V

    throw p2
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_51} :catch_49

    :goto_51
    new-instance v0, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error using file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " as disc cache"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Ljava/io/File;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".download"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public declared-synchronized a([BJI)I
    .registers 10

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/a/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/a/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, v0, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_11
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    monitor-exit p0

    return p1

    :catchall_f
    move-exception p1

    goto :goto_41

    :catch_11
    move-exception v1

    :try_start_12
    const-string v2, "Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]"

    new-instance v3, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v4, v0

    const/4 p4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v4, p4

    const/4 p2, 0x2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/videocache/a/b;->a()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v4, p2

    const/4 p2, 0x3

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p2

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_41
    .catchall {:try_start_12 .. :try_end_41} :catchall_f

    :goto_41
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()J
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/a/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_d
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    long-to-int v0, v0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_b
    move-exception v0

    goto :goto_29

    :catch_d
    move-exception v0

    :try_start_e
    new-instance v1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading length of file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_b

    :goto_29
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([BI)V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/kwad/sdk/core/videocache/a/b;->d()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/a/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Lcom/kwad/sdk/core/videocache/a/b;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/a/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, v0, p2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_16} :catch_3b
    .catchall {:try_start_2 .. :try_end_16} :catchall_39

    monitor-exit p0

    return-void

    :cond_18
    :try_start_18
    new-instance v1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error append cache: cache file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is completed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_39} :catch_3b
    .catchall {:try_start_18 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p1

    goto :goto_5e

    :catch_3b
    move-exception v1

    :try_start_3c
    const-string v2, "Error writing %d bytes to %s from buffer with size %d"

    new-instance v3, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v0

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/a/b;->c:Ljava/io/RandomAccessFile;

    aput-object v0, v4, p2

    const/4 p2, 0x2

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, p2

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5e
    .catchall {:try_start_3c .. :try_end_5e} :catchall_39

    :goto_5e
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/a/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/a/b;->b:Lcom/kwad/sdk/core/videocache/a/a;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/videocache/a/a;->a(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_11
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    goto :goto_2d

    :catch_11
    move-exception v0

    :try_start_12
    new-instance v1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_f

    :goto_2d
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/kwad/sdk/core/videocache/a/b;->d()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9e

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/kwad/sdk/core/videocache/a/b;->b()V

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".download"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_73

    iput-object v1, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_9e

    :try_start_3d
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/videocache/a/b;->c:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/a/b;->b:Lcom/kwad/sdk/core/videocache/a/a;

    iget-object v1, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/videocache/a/a;->a(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4f} :catch_51
    .catchall {:try_start_3d .. :try_end_4f} :catchall_9e

    monitor-exit p0

    return-void

    :catch_51
    move-exception v0

    :try_start_52
    new-instance v1, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as disc cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_73
    new-instance v0, Lcom/kwad/sdk/core/videocache/ProxyCacheException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error renaming file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for completion!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9e
    .catchall {:try_start_52 .. :try_end_9e} :catchall_9e

    :catchall_9e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/videocache/a/b;->a:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/videocache/a/b;->a(Ljava/io/File;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
