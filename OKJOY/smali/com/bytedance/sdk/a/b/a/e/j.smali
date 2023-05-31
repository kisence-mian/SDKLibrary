.class final Lcom/bytedance/sdk/a/b/a/e/j;
.super Ljava/lang/Object;
.source "Http2Writer.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field final a:Lcom/bytedance/sdk/a/b/a/e/d$b;

.field private final c:Lcom/bytedance/sdk/a/a/d;

.field private final d:Z

.field private final e:Lcom/bytedance/sdk/a/a/c;

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-class v0, Lcom/bytedance/sdk/a/b/a/e/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/j;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/a/a/d;Z)V
    .registers 5

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    .line 62
    iput-boolean p2, p0, Lcom/bytedance/sdk/a/b/a/e/j;->d:Z

    .line 63
    new-instance v0, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->e:Lcom/bytedance/sdk/a/a/c;

    .line 64
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/d$b;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$b;-><init>(Lcom/bytedance/sdk/a/a/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->a:Lcom/bytedance/sdk/a/b/a/e/d$b;

    .line 65
    const/16 v0, 0x4000

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

    .line 66
    return-void
.end method

.method private static a(Lcom/bytedance/sdk/a/a/d;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 294
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 295
    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 296
    return-void
.end method

.method private b(IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 299
    :goto_2
    cmp-long v0, p2, v6

    if-lez v0, :cond_25

    .line 300
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 301
    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 302
    const/16 v2, 0x9

    cmp-long v0, p2, v6

    if-nez v0, :cond_23

    const/4 v0, 0x4

    :goto_17
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/j;->e:Lcom/bytedance/sdk/a/a/c;

    int-to-long v4, v1

    invoke-interface {v0, v2, v4, v5}, Lcom/bytedance/sdk/a/a/d;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    goto :goto_2

    .line 302
    :cond_23
    const/4 v0, 0x0

    goto :goto_17

    .line 305
    :cond_25
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->d:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_d

    if-nez v0, :cond_16

    .line 76
    :goto_14
    monitor-exit p0

    return-void

    .line 71
    :cond_16
    :try_start_16
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/j;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 72
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/j;->b:Ljava/util/logging/Logger;

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/bytedance/sdk/a/b/a/e/e;->a:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v4}, Lcom/bytedance/sdk/a/a/f;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/bytedance/sdk/a/b/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 74
    :cond_37
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/e;->a:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/f;->h()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->c([B)Lcom/bytedance/sdk/a/a/d;

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_47
    .catchall {:try_start_16 .. :try_end_47} :catchall_d

    goto :goto_14
.end method

.method a(IBLcom/bytedance/sdk/a/a/c;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 186
    if-lez p4, :cond_c

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    int-to-long v2, p4

    invoke-interface {v0, p3, v2, v3}, Lcom/bytedance/sdk/a/a/d;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 189
    :cond_c
    return-void
.end method

.method public a(IIBB)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 275
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/j;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/j;->b:Ljava/util/logging/Logger;

    invoke-static {v3, p1, p2, p3, p4}, Lcom/bytedance/sdk/a/b/a/e/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 276
    :cond_15
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

    if-le p2, v0, :cond_31

    .line 277
    const-string v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 279
    :cond_31
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_45

    const-string v0, "reserved bit set: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 280
    :cond_45
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(Lcom/bytedance/sdk/a/a/d;I)V

    .line 281
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 283
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 284
    return-void
.end method

.method public declared-synchronized a(IILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->a:Lcom/bytedance/sdk/a/b/a/e/d$b;

    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Ljava/util/List;)V

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v2

    .line 114
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

    add-int/lit8 v0, v0, -0x4

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 115
    const/4 v4, 0x5

    .line 116
    int-to-long v6, v1

    cmp-long v0, v2, v6

    if-nez v0, :cond_4f

    const/4 v0, 0x4

    .line 117
    :goto_2c
    add-int/lit8 v5, v1, 0x4

    invoke-virtual {p0, p1, v5, v4, v0}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    const v4, 0x7fffffff

    and-int/2addr v4, p2

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/j;->e:Lcom/bytedance/sdk/a/a/c;

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lcom/bytedance/sdk/a/a/d;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 121
    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_4d

    int-to-long v0, v1

    sub-long v0, v2, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/j;->b(IJ)V
    :try_end_4d
    .catchall {:try_start_10 .. :try_end_4d} :catchall_d

    .line 122
    :cond_4d
    monitor-exit p0

    return-void

    .line 116
    :cond_4f
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public declared-synchronized a(IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 262
    :cond_10
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1d

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_2e

    .line 263
    :cond_1d
    :try_start_1d
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 264
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 263
    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 266
    :cond_2e
    const/4 v0, 0x4

    .line 267
    const/16 v1, 0x8

    .line 268
    const/4 v2, 0x0

    .line 269
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 270
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_40
    .catchall {:try_start_1d .. :try_end_40} :catchall_d

    .line 272
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 150
    :cond_10
    :try_start_10
    iget v0, p2, Lcom/bytedance/sdk/a/b/a/e/b;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 152
    :cond_1b
    const/4 v0, 0x4

    .line 153
    const/4 v1, 0x3

    .line 154
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    iget v1, p2, Lcom/bytedance/sdk/a/b/a/e/b;->g:I

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_d

    .line 158
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ILcom/bytedance/sdk/a/b/a/e/b;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 242
    :cond_10
    :try_start_10
    iget v0, p2, Lcom/bytedance/sdk/a/b/a/e/b;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    const-string v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 243
    :cond_1f
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    .line 244
    const/4 v1, 0x7

    .line 245
    const/4 v2, 0x0

    .line 246
    const/4 v3, 0x0

    .line 247
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    iget v1, p2, Lcom/bytedance/sdk/a/b/a/e/b;->g:I

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 250
    array-length v0, p3

    if-lez v0, :cond_3c

    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0, p3}, Lcom/bytedance/sdk/a/a/d;->c([B)Lcom/bytedance/sdk/a/a/d;

    .line 253
    :cond_3c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_41
    .catchall {:try_start_10 .. :try_end_41} :catchall_d

    .line 254
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/bytedance/sdk/a/b/a/e/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 83
    :cond_10
    :try_start_10
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/a/e/n;->d(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

    .line 84
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/n;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->a:Lcom/bytedance/sdk/a/b/a/e/d$b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/n;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(I)V

    .line 87
    :cond_28
    const/4 v0, 0x0

    .line 88
    const/4 v1, 0x4

    .line 89
    const/4 v2, 0x1

    .line 90
    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_d

    .line 93
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 220
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-eqz v1, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    :cond_11
    const/16 v1, 0x8

    .line 222
    const/4 v2, 0x6

    .line 223
    if-eqz p1, :cond_17

    const/4 v0, 0x1

    .line 224
    :cond_17
    const/4 v3, 0x0

    .line 225
    :try_start_18
    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0, p3}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_e

    .line 229
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZIILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 132
    :cond_10
    :try_start_10
    invoke-virtual {p0, p1, p2, p4}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ZILjava/util/List;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    .line 133
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(ZILcom/bytedance/sdk/a/a/c;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 178
    :cond_10
    const/4 v0, 0x0

    .line 179
    if-eqz p1, :cond_15

    const/4 v0, 0x1

    int-to-byte v0, v0

    .line 180
    :cond_15
    :try_start_15
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IBLcom/bytedance/sdk/a/a/c;I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_d

    .line 181
    monitor-exit p0

    return-void
.end method

.method a(ZILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->a:Lcom/bytedance/sdk/a/b/a/e/d$b;

    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Ljava/util/List;)V

    .line 311
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v2

    .line 312
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

    int-to-long v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 313
    const/4 v4, 0x1

    .line 314
    int-to-long v6, v1

    cmp-long v0, v2, v6

    if-nez v0, :cond_42

    const/4 v0, 0x4

    .line 315
    :goto_26
    if-eqz p1, :cond_2b

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    .line 316
    :cond_2b
    invoke-virtual {p0, p2, v1, v4, v0}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 317
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    iget-object v4, p0, Lcom/bytedance/sdk/a/b/a/e/j;->e:Lcom/bytedance/sdk/a/a/c;

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lcom/bytedance/sdk/a/a/d;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 319
    int-to-long v4, v1

    cmp-long v0, v2, v4

    if-lez v0, :cond_41

    int-to-long v0, v1

    sub-long v0, v2, v0

    invoke-direct {p0, p2, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/j;->b(IJ)V

    .line 320
    :cond_41
    return-void

    .line 314
    :cond_42
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public declared-synchronized b()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    .line 127
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lcom/bytedance/sdk/a/b/a/e/n;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 195
    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 196
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/n;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .line 197
    const/4 v3, 0x4

    .line 198
    const/4 v4, 0x0

    .line 199
    const/4 v5, 0x0

    .line 200
    invoke-virtual {p0, v5, v0, v3, v4}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 201
    :goto_1e
    const/16 v0, 0xa

    if-ge v2, v0, :cond_42

    .line 202
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/a/b/a/e/n;->a(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 201
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 204
    :cond_2b
    if-ne v2, v1, :cond_3d

    .line 205
    const/4 v0, 0x3

    .line 209
    :goto_2e
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v3, v0}, Lcom/bytedance/sdk/a/a/d;->h(I)Lcom/bytedance/sdk/a/a/d;

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/a/b/a/e/n;->b(I)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    goto :goto_28

    .line 206
    :cond_3d
    const/4 v0, 0x7

    if-ne v2, v0, :cond_49

    move v0, v1

    .line 207
    goto :goto_2e

    .line 212
    :cond_42
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_f

    .line 213
    monitor-exit p0

    return-void

    :cond_49
    move v0, v2

    goto :goto_2e
.end method

.method public c()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

    return v0
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 290
    monitor-exit p0

    return-void

    .line 288
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
