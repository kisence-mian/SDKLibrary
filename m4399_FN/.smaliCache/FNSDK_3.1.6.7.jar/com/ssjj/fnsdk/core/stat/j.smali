.class Lcom/ssjj/fnsdk/core/stat/j;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field e:Z

.field f:J

.field g:Z

.field private h:I

.field private i:I

.field private j:Z

.field private k:Ljava/io/RandomAccessFile;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->b:I

    iput v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->c:I

    iput v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->d:I

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->e:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ssjj/fnsdk/core/stat/j;->f:J

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->g:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/ssjj/fnsdk/core/stat/j;->h:I

    iput v2, p0, Lcom/ssjj/fnsdk/core/stat/j;->i:I

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->j:Z

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/stat/j;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/stat/j;->m:Ljava/lang/String;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/stat/j;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ssjj/fnsdk/core/stat/j;->h:I

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/stat/j;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ssjj/fnsdk/core/stat/j;->i:I

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_22

    return p0

    :catchall_22
    move-exception p0

    return v0
.end method

.method static a(II)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-ge p0, v1, :cond_20

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_20
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "fnstat_%s.%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_16

    return p0

    :catchall_16
    move-exception p0

    return v0
.end method

.method private j()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->j:Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_8

    return-void

    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/stat/j;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_16

    goto :goto_1f

    :catchall_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "Cannot operate file!"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method private k()V
    .registers 9

    const-string v0, "]"

    iget-boolean v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->e:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    new-array v2, v1, [B

    :try_start_a
    iget-object v3, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    const-wide/16 v6, 0x1

    sub-long v6, v3, v6

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v2}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3c
    :goto_3c
    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->e:Z

    return-void
.end method

.method private l()Z
    .registers 6

    iget v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->c:I

    if-gtz v0, :cond_18

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_16

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/stat/j;->f()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ssjj/fnsdk/core/stat/j;->f:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method private m()Z
    .registers 2

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/stat/j;->c()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/stat/j;->j()V

    :cond_9
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->m:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)I
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/stat/j;->m()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7e

    const/4 v1, -0x1

    if-nez v0, :cond_a

    monitor-exit p0

    return v1

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3d

    iget v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->c:I

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/stat/j;->h()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    const-string v2, "["

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_6d

    :cond_3d
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/stat/j;->g()V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->e:Z

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    const-string v2, ","

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    iget p1, p0, Lcom/ssjj/fnsdk/core/stat/j;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ssjj/fnsdk/core/stat/j;->c:I

    const/16 v0, 0xa

    if-lt p1, v0, :cond_6a

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/stat/j;->k()V

    :cond_6a
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/stat/j;->h()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_6d} :catch_78
    .catchall {:try_start_a .. :try_end_6d} :catchall_7e

    :goto_6d
    :try_start_6d
    iget p1, p0, Lcom/ssjj/fnsdk/core/stat/j;->c:I
    :try_end_6f
    .catchall {:try_start_6d .. :try_end_6f} :catchall_7e

    monitor-exit p0

    return p1

    :cond_71
    :try_start_71
    const-string p1, "append cancel, full"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_76} :catch_78
    .catchall {:try_start_71 .. :try_end_76} :catchall_7e

    monitor-exit p0

    return v1

    :catch_78
    move-exception p1

    :try_start_79
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7e

    monitor-exit p0

    return v1

    :catchall_7e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->j:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->j:Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v1, 0x0

    :try_start_9
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_f
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_13

    :catchall_d
    move-exception v0

    goto :goto_16

    :catch_f
    move-exception v0

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    :goto_13
    iput-object v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    return-void

    :goto_16
    iput-object v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    throw v0
.end method

.method public declared-synchronized e()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/stat/j;->d()V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/stat/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delele "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/stat/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_4f

    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file no exist "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_4f
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->e:Z

    iput v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->c:I

    iput v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->d:I
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_58

    monitor-exit p0

    return v0

    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()J
    .registers 4

    const-wide/16 v0, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_7

    goto :goto_b

    :cond_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    :goto_b
    return-wide v0

    :catch_c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v0
.end method

.method public declared-synchronized g()V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/stat/j;->m()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_71

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    const/4 v0, 0x0

    :try_start_a
    iput v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->c:I

    iput v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->d:I

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->e:Z
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_71

    :try_start_10
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_6b
    .catchall {:try_start_10 .. :try_end_16} :catchall_71

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1e

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string v0, "FNSDK_STAT"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->b:I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->e:Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->g:Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->c:I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->d:I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->f:J
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_6a} :catch_6b
    .catchall {:try_start_1e .. :try_end_6a} :catchall_71

    goto :goto_6f

    :catch_6b
    move-exception v0

    :try_start_6c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_71

    :goto_6f
    monitor-exit p0

    return-void

    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/stat/j;->m()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_56

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    const-string v0, "FNSDK_STAT"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->b:I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->a:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->b:I

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    iget-boolean v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->e:Z

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    iget-boolean v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->g:Z

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->c:I

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->d:I

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/stat/j;->f:J
    :try_end_4f
    .catchall {:try_start_9 .. :try_end_4f} :catchall_50

    goto :goto_54

    :catchall_50
    move-exception v0

    :try_start_51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_56

    :goto_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Ljava/lang/String;
    .registers 8

    const-string v0, "]"

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/stat/j;->m()Z

    move-result v1

    const-string v2, "[]"

    if-nez v1, :cond_b

    return-object v2

    :cond_b
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/stat/j;->g()V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/stat/j;->l()Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v0, "This log file has not data"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-object v2

    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    iget-wide v3, p0, Lcom/ssjj/fnsdk/core/stat/j;->f:J

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/ssjj/fnsdk/core/stat/j;->f:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    new-array v1, v1, [B

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/stat/j;->k:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_56} :catch_57

    :cond_56
    return-object v3

    :catch_57
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5b
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", full="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ssjj/fnsdk/core/stat/j;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
