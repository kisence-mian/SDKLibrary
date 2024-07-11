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
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    .line 62
    iput-boolean p2, p0, Lcom/bytedance/sdk/a/b/a/e/j;->d:Z

    .line 63
    new-instance p1, Lcom/bytedance/sdk/a/a/c;

    invoke-direct {p1}, Lcom/bytedance/sdk/a/a/c;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->e:Lcom/bytedance/sdk/a/a/c;

    .line 64
    new-instance p2, Lcom/bytedance/sdk/a/b/a/e/d$b;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/a/b/a/e/d$b;-><init>(Lcom/bytedance/sdk/a/a/c;)V

    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/j;->a:Lcom/bytedance/sdk/a/b/a/e/d$b;

    .line 65
    const/16 p1, 0x4000

    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

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

    .line 293
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 294
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 295
    and-int/lit16 p1, p1, 0xff

    invoke-interface {p0, p1}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 296
    return-void
.end method

.method private b(IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_24

    .line 300
    iget v2, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 301
    int-to-long v3, v2

    sub-long/2addr p2, v3

    .line 302
    const/16 v5, 0x9

    cmp-long v0, p2, v0

    if-nez v0, :cond_18

    const/4 v0, 0x4

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {p0, p1, v2, v5, v0}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-interface {v0, v1, v3, v4}, Lcom/bytedance/sdk/a/a/d;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 304
    goto :goto_0

    .line 305
    :cond_24
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

    monitor-enter p0

    .line 69
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-nez v0, :cond_3c

    .line 70
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->d:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_44

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    .line 71
    :cond_b
    :try_start_b
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/j;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 72
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
    :cond_2a
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    sget-object v1, Lcom/bytedance/sdk/a/b/a/e/e;->a:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/a/f;->h()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/a/a/d;->c([B)Lcom/bytedance/sdk/a/a/d;

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_44

    .line 76
    monitor-exit p0

    return-void

    .line 69
    :cond_3c
    :try_start_3c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_44

    .line 68
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(IBLcom/bytedance/sdk/a/a/c;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    nop

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 186
    if-lez p4, :cond_d

    .line 187
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lcom/bytedance/sdk/a/a/d;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 189
    :cond_d
    return-void
.end method

.method public a(IIBB)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/j;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-static {v2, p1, p2, p3, p4}, Lcom/bytedance/sdk/a/b/a/e/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 276
    :cond_12
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

    const/4 v1, 0x1

    if-gt p2, v0, :cond_48

    .line 279
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_39

    .line 280
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(Lcom/bytedance/sdk/a/a/d;I)V

    .line 281
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 282
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    .line 283
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 284
    return-void

    .line 279
    :cond_39
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/a/b/a/e/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 277
    :cond_48
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/a/b/a/e/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized a(IILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 110
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-nez v0, :cond_3f

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->a:Lcom/bytedance/sdk/a/b/a/e/d$b;

    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Ljava/util/List;)V

    .line 113
    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/j;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {p3}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v0

    .line 114
    iget p3, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

    const/4 v2, 0x4

    sub-int/2addr p3, v2

    int-to-long v3, p3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    .line 115
    const/4 v3, 0x5

    .line 116
    int-to-long v4, p3

    cmp-long v6, v0, v4

    if-nez v6, :cond_22

    move v7, v2

    goto :goto_23

    :cond_22
    const/4 v7, 0x0

    .line 117
    :goto_23
    add-int/2addr p3, v2

    invoke-virtual {p0, p1, p3, v3, v7}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 118
    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    const v2, 0x7fffffff

    and-int/2addr p2, v2

    invoke-interface {p3, p2}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 119
    iget-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/j;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-interface {p2, p3, v4, v5}, Lcom/bytedance/sdk/a/a/d;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 121
    if-lez v6, :cond_3d

    sub-long/2addr v0, v4

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/j;->b(IJ)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_47

    .line 122
    :cond_3d
    monitor-exit p0

    return-void

    .line 110
    :cond_3f
    :try_start_3f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_47

    .line 109
    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 261
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-nez v0, :cond_37

    .line 262
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, p2, v2

    if-gtz v0, :cond_27

    .line 266
    const/4 v0, 0x4

    .line 267
    const/16 v2, 0x8

    .line 268
    nop

    .line 269
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 270
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 271
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {p1}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_3f

    .line 272
    monitor-exit p0

    return-void

    .line 263
    :cond_27
    :try_start_27
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 264
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    .line 263
    invoke-static {p1, v0}, Lcom/bytedance/sdk/a/b/a/e/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 261
    :cond_37
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_3f

    .line 260
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 149
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-nez v0, :cond_24

    .line 150
    iget v0, p2, Lcom/bytedance/sdk/a/b/a/e/b;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    .line 152
    const/4 v0, 0x4

    .line 153
    const/4 v1, 0x3

    .line 154
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 156
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    iget p2, p2, Lcom/bytedance/sdk/a/b/a/e/b;->g:I

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 157
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {p1}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_2c

    .line 158
    monitor-exit p0

    return-void

    .line 150
    :cond_1e
    :try_start_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 149
    :cond_24
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2c

    .line 148
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ILcom/bytedance/sdk/a/b/a/e/b;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 241
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-nez v0, :cond_38

    .line 242
    iget v0, p2, Lcom/bytedance/sdk/a/b/a/e/b;->g:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2f

    .line 243
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    .line 244
    const/4 v1, 0x7

    .line 245
    nop

    .line 246
    nop

    .line 247
    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 249
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    iget p2, p2, Lcom/bytedance/sdk/a/b/a/e/b;->g:I

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 250
    array-length p1, p3

    if-lez p1, :cond_28

    .line 251
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {p1, p3}, Lcom/bytedance/sdk/a/a/d;->c([B)Lcom/bytedance/sdk/a/a/d;

    .line 253
    :cond_28
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {p1}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_40

    .line 254
    monitor-exit p0

    return-void

    .line 242
    :cond_2f
    :try_start_2f
    const-string p1, "errorCode.httpCode == -1"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/a/b/a/e/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 241
    :cond_38
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_40

    .line 240
    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/bytedance/sdk/a/b/a/e/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-nez v0, :cond_2c

    .line 83
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/a/e/n;->d(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

    .line 84
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/n;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->a:Lcom/bytedance/sdk/a/b/a/e/d$b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/n;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(I)V

    .line 87
    :cond_1d
    nop

    .line 88
    const/4 p1, 0x4

    .line 89
    const/4 v0, 0x1

    .line 90
    nop

    .line 91
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 92
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {p1}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_34

    .line 93
    monitor-exit p0

    return-void

    .line 82
    :cond_2c
    :try_start_2c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    .line 81
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ZII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 220
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-nez v0, :cond_23

    .line 221
    const/16 v0, 0x8

    .line 222
    const/4 v1, 0x6

    .line 223
    const/4 v2, 0x0

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    move p1, v2

    .line 224
    :goto_e
    nop

    .line 225
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 226
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 227
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {p1, p3}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 228
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {p1}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_2b

    .line 229
    monitor-exit p0

    return-void

    .line 220
    :cond_23
    :try_start_23
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    .line 219
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ZIILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 131
    :try_start_1
    iget-boolean p3, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-nez p3, :cond_a

    .line 132
    invoke-virtual {p0, p1, p2, p4}, Lcom/bytedance/sdk/a/b/a/e/j;->a(ZILjava/util/List;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_12

    .line 133
    monitor-exit p0

    return-void

    .line 131
    :cond_a
    :try_start_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_12

    .line 130
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(ZILcom/bytedance/sdk/a/a/c;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 177
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-nez v0, :cond_f

    .line 178
    const/4 v0, 0x0

    .line 179
    if-eqz p1, :cond_a

    const/4 p1, 0x1

    int-to-byte v0, p1

    .line 180
    :cond_a
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IBLcom/bytedance/sdk/a/a/c;I)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_17

    .line 181
    monitor-exit p0

    return-void

    .line 177
    :cond_f
    :try_start_f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_17

    .line 176
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(ZILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-nez v0, :cond_37

    .line 309
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->a:Lcom/bytedance/sdk/a/b/a/e/d$b;

    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/a/b/a/e/d$b;->a(Ljava/util/List;)V

    .line 311
    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/j;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-virtual {p3}, Lcom/bytedance/sdk/a/a/c;->b()J

    move-result-wide v0

    .line 312
    iget p3, p0, Lcom/bytedance/sdk/a/b/a/e/j;->f:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    .line 313
    nop

    .line 314
    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-nez v4, :cond_1f

    const/4 v5, 0x4

    goto :goto_20

    :cond_1f
    const/4 v5, 0x0

    .line 315
    :goto_20
    if-eqz p1, :cond_25

    or-int/lit8 p1, v5, 0x1

    int-to-byte v5, p1

    .line 316
    :cond_25
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1, v5}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 317
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    iget-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/j;->e:Lcom/bytedance/sdk/a/a/c;

    invoke-interface {p1, p3, v2, v3}, Lcom/bytedance/sdk/a/a/d;->a_(Lcom/bytedance/sdk/a/a/c;J)V

    .line 319
    if-lez v4, :cond_36

    sub-long/2addr v0, v2

    invoke-direct {p0, p2, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/j;->b(IJ)V

    .line 320
    :cond_36
    return-void

    .line 308
    :cond_37
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 125
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-nez v0, :cond_c

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 127
    monitor-exit p0

    return-void

    .line 125
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    .line 124
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/bytedance/sdk/a/b/a/e/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 195
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->g:Z

    if-nez v0, :cond_42

    .line 196
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/n;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .line 197
    nop

    .line 198
    nop

    .line 199
    nop

    .line 200
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/bytedance/sdk/a/b/a/e/j;->a(IIBB)V

    .line 201
    nop

    :goto_14
    const/16 v0, 0xa

    if-ge v1, v0, :cond_3b

    .line 202
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/a/b/a/e/n;->a(I)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_38

    .line 203
    :cond_1f
    nop

    .line 204
    if-ne v1, v2, :cond_24

    .line 205
    const/4 v0, 0x3

    goto :goto_2a

    .line 206
    :cond_24
    const/4 v0, 0x7

    if-ne v1, v0, :cond_29

    .line 207
    move v0, v2

    goto :goto_2a

    .line 206
    :cond_29
    move v0, v1

    .line 209
    :goto_2a
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {v3, v0}, Lcom/bytedance/sdk/a/a/d;->h(I)Lcom/bytedance/sdk/a/a/d;

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/a/b/a/e/n;->b(I)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/a/a/d;->g(I)Lcom/bytedance/sdk/a/a/d;

    .line 201
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 212
    :cond_3b
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/j;->c:Lcom/bytedance/sdk/a/a/d;

    invoke-interface {p1}, Lcom/bytedance/sdk/a/a/d;->flush()V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_4a

    .line 213
    monitor-exit p0

    return-void

    .line 195
    :cond_42
    :try_start_42
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4a

    .line 194
    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()I
    .registers 2

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

    monitor-enter p0

    .line 288
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

    .line 287
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
