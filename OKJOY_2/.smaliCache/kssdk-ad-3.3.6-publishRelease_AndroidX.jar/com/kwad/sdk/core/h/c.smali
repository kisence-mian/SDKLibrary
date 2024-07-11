.class public Lcom/kwad/sdk/core/h/c;
.super Ljava/io/InputStream;


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:Ljava/io/InputStream;

.field private e:I

.field private f:J

.field private volatile g:F

.field private volatile h:J

.field private i:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 5

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/core/h/c;->a:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/kwad/sdk/core/h/c;->b:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kwad/sdk/core/h/c;->c:J

    iput-wide v0, p0, Lcom/kwad/sdk/core/h/c;->f:J

    const/16 v0, 0x5000

    iput v0, p0, Lcom/kwad/sdk/core/h/c;->i:I

    if-ge p2, v0, :cond_17

    move p2, v0

    :cond_17
    iput-object p1, p0, Lcom/kwad/sdk/core/h/c;->d:Ljava/io/InputStream;

    int-to-float p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/kwad/sdk/core/h/c;->g:F

    return-void
.end method

.method private a(JJ)J
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-wide v0

    :cond_7
    cmp-long v0, p3, v0

    if-gtz v0, :cond_e

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_e
    div-long/2addr p1, p3

    return-wide p1
.end method

.method private a(J)V
    .registers 3

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_8
    return-void
.end method

.method private b()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/kwad/sdk/core/h/c;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/h/c;->c:J

    return-void
.end method

.method private c()V
    .registers 8

    iget v0, p0, Lcom/kwad/sdk/core/h/c;->a:I

    iget v1, p0, Lcom/kwad/sdk/core/h/c;->b:I

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kwad/sdk/core/h/c;->c:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/kwad/sdk/core/h/c;->a:I

    int-to-float v4, v4

    iget v5, p0, Lcom/kwad/sdk/core/h/c;->g:F

    div-float/2addr v4, v5

    iget-wide v5, p0, Lcom/kwad/sdk/core/h/c;->f:J

    sub-long/2addr v0, v5

    iget v5, p0, Lcom/kwad/sdk/core/h/c;->e:I

    int-to-long v5, v5

    invoke-direct {p0, v5, v6, v0, v1}, Lcom/kwad/sdk/core/h/c;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/h/c;->h:J

    long-to-float v0, v2

    cmpl-float v1, v4, v0

    if-lez v1, :cond_2b

    sub-float/2addr v4, v0

    float-to-long v0, v4

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/core/h/c;->a(J)V

    :cond_2b
    invoke-direct {p0}, Lcom/kwad/sdk/core/h/c;->b()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/core/h/c;->h:J

    return-wide v0
.end method

.method public available()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/h/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/h/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-static {p0}, Lcom/kwad/sdk/core/h/b;->a(Lcom/kwad/sdk/core/h/c;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kwad/sdk/core/h/c;->f:J

    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/h/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/h/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 5

    iget-wide v0, p0, Lcom/kwad/sdk/core/h/c;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/core/h/c;->f:J

    :cond_e
    iget v0, p0, Lcom/kwad/sdk/core/h/c;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/core/h/c;->e:I

    sget-boolean v0, Lcom/kwad/sdk/core/h/b;->b:Z

    if-eqz v0, :cond_1e

    sget-boolean v0, Lcom/kwad/sdk/core/h/b;->a:Z

    if-eqz v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/kwad/sdk/core/h/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    :cond_28
    iget v0, p0, Lcom/kwad/sdk/core/h/c;->a:I

    if-gez v0, :cond_2f

    invoke-direct {p0}, Lcom/kwad/sdk/core/h/c;->b()V

    :cond_2f
    iget-object v0, p0, Lcom/kwad/sdk/core/h/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget v2, p0, Lcom/kwad/sdk/core/h/c;->a:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/kwad/sdk/core/h/c;->a:I

    invoke-direct {p0}, Lcom/kwad/sdk/core/h/c;->c()V

    return v0
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/h/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/h/c;->d:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
