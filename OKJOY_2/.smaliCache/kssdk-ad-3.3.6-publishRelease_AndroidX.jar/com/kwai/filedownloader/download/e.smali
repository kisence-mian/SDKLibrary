.class public Lcom/kwai/filedownloader/download/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/download/e$a;
    }
.end annotation


# instance fields
.field a:J

.field private final b:Lcom/kwai/filedownloader/download/f;

.field private final c:I

.field private final d:I

.field private final e:Lcom/kwai/filedownloader/download/c;

.field private final f:Lcom/kwai/filedownloader/a/b;

.field private final g:Z

.field private final h:J

.field private final i:J

.field private final j:J

.field private final k:Ljava/lang/String;

.field private l:Lcom/kwai/filedownloader/e/a;

.field private volatile m:Z

.field private final n:Lcom/kwai/filedownloader/b/a;

.field private volatile o:J

.field private volatile p:J


# direct methods
.method private constructor <init>(Lcom/kwai/filedownloader/a/b;Lcom/kwai/filedownloader/download/a;Lcom/kwai/filedownloader/download/c;IIZLcom/kwai/filedownloader/download/f;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kwai/filedownloader/download/e;->o:J

    iput-wide v0, p0, Lcom/kwai/filedownloader/download/e;->p:J

    iput-object p7, p0, Lcom/kwai/filedownloader/download/e;->b:Lcom/kwai/filedownloader/download/f;

    iput-object p8, p0, Lcom/kwai/filedownloader/download/e;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/kwai/filedownloader/download/e;->f:Lcom/kwai/filedownloader/a/b;

    iput-boolean p6, p0, Lcom/kwai/filedownloader/download/e;->g:Z

    iput-object p3, p0, Lcom/kwai/filedownloader/download/e;->e:Lcom/kwai/filedownloader/download/c;

    iput p5, p0, Lcom/kwai/filedownloader/download/e;->d:I

    iput p4, p0, Lcom/kwai/filedownloader/download/e;->c:I

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/download/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwai/filedownloader/download/b;->c()Lcom/kwai/filedownloader/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/kwai/filedownloader/download/e;->n:Lcom/kwai/filedownloader/b/a;

    iget-wide p3, p2, Lcom/kwai/filedownloader/download/a;->a:J

    iput-wide p3, p0, Lcom/kwai/filedownloader/download/e;->h:J

    iget-wide p3, p2, Lcom/kwai/filedownloader/download/a;->c:J

    iput-wide p3, p0, Lcom/kwai/filedownloader/download/e;->i:J

    iget-wide p3, p2, Lcom/kwai/filedownloader/download/a;->b:J

    iput-wide p3, p0, Lcom/kwai/filedownloader/download/e;->a:J

    iget-wide p1, p2, Lcom/kwai/filedownloader/download/a;->d:J

    iput-wide p1, p0, Lcom/kwai/filedownloader/download/e;->j:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/a/b;Lcom/kwai/filedownloader/download/a;Lcom/kwai/filedownloader/download/c;IIZLcom/kwai/filedownloader/download/f;Ljava/lang/String;Lcom/kwai/filedownloader/download/e$1;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Lcom/kwai/filedownloader/download/e;-><init>(Lcom/kwai/filedownloader/a/b;Lcom/kwai/filedownloader/download/a;Lcom/kwai/filedownloader/download/c;IIZLcom/kwai/filedownloader/download/f;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kwai/filedownloader/download/e;->a:J

    iget-wide v4, p0, Lcom/kwai/filedownloader/download/e;->o:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/kwai/filedownloader/download/e;->p:J

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Lcom/kwai/filedownloader/f/f;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/e;->d()V

    iget-wide v2, p0, Lcom/kwai/filedownloader/download/e;->a:J

    iput-wide v2, p0, Lcom/kwai/filedownloader/download/e;->o:J

    iput-wide v0, p0, Lcom/kwai/filedownloader/download/e;->p:J

    :cond_1c
    return-void
.end method

.method private d()V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_6
    iget-object v4, p0, Lcom/kwai/filedownloader/download/e;->l:Lcom/kwai/filedownloader/e/a;

    invoke-interface {v4}, Lcom/kwai/filedownloader/e/a;->a()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_d

    move v4, v2

    goto :goto_1c

    :catch_d
    move-exception v4

    sget-boolean v5, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v5, :cond_1b

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v4, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to filefailed, we just not flushAndSync process to database too %s"

    invoke-static {p0, v4, v5}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    move v4, v3

    :goto_1c
    if-eqz v4, :cond_69

    iget-object v4, p0, Lcom/kwai/filedownloader/download/e;->e:Lcom/kwai/filedownloader/download/c;

    if-eqz v4, :cond_24

    move v4, v2

    goto :goto_25

    :cond_24
    move v4, v3

    :goto_25
    if-eqz v4, :cond_33

    iget-object v4, p0, Lcom/kwai/filedownloader/download/e;->n:Lcom/kwai/filedownloader/b/a;

    iget v5, p0, Lcom/kwai/filedownloader/download/e;->c:I

    iget v6, p0, Lcom/kwai/filedownloader/download/e;->d:I

    iget-wide v7, p0, Lcom/kwai/filedownloader/download/e;->a:J

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/kwai/filedownloader/b/a;->a(IIJ)V

    goto :goto_38

    :cond_33
    iget-object v4, p0, Lcom/kwai/filedownloader/download/e;->b:Lcom/kwai/filedownloader/download/f;

    invoke-interface {v4}, Lcom/kwai/filedownloader/download/f;->c()V

    :goto_38
    sget-boolean v4, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v4, :cond_69

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/kwai/filedownloader/download/e;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    iget v3, p0, Lcom/kwai/filedownloader/download/e;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    iget-wide v5, p0, Lcom/kwai/filedownloader/download/e;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "require flushAndSync id[%d] index[%d] offset[%d], consume[%d]"

    invoke-static {p0, v0, v4}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_69
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/e;->m:Z

    return-void
.end method

.method public b()V
    .registers 17

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/kwai/filedownloader/download/e;->m:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, v1, Lcom/kwai/filedownloader/download/e;->d:I

    iget-object v2, v1, Lcom/kwai/filedownloader/download/e;->f:Lcom/kwai/filedownloader/a/b;

    invoke-static {v0, v2}, Lcom/kwai/filedownloader/f/f;->b(ILcom/kwai/filedownloader/a/b;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_21c

    iget-wide v9, v1, Lcom/kwai/filedownloader/download/e;->j:J

    cmp-long v0, v9, v4

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    if-lez v0, :cond_82

    cmp-long v0, v2, v9

    if-eqz v0, :cond_82

    iget-wide v9, v1, Lcom/kwai/filedownloader/download/e;->i:J

    cmp-long v0, v9, v4

    if-nez v0, :cond_3c

    new-array v0, v7, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/kwai/filedownloader/download/e;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v8

    const-string v4, "range[%d-)"

    invoke-static {v4, v0}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_54

    :cond_3c
    new-array v0, v6, [Ljava/lang/Object;

    iget-wide v4, v1, Lcom/kwai/filedownloader/download/e;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v8

    iget-wide v4, v1, Lcom/kwai/filedownloader/download/e;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v7

    const-string v4, "range[%d-%d)"

    invoke-static {v4, v0}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_54
    new-instance v4, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v0, v5, v8

    iget-wide v8, v1, Lcom/kwai/filedownloader/download/e;->j:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    iget v0, v1, Lcom/kwai/filedownloader/download/e;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v13

    iget v0, v1, Lcom/kwai/filedownloader/download/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v12

    const-string v0, "require %s with contentLength(%d), but the backend response contentLength is %d on downloadId[%d]-connectionIndex[%d], please ask your backend dev to fix such problem."

    invoke-static {v0, v5}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_82
    iget-wide v4, v1, Lcom/kwai/filedownloader/download/e;->a:J

    const/4 v9, 0x0

    :try_start_85
    invoke-static {}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/b;->e()Z

    move-result v0

    iget-object v10, v1, Lcom/kwai/filedownloader/download/e;->e:Lcom/kwai/filedownloader/download/c;

    if-eqz v10, :cond_9c

    if-eqz v0, :cond_94

    goto :goto_9c

    :cond_94
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v2, "can\'t using multi-download when the output stream can\'t support seek"

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9c
    :goto_9c
    iget-object v10, v1, Lcom/kwai/filedownloader/download/e;->k:Ljava/lang/String;

    invoke-static {v10}, Lcom/kwai/filedownloader/f/f;->l(Ljava/lang/String;)Lcom/kwai/filedownloader/e/a;

    move-result-object v10
    :try_end_a2
    .catchall {:try_start_85 .. :try_end_a2} :catchall_1ee

    :try_start_a2
    iput-object v10, v1, Lcom/kwai/filedownloader/download/e;->l:Lcom/kwai/filedownloader/e/a;

    if-eqz v0, :cond_ab

    iget-wide v14, v1, Lcom/kwai/filedownloader/download/e;->a:J

    invoke-interface {v10, v14, v15}, Lcom/kwai/filedownloader/e/a;->a(J)V

    :cond_ab
    sget-boolean v0, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v0, :cond_d6

    const-string v0, "start fetch(%d): range [%d, %d), seek to[%d]"

    new-array v14, v12, [Ljava/lang/Object;

    iget v15, v1, Lcom/kwai/filedownloader/download/e;->d:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v8

    iget-wide v11, v1, Lcom/kwai/filedownloader/download/e;->h:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v14, v7

    iget-wide v11, v1, Lcom/kwai/filedownloader/download/e;->i:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v14, v6

    iget-wide v11, v1, Lcom/kwai/filedownloader/download/e;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v14, v13

    invoke-static {v1, v0, v14}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d6
    iget-object v0, v1, Lcom/kwai/filedownloader/download/e;->f:Lcom/kwai/filedownloader/a/b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a/b;->a()Ljava/io/InputStream;

    move-result-object v9

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iget-boolean v11, v1, Lcom/kwai/filedownloader/download/e;->m:Z
    :try_end_e2
    .catchall {:try_start_a2 .. :try_end_e2} :catchall_1eb

    if-eqz v11, :cond_10f

    if-eqz v9, :cond_ef

    :try_start_e6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_ea

    goto :goto_ef

    :catch_ea
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_ef
    :goto_ef
    if-eqz v10, :cond_103

    :try_start_f1
    invoke-direct/range {p0 .. p0}, Lcom/kwai/filedownloader/download/e;->d()V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_f5

    goto :goto_103

    :catchall_f5
    move-exception v0

    move-object v2, v0

    if-eqz v10, :cond_102

    :try_start_f9
    invoke-interface {v10}, Lcom/kwai/filedownloader/e/a;->b()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fd

    goto :goto_102

    :catch_fd
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_102
    :goto_102
    throw v2

    :cond_103
    :goto_103
    if-eqz v10, :cond_10e

    :try_start_105
    invoke-interface {v10}, Lcom/kwai/filedownloader/e/a;->b()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109

    goto :goto_10e

    :catch_109
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_10e
    :goto_10e
    return-void

    :cond_10f
    :goto_10f
    :try_start_10f
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v11
    :try_end_113
    .catchall {:try_start_10f .. :try_end_113} :catchall_1eb

    const/4 v12, -0x1

    if-ne v11, v12, :cond_195

    if-eqz v9, :cond_121

    :try_start_118
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11b} :catch_11c

    goto :goto_121

    :catch_11c
    move-exception v0

    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    :cond_121
    :goto_121
    if-eqz v10, :cond_135

    :try_start_123
    invoke-direct/range {p0 .. p0}, Lcom/kwai/filedownloader/download/e;->d()V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_127

    goto :goto_135

    :catchall_127
    move-exception v0

    move-object v2, v0

    if-eqz v10, :cond_134

    :try_start_12b
    invoke-interface {v10}, Lcom/kwai/filedownloader/e/a;->b()V
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_12e} :catch_12f

    goto :goto_134

    :catch_12f
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_134
    :goto_134
    throw v2

    :cond_135
    :goto_135
    if-eqz v10, :cond_140

    :try_start_137
    invoke-interface {v10}, Lcom/kwai/filedownloader/e/a;->b()V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13a} :catch_13b

    goto :goto_140

    :catch_13b
    move-exception v0

    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    :cond_140
    :goto_140
    iget-wide v9, v1, Lcom/kwai/filedownloader/download/e;->a:J

    sub-long/2addr v9, v4

    const-wide/16 v11, -0x1

    cmp-long v0, v2, v11

    if-eqz v0, :cond_189

    cmp-long v0, v2, v9

    if-nez v0, :cond_14e

    goto :goto_189

    :cond_14e
    new-instance v0, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v11, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v11, v7

    iget-wide v2, v1, Lcom/kwai/filedownloader/download/e;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v11, v6

    iget-wide v2, v1, Lcom/kwai/filedownloader/download/e;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v11, v13

    iget-wide v2, v1, Lcom/kwai/filedownloader/download/e;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v12, 0x4

    aput-object v2, v11, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v14, 0x5

    aput-object v2, v11, v14

    const-string v2, "fetched length[%d] != content length[%d], range[%d, %d) offset[%d] fetch begin offset"

    invoke-static {v2, v11}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_189
    :goto_189
    iget-object v3, v1, Lcom/kwai/filedownloader/download/e;->b:Lcom/kwai/filedownloader/download/f;

    iget-object v4, v1, Lcom/kwai/filedownloader/download/e;->e:Lcom/kwai/filedownloader/download/c;

    iget-wide v5, v1, Lcom/kwai/filedownloader/download/e;->h:J

    iget-wide v7, v1, Lcom/kwai/filedownloader/download/e;->i:J

    invoke-interface/range {v3 .. v8}, Lcom/kwai/filedownloader/download/f;->a(Lcom/kwai/filedownloader/download/c;JJ)V

    return-void

    :cond_195
    const/4 v12, 0x4

    const/4 v14, 0x5

    :try_start_197
    invoke-interface {v10, v0, v8, v11}, Lcom/kwai/filedownloader/e/a;->a([BII)V

    iget-wide v12, v1, Lcom/kwai/filedownloader/download/e;->a:J

    int-to-long v14, v11

    add-long/2addr v12, v14

    iput-wide v12, v1, Lcom/kwai/filedownloader/download/e;->a:J

    iget-object v11, v1, Lcom/kwai/filedownloader/download/e;->b:Lcom/kwai/filedownloader/download/f;

    invoke-interface {v11, v14, v15}, Lcom/kwai/filedownloader/download/f;->a(J)V

    invoke-direct/range {p0 .. p0}, Lcom/kwai/filedownloader/download/e;->c()V

    iget-boolean v11, v1, Lcom/kwai/filedownloader/download/e;->m:Z
    :try_end_1aa
    .catchall {:try_start_197 .. :try_end_1aa} :catchall_1eb

    if-eqz v11, :cond_1d7

    if-eqz v9, :cond_1b7

    :try_start_1ae
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1b1
    .catch Ljava/io/IOException; {:try_start_1ae .. :try_end_1b1} :catch_1b2

    goto :goto_1b7

    :catch_1b2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1b7
    :goto_1b7
    if-eqz v10, :cond_1cb

    :try_start_1b9
    invoke-direct/range {p0 .. p0}, Lcom/kwai/filedownloader/download/e;->d()V
    :try_end_1bc
    .catchall {:try_start_1b9 .. :try_end_1bc} :catchall_1bd

    goto :goto_1cb

    :catchall_1bd
    move-exception v0

    move-object v2, v0

    if-eqz v10, :cond_1ca

    :try_start_1c1
    invoke-interface {v10}, Lcom/kwai/filedownloader/e/a;->b()V
    :try_end_1c4
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1c4} :catch_1c5

    goto :goto_1ca

    :catch_1c5
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1ca
    :goto_1ca
    throw v2

    :cond_1cb
    :goto_1cb
    if-eqz v10, :cond_1d6

    :try_start_1cd
    invoke-interface {v10}, Lcom/kwai/filedownloader/e/a;->b()V
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d0} :catch_1d1

    goto :goto_1d6

    :catch_1d1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1d6
    :goto_1d6
    return-void

    :cond_1d7
    :try_start_1d7
    iget-boolean v11, v1, Lcom/kwai/filedownloader/download/e;->g:Z

    if-eqz v11, :cond_1e8

    invoke-static {}, Lcom/kwai/filedownloader/f/f;->d()Z

    move-result v11

    if-nez v11, :cond_1e2

    goto :goto_1e8

    :cond_1e2
    new-instance v0, Lcom/kwai/filedownloader/exception/FileDownloadNetworkPolicyException;

    invoke-direct {v0}, Lcom/kwai/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    throw v0
    :try_end_1e8
    .catchall {:try_start_1d7 .. :try_end_1e8} :catchall_1eb

    :cond_1e8
    :goto_1e8
    const/4 v13, 0x3

    goto/16 :goto_10f

    :catchall_1eb
    move-exception v0

    move-object v2, v0

    goto :goto_1f1

    :catchall_1ee
    move-exception v0

    move-object v2, v0

    move-object v10, v9

    :goto_1f1
    if-eqz v9, :cond_1fc

    :try_start_1f3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1f6
    .catch Ljava/io/IOException; {:try_start_1f3 .. :try_end_1f6} :catch_1f7

    goto :goto_1fc

    :catch_1f7
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1fc
    :goto_1fc
    if-eqz v10, :cond_210

    :try_start_1fe
    invoke-direct/range {p0 .. p0}, Lcom/kwai/filedownloader/download/e;->d()V
    :try_end_201
    .catchall {:try_start_1fe .. :try_end_201} :catchall_202

    goto :goto_210

    :catchall_202
    move-exception v0

    move-object v2, v0

    if-eqz v10, :cond_20f

    :try_start_206
    invoke-interface {v10}, Lcom/kwai/filedownloader/e/a;->b()V
    :try_end_209
    .catch Ljava/io/IOException; {:try_start_206 .. :try_end_209} :catch_20a

    goto :goto_20f

    :catch_20a
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_20f
    :goto_20f
    throw v2

    :cond_210
    :goto_210
    if-eqz v10, :cond_21b

    :try_start_212
    invoke-interface {v10}, Lcom/kwai/filedownloader/e/a;->b()V
    :try_end_215
    .catch Ljava/io/IOException; {:try_start_212 .. :try_end_215} :catch_216

    goto :goto_21b

    :catch_216
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_21b
    :goto_21b
    throw v2

    :cond_21c
    new-instance v0, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, v1, Lcom/kwai/filedownloader/download/e;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    iget v3, v1, Lcom/kwai/filedownloader/download/e;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "there isn\'t any content need to download on %d-%d with the content-length is 0"

    invoke-static {v3, v2}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
