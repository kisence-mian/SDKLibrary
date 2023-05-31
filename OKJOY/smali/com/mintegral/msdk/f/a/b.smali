.class public final Lcom/mintegral/msdk/f/a/b;
.super Ljava/lang/Object;
.source "FileCache.java"

# interfaces
.implements Lcom/mintegral/msdk/f/a;


# instance fields
.field public a:Ljava/io/File;

.field private final b:Lcom/mintegral/msdk/f/a/a;

.field private c:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/mintegral/msdk/f/a/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p2, :cond_27

    .line 46
    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_b

    .line 54
    :catch_b
    move-exception v0

    .line 55
    new-instance v1, Lcom/mintegral/msdk/f/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error using file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as disc cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 48
    :cond_27
    :try_start_27
    iput-object p2, p0, Lcom/mintegral/msdk/f/a/b;->b:Lcom/mintegral/msdk/f/a/a;

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1018
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1019
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_70

    .line 1020
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not directory!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1023
    :cond_54
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 1024
    if-nez v1, :cond_70

    .line 1025
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Directory %s can\'t be created"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_70
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 52
    if-eqz v1, :cond_87

    move-object v0, p1

    :goto_77
    iput-object v0, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    .line 53
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    if-eqz v1, :cond_a8

    const-string v0, "r"

    :goto_81
    invoke-direct {v2, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mintegral/msdk/f/a/b;->c:Ljava/io/RandomAccessFile;

    .line 56
    return-void

    .line 52
    :cond_87
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_77

    .line 53
    :cond_a8
    const-string v0, "rw"
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_aa} :catch_b

    goto :goto_81
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_3
    new-instance v0, Lcom/mintegral/msdk/f/a/h;

    invoke-direct {v0}, Lcom/mintegral/msdk/f/a/h;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/f/a/b;->b:Lcom/mintegral/msdk/f/a/a;

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    .line 31
    iget-object v0, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, ".dltmp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    .line 32
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    .line 37
    :cond_33
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/f/a/b;->c:Ljava/io/RandomAccessFile;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3e} :catch_3f

    .line 40
    return-void

    .line 38
    :catch_3f
    move-exception v0

    .line 39
    new-instance v1, Lcom/mintegral/msdk/f/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error using file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as disc cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a([BJ)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/f/a/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 74
    iget-object v0, p0, Lcom/mintegral/msdk/f/a/b;->c:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    const/16 v2, 0x2000

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_11
    .catchall {:try_start_1 .. :try_end_e} :catchall_44

    move-result v0

    monitor-exit p0

    return v0

    .line 75
    :catch_11
    move-exception v0

    .line 76
    :try_start_12
    const-string v1, "Error reading %d bytes with offset %d from file[%d bytes] to buffer[%d bytes]"

    .line 77
    new-instance v2, Lcom/mintegral/msdk/f/n;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x2000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/mintegral/msdk/f/a/b;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_44
    .catchall {:try_start_12 .. :try_end_44} :catchall_44

    .line 73
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/f/a/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_b
    .catchall {:try_start_1 .. :try_end_6} :catchall_23

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    .line 63
    :catch_b
    move-exception v0

    .line 64
    :try_start_c
    new-instance v1, Lcom/mintegral/msdk/f/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error reading length of file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_23

    .line 62
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a([BI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mintegral/msdk/f/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 85
    new-instance v0, Lcom/mintegral/msdk/f/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error append cache: cache file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is completed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_24} :catch_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_49

    .line 89
    :catch_24
    move-exception v0

    .line 90
    :try_start_25
    const-string v1, "Error writing %d bytes to %s from buffer with size %d"

    .line 91
    new-instance v2, Lcom/mintegral/msdk/f/n;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/mintegral/msdk/f/a/b;->c:Ljava/io/RandomAccessFile;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/16 v5, 0x2000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/mintegral/msdk/f/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_49
    .catchall {:try_start_25 .. :try_end_49} :catchall_49

    .line 84
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/mintegral/msdk/f/a/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Lcom/mintegral/msdk/f/a/b;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 88
    iget-object v0, p0, Lcom/mintegral/msdk/f/a/b;->c:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5b} :catch_24
    .catchall {:try_start_4c .. :try_end_5b} :catchall_49

    .line 92
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/f/a/b;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 99
    iget-object v0, p0, Lcom/mintegral/msdk/f/a/b;->b:Lcom/mintegral/msdk/f/a/a;

    iget-object v1, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/f/a/a;->a(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_12
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 103
    :goto_d
    monitor-exit p0

    return-void

    .line 98
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :catch_12
    move-exception v0

    goto :goto_d
.end method

.method public final declared-synchronized c()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mintegral/msdk/f/n;
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mintegral/msdk/f/a/b;->d()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_70

    move-result v0

    if-eqz v0, :cond_9

    .line 131
    :goto_7
    monitor-exit p0

    return-void

    .line 111
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/mintegral/msdk/f/a/b;->b()V

    .line 113
    iget-object v0, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dltmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_31
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 124
    iput-object v1, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_70

    .line 126
    :try_start_43
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/f/a/b;->c:Ljava/io/RandomAccessFile;

    .line 127
    iget-object v0, p0, Lcom/mintegral/msdk/f/a/b;->b:Lcom/mintegral/msdk/f/a/a;

    iget-object v1, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/f/a/a;->a(Ljava/io/File;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_55} :catch_56
    .catchall {:try_start_43 .. :try_end_55} :catchall_70

    goto :goto_7

    .line 131
    :catch_56
    move-exception v0

    goto :goto_7

    .line 117
    :cond_58
    :try_start_58
    iget-object v0, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_58 .. :try_end_6e} :catchall_70

    move-result-object v0

    goto :goto_31

    .line 107
    :catchall_70
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lcom/mintegral/msdk/f/a/b;->a:Ljava/io/File;

    .line 1148
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".download"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1149
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".dltmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_26

    move-result v2

    if-eqz v2, :cond_22

    :cond_1d
    move v2, v0

    .line 135
    :goto_1e
    if-nez v2, :cond_24

    :goto_20
    monitor-exit p0

    return v0

    :cond_22
    move v2, v1

    .line 1149
    goto :goto_1e

    :cond_24
    move v0, v1

    .line 135
    goto :goto_20

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method
