.class public Lcom/kwai/filedownloader/download/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/download/e$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwai/filedownloader/download/f;

.field private final b:I

.field private final c:I

.field private final d:Lcom/kwai/filedownloader/download/c;

.field private final e:Lcom/kwai/filedownloader/c0/b;

.field private final f:Z

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:Ljava/lang/String;

.field k:J

.field private l:Lcom/kwai/filedownloader/g0/a;

.field private volatile m:Z

.field private final n:Lcom/kwai/filedownloader/d0/a;

.field private volatile o:J

.field private volatile p:J


# direct methods
.method private constructor <init>(Lcom/kwai/filedownloader/c0/b;Lcom/kwai/filedownloader/download/a;Lcom/kwai/filedownloader/download/c;IIZLcom/kwai/filedownloader/download/f;Ljava/lang/String;)V
    .registers 11

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/kwai/filedownloader/download/e;->o:J

    iput-wide v0, p0, Lcom/kwai/filedownloader/download/e;->p:J

    iput-object p7, p0, Lcom/kwai/filedownloader/download/e;->a:Lcom/kwai/filedownloader/download/f;

    iput-object p8, p0, Lcom/kwai/filedownloader/download/e;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/kwai/filedownloader/download/e;->e:Lcom/kwai/filedownloader/c0/b;

    iput-boolean p6, p0, Lcom/kwai/filedownloader/download/e;->f:Z

    iput-object p3, p0, Lcom/kwai/filedownloader/download/e;->d:Lcom/kwai/filedownloader/download/c;

    iput p5, p0, Lcom/kwai/filedownloader/download/e;->c:I

    iput p4, p0, Lcom/kwai/filedownloader/download/e;->b:I

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/d0/a;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/download/e;->n:Lcom/kwai/filedownloader/d0/a;

    iget-wide v0, p2, Lcom/kwai/filedownloader/download/a;->a:J

    iput-wide v0, p0, Lcom/kwai/filedownloader/download/e;->g:J

    iget-wide v0, p2, Lcom/kwai/filedownloader/download/a;->c:J

    iput-wide v0, p0, Lcom/kwai/filedownloader/download/e;->h:J

    iget-wide v0, p2, Lcom/kwai/filedownloader/download/a;->b:J

    iput-wide v0, p0, Lcom/kwai/filedownloader/download/e;->k:J

    iget-wide v0, p2, Lcom/kwai/filedownloader/download/a;->d:J

    iput-wide v0, p0, Lcom/kwai/filedownloader/download/e;->i:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/c0/b;Lcom/kwai/filedownloader/download/a;Lcom/kwai/filedownloader/download/c;IIZLcom/kwai/filedownloader/download/f;Ljava/lang/String;Lcom/kwai/filedownloader/download/e$a;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Lcom/kwai/filedownloader/download/e;-><init>(Lcom/kwai/filedownloader/c0/b;Lcom/kwai/filedownloader/download/a;Lcom/kwai/filedownloader/download/c;IIZLcom/kwai/filedownloader/download/f;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kwai/filedownloader/download/e;->k:J

    iget-wide v4, p0, Lcom/kwai/filedownloader/download/e;->o:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/kwai/filedownloader/download/e;->p:J

    sub-long v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Lcom/kwai/filedownloader/h0/f;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/e;->d()V

    iget-wide v2, p0, Lcom/kwai/filedownloader/download/e;->k:J

    iput-wide v2, p0, Lcom/kwai/filedownloader/download/e;->o:J

    iput-wide v0, p0, Lcom/kwai/filedownloader/download/e;->p:J

    :cond_1c
    return-void
.end method

.method private d()V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    :try_start_6
    iget-object v0, p0, Lcom/kwai/filedownloader/download/e;->l:Lcom/kwai/filedownloader/g0/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/g0/a;->a()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_52

    move v0, v1

    :goto_c
    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/kwai/filedownloader/download/e;->d:Lcom/kwai/filedownloader/download/c;

    if-eqz v0, :cond_62

    move v0, v1

    :goto_13
    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/kwai/filedownloader/download/e;->n:Lcom/kwai/filedownloader/d0/a;

    iget v3, p0, Lcom/kwai/filedownloader/download/e;->b:I

    iget v6, p0, Lcom/kwai/filedownloader/download/e;->c:I

    iget-wide v8, p0, Lcom/kwai/filedownloader/download/e;->k:J

    invoke-interface {v0, v3, v6, v8, v9}, Lcom/kwai/filedownloader/d0/a;->a(IIJ)V

    :goto_20
    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v0, :cond_51

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v3, p0, Lcom/kwai/filedownloader/download/e;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lcom/kwai/filedownloader/download/e;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-wide v2, p0, Lcom/kwai/filedownloader/download/e;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "require flushAndSync id[%d] index[%d] offset[%d], consume[%d]"

    invoke-static {p0, v1, v0}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_51
    return-void

    :catch_52
    move-exception v0

    sget-boolean v3, Lcom/kwai/filedownloader/h0/d;->a:Z

    if-eqz v3, :cond_60

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "Because of the system cannot guarantee that all the buffers have been synchronized with physical media, or write to filefailed, we just not flushAndSync process to database too %s"

    invoke-static {p0, v0, v3}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_60
    move v0, v2

    goto :goto_c

    :cond_62
    move v0, v2

    goto :goto_13

    :cond_64
    iget-object v0, p0, Lcom/kwai/filedownloader/download/e;->a:Lcom/kwai/filedownloader/download/f;

    invoke-interface {v0}, Lcom/kwai/filedownloader/download/f;->a()V

    goto :goto_20
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwai/filedownloader/download/e;->m:Z

    return-void
.end method

.method public b()V
    .registers 13

    iget-boolean v0, p0, Lcom/kwai/filedownloader/download/e;->m:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget v0, p0, Lcom/kwai/filedownloader/download/e;->c:I

    iget-object v1, p0, Lcom/kwai/filedownloader/download/e;->e:Lcom/kwai/filedownloader/c0/b;

    invoke-static {v0, v1}, Lcom/kwai/filedownloader/h0/f;->a(ILcom/kwai/filedownloader/c0/b;)J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_214

    iget-wide v0, p0, Lcom/kwai/filedownloader/download/e;->i:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_89

    cmp-long v0, v4, v0

    if-eqz v0, :cond_89

    iget-wide v0, p0, Lcom/kwai/filedownloader/download/e;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/kwai/filedownloader/download/e;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "range[%d-)"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_39
    new-instance v1, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-wide v6, p0, Lcom/kwai/filedownloader/download/e;->i:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    iget v0, p0, Lcom/kwai/filedownloader/download/e;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    iget v0, p0, Lcom/kwai/filedownloader/download/e;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const-string v0, "require %s with contentLength(%d), but the backend response contentLength is %d on downloadId[%d]-connectionIndex[%d], please ask your backend dev to fix such problem."

    invoke-static {v0, v2}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6d
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/kwai/filedownloader/download/e;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/kwai/filedownloader/download/e;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "range[%d-%d)"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    :cond_89
    iget-wide v6, p0, Lcom/kwai/filedownloader/download/e;->k:J

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_8d
    invoke-static {}, Lcom/kwai/filedownloader/download/b;->h()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwai/filedownloader/download/b;->d()Z

    move-result v0

    iget-object v3, p0, Lcom/kwai/filedownloader/download/e;->d:Lcom/kwai/filedownloader/download/c;

    if-eqz v3, :cond_9b

    if-eqz v0, :cond_ff

    :cond_9b
    iget-object v3, p0, Lcom/kwai/filedownloader/download/e;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/kwai/filedownloader/h0/f;->c(Ljava/lang/String;)Lcom/kwai/filedownloader/g0/a;

    move-result-object v1

    iput-object v1, p0, Lcom/kwai/filedownloader/download/e;->l:Lcom/kwai/filedownloader/g0/a;

    if-eqz v0, :cond_aa

    iget-wide v8, p0, Lcom/kwai/filedownloader/download/e;->k:J

    invoke-interface {v1, v8, v9}, Lcom/kwai/filedownloader/g0/a;->b(J)V

    :cond_aa
    sget-boolean v0, Lcom/kwai/filedownloader/h0/d;->a:Z
    :try_end_ac
    .catchall {:try_start_8d .. :try_end_ac} :catchall_107

    if-eqz v0, :cond_da

    const-string v0, "start fetch(%d): range [%d, %d), seek to[%d]"

    const/4 v3, 0x4

    :try_start_b1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/kwai/filedownloader/download/e;->c:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x1

    iget-wide v10, p0, Lcom/kwai/filedownloader/download/e;->g:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x2

    iget-wide v10, p0, Lcom/kwai/filedownloader/download/e;->h:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x3

    iget-wide v10, p0, Lcom/kwai/filedownloader/download/e;->k:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v8

    invoke-static {p0, v0, v3}, Lcom/kwai/filedownloader/h0/d;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_da
    iget-object v0, p0, Lcom/kwai/filedownloader/download/e;->e:Lcom/kwai/filedownloader/c0/b;

    invoke-interface {v0}, Lcom/kwai/filedownloader/c0/b;->a()Ljava/io/InputStream;

    move-result-object v2

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iget-boolean v3, p0, Lcom/kwai/filedownloader/download/e;->m:Z
    :try_end_e6
    .catchall {:try_start_b1 .. :try_end_e6} :catchall_107

    if-eqz v3, :cond_133

    if-eqz v2, :cond_ed

    :try_start_ea
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_118

    :cond_ed
    :goto_ed
    if-eqz v1, :cond_f2

    :try_start_ef
    invoke-direct {p0}, Lcom/kwai/filedownloader/download/e;->d()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_11d

    :cond_f2
    if-eqz v1, :cond_4

    :try_start_f4
    invoke-interface {v1}, Lcom/kwai/filedownloader/g0/a;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f9

    goto/16 :goto_4

    :catch_f9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :cond_ff
    :try_start_ff
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v3, "can\'t using multi-download when the output stream can\'t support seek"

    invoke-direct {v0, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_107
    .catchall {:try_start_ff .. :try_end_107} :catchall_107

    :catchall_107
    move-exception v0

    if-eqz v2, :cond_10d

    :try_start_10a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10d} :catch_1fc

    :cond_10d
    :goto_10d
    if-eqz v1, :cond_112

    :try_start_10f
    invoke-direct {p0}, Lcom/kwai/filedownloader/download/e;->d()V
    :try_end_112
    .catchall {:try_start_10f .. :try_end_112} :catchall_202

    :cond_112
    if-eqz v1, :cond_117

    :try_start_114
    invoke-interface {v1}, Lcom/kwai/filedownloader/g0/a;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_20e

    :cond_117
    :goto_117
    throw v0

    :catch_118
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ed

    :catchall_11d
    move-exception v0

    if-eqz v1, :cond_123

    :try_start_120
    invoke-interface {v1}, Lcom/kwai/filedownloader/g0/a;->close()V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_123} :catch_124

    :cond_123
    :goto_123
    throw v0

    :catch_124
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_123

    :cond_129
    :try_start_129
    iget-boolean v3, p0, Lcom/kwai/filedownloader/download/e;->f:Z

    if-eqz v3, :cond_133

    invoke-static {}, Lcom/kwai/filedownloader/h0/f;->e()Z

    move-result v3

    if-nez v3, :cond_1f6

    :cond_133
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_136
    .catchall {:try_start_129 .. :try_end_136} :catchall_107

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_1b8

    if-eqz v2, :cond_13f

    :try_start_13c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_13f} :catch_163

    :cond_13f
    :goto_13f
    if-eqz v1, :cond_144

    :try_start_141
    invoke-direct {p0}, Lcom/kwai/filedownloader/download/e;->d()V
    :try_end_144
    .catchall {:try_start_141 .. :try_end_144} :catchall_168

    :cond_144
    if-eqz v1, :cond_149

    :try_start_146
    invoke-interface {v1}, Lcom/kwai/filedownloader/g0/a;->close()V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_149} :catch_174

    :cond_149
    :goto_149
    iget-wide v0, p0, Lcom/kwai/filedownloader/download/e;->k:J

    sub-long/2addr v0, v6

    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_156

    cmp-long v2, v4, v0

    if-nez v2, :cond_179

    :cond_156
    iget-object v0, p0, Lcom/kwai/filedownloader/download/e;->a:Lcom/kwai/filedownloader/download/f;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/e;->d:Lcom/kwai/filedownloader/download/c;

    iget-wide v2, p0, Lcom/kwai/filedownloader/download/e;->g:J

    iget-wide v4, p0, Lcom/kwai/filedownloader/download/e;->h:J

    invoke-interface/range {v0 .. v5}, Lcom/kwai/filedownloader/download/f;->a(Lcom/kwai/filedownloader/download/c;JJ)V

    goto/16 :goto_4

    :catch_163
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13f

    :catchall_168
    move-exception v0

    if-eqz v1, :cond_16e

    :try_start_16b
    invoke-interface {v1}, Lcom/kwai/filedownloader/g0/a;->close()V
    :try_end_16e
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_16e} :catch_16f

    :cond_16e
    :goto_16e
    throw v0

    :catch_16f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16e

    :catch_174
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_149

    :cond_179
    new-instance v2, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    iget-wide v0, p0, Lcom/kwai/filedownloader/download/e;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    iget-wide v0, p0, Lcom/kwai/filedownloader/download/e;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v3, v1

    iget-wide v0, p0, Lcom/kwai/filedownloader/download/e;->k:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v3, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v3, v1

    const-string v0, "fetched length[%d] != content length[%d], range[%d, %d) offset[%d] fetch begin offset"

    invoke-static {v0, v3}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b8
    const/4 v8, 0x0

    :try_start_1b9
    invoke-interface {v1, v0, v8, v3}, Lcom/kwai/filedownloader/g0/a;->a([BII)V

    iget-wide v8, p0, Lcom/kwai/filedownloader/download/e;->k:J

    int-to-long v10, v3

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/kwai/filedownloader/download/e;->k:J

    iget-object v3, p0, Lcom/kwai/filedownloader/download/e;->a:Lcom/kwai/filedownloader/download/f;

    invoke-interface {v3, v10, v11}, Lcom/kwai/filedownloader/download/f;->a(J)V

    invoke-direct {p0}, Lcom/kwai/filedownloader/download/e;->c()V

    iget-boolean v3, p0, Lcom/kwai/filedownloader/download/e;->m:Z
    :try_end_1cc
    .catchall {:try_start_1b9 .. :try_end_1cc} :catchall_107

    if-eqz v3, :cond_129

    if-eqz v2, :cond_1d3

    :try_start_1d0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1d3
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1d3} :catch_1e5

    :cond_1d3
    :goto_1d3
    if-eqz v1, :cond_1d8

    :try_start_1d5
    invoke-direct {p0}, Lcom/kwai/filedownloader/download/e;->d()V
    :try_end_1d8
    .catchall {:try_start_1d5 .. :try_end_1d8} :catchall_1ea

    :cond_1d8
    if-eqz v1, :cond_4

    :try_start_1da
    invoke-interface {v1}, Lcom/kwai/filedownloader/g0/a;->close()V
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1dd} :catch_1df

    goto/16 :goto_4

    :catch_1df
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :catch_1e5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d3

    :catchall_1ea
    move-exception v0

    if-eqz v1, :cond_1f0

    :try_start_1ed
    invoke-interface {v1}, Lcom/kwai/filedownloader/g0/a;->close()V
    :try_end_1f0
    .catch Ljava/io/IOException; {:try_start_1ed .. :try_end_1f0} :catch_1f1

    :cond_1f0
    :goto_1f0
    throw v0

    :catch_1f1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f0

    :cond_1f6
    :try_start_1f6
    new-instance v0, Lcom/kwai/filedownloader/exception/FileDownloadNetworkPolicyException;

    invoke-direct {v0}, Lcom/kwai/filedownloader/exception/FileDownloadNetworkPolicyException;-><init>()V

    throw v0
    :try_end_1fc
    .catchall {:try_start_1f6 .. :try_end_1fc} :catchall_107

    :catch_1fc
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_10d

    :catchall_202
    move-exception v0

    if-eqz v1, :cond_208

    :try_start_205
    invoke-interface {v1}, Lcom/kwai/filedownloader/g0/a;->close()V
    :try_end_208
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_208} :catch_209

    :cond_208
    :goto_208
    throw v0

    :catch_209
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_208

    :catch_20e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_117

    :cond_214
    new-instance v0, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/kwai/filedownloader/download/e;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/kwai/filedownloader/download/e;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "there isn\'t any content need to download on %d-%d with the content-length is 0"

    invoke-static {v2, v1}, Lcom/kwai/filedownloader/h0/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kwai/filedownloader/exception/FileDownloadGiveUpRetryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
