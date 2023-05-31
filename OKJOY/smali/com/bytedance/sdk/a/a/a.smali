.class public Lcom/bytedance/sdk/a/a/a;
.super Lcom/bytedance/sdk/a/a/t;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/a/a$a;
    }
.end annotation


# static fields
.field static a:Lcom/bytedance/sdk/a/a/a;

.field private static final b:J

.field private static final d:J


# instance fields
.field private e:Z

.field private f:Lcom/bytedance/sdk/a/a/a;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/a/a/a;->b:J

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v2, Lcom/bytedance/sdk/a/a/a;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/a/a/a;->d:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/t;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Lcom/bytedance/sdk/a/a/a;JZ)V
    .registers 13

    .prologue
    const-wide/16 v4, 0x0

    .line 93
    const-class v1, Lcom/bytedance/sdk/a/a/a;

    monitor-enter v1

    :try_start_5
    sget-object v0, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    if-nez v0, :cond_18

    .line 94
    new-instance v0, Lcom/bytedance/sdk/a/a/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    .line 95
    new-instance v0, Lcom/bytedance/sdk/a/a/a$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/a/a$a;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/a$a;->start()V

    .line 98
    :cond_18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 99
    cmp-long v0, p1, v4

    if-eqz v0, :cond_53

    if-eqz p3, :cond_53

    .line 102
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/a;->c_()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/bytedance/sdk/a/a/a;->g:J

    .line 112
    :goto_2e
    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/a/a/a;->b(J)J

    move-result-wide v4

    .line 113
    sget-object v0, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    .line 114
    :goto_34
    iget-object v6, v0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    if-eqz v6, :cond_42

    iget-object v6, v0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    invoke-direct {v6, v2, v3}, Lcom/bytedance/sdk/a/a/a;->b(J)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_6e

    .line 115
    :cond_42
    iget-object v2, v0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    iput-object v2, p0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    .line 116
    iput-object p0, v0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    .line 117
    sget-object v2, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    if-ne v0, v2, :cond_51

    .line 118
    const-class v0, Lcom/bytedance/sdk/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_5c

    .line 123
    :cond_51
    monitor-exit v1

    return-void

    .line 103
    :cond_53
    cmp-long v0, p1, v4

    if-eqz v0, :cond_5f

    .line 104
    add-long v4, v2, p1

    :try_start_59
    iput-wide v4, p0, Lcom/bytedance/sdk/a/a/a;->g:J
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_5c

    goto :goto_2e

    .line 93
    :catchall_5c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 105
    :cond_5f
    if-eqz p3, :cond_68

    .line 106
    :try_start_61
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/a;->c_()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/bytedance/sdk/a/a/a;->g:J

    goto :goto_2e

    .line 108
    :cond_68
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 113
    :cond_6e
    iget-object v0, v0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;
    :try_end_70
    .catchall {:try_start_61 .. :try_end_70} :catchall_5c

    goto :goto_34
.end method

.method private static declared-synchronized a(Lcom/bytedance/sdk/a/a/a;)Z
    .registers 4

    .prologue
    .line 139
    const-class v1, Lcom/bytedance/sdk/a/a/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    :goto_5
    if-eqz v0, :cond_18

    .line 140
    iget-object v2, v0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    if-ne v2, p0, :cond_15

    .line 141
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    iput-object v2, v0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    .line 143
    const/4 v0, 0x0

    .line 148
    :goto_13
    monitor-exit v1

    return v0

    .line 139
    :cond_15
    :try_start_15
    iget-object v0, v0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1a

    goto :goto_5

    .line 148
    :cond_18
    const/4 v0, 0x1

    goto :goto_13

    .line 139
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(J)J
    .registers 6

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/a;->g:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method static d()Lcom/bytedance/sdk/a/a/a;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/32 v6, 0xf4240

    const/4 v0, 0x0

    .line 363
    sget-object v1, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    iget-object v1, v1, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    .line 366
    if-nez v1, :cond_2a

    .line 367
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 368
    const-class v1, Lcom/bytedance/sdk/a/a/a;

    sget-wide v4, Lcom/bytedance/sdk/a/a/a;->b:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 369
    sget-object v1, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    iget-object v1, v1, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    if-nez v1, :cond_29

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    sget-wide v4, Lcom/bytedance/sdk/a/a/a;->d:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_29

    sget-object v0, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    .line 389
    :cond_29
    :goto_29
    return-object v0

    .line 374
    :cond_2a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/a/a/a;->b(J)J

    move-result-wide v2

    .line 377
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_43

    .line 380
    div-long v4, v2, v6

    .line 381
    mul-long/2addr v6, v4

    sub-long/2addr v2, v6

    .line 382
    const-class v1, Lcom/bytedance/sdk/a/a/a;

    long-to-int v2, v2

    invoke-virtual {v1, v4, v5, v2}, Ljava/lang/Object;->wait(JI)V

    goto :goto_29

    .line 387
    :cond_43
    sget-object v2, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    iget-object v3, v1, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    iput-object v3, v2, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    .line 388
    iput-object v0, v1, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    move-object v0, v1

    .line 389
    goto :goto_29
.end method


# virtual methods
.method public final a(Lcom/bytedance/sdk/a/a/r;)Lcom/bytedance/sdk/a/a/r;
    .registers 3

    .prologue
    .line 171
    new-instance v0, Lcom/bytedance/sdk/a/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/a/a/a$1;-><init>(Lcom/bytedance/sdk/a/a/a;Lcom/bytedance/sdk/a/a/r;)V

    return-object v0
.end method

.method public final a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/s;
    .registers 3

    .prologue
    .line 248
    new-instance v0, Lcom/bytedance/sdk/a/a/a$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/a/a/a$2;-><init>(Lcom/bytedance/sdk/a/a/a;Lcom/bytedance/sdk/a/a/s;)V

    return-object v0
.end method

.method final a(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 306
    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_6
.end method

.method public final a()V
    .registers 7

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/a;->e:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/a;->b_()J

    move-result-wide v0

    .line 82
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/a;->c()Z

    move-result v2

    .line 83
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_1d

    if-nez v2, :cond_1d

    .line 88
    :goto_1c
    return-void

    .line 86
    :cond_1d
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/bytedance/sdk/a/a/a;->e:Z

    .line 87
    invoke-static {p0, v0, v1, v2}, Lcom/bytedance/sdk/a/a/a;->a(Lcom/bytedance/sdk/a/a/a;JZ)V

    goto :goto_1c
.end method

.method final a(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/a;->b()Z

    move-result v0

    .line 296
    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/a/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 297
    :cond_e
    return-void
.end method

.method protected a_()V
    .registers 1

    .prologue
    .line 164
    return-void
.end method

.method protected b(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    .prologue
    .line 315
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 316
    if-eqz p1, :cond_c

    .line 317
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 319
    :cond_c
    return-object v0
.end method

.method public final b()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 129
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/a/a;->e:Z

    if-nez v1, :cond_6

    .line 131
    :goto_5
    return v0

    .line 130
    :cond_6
    iput-boolean v0, p0, Lcom/bytedance/sdk/a/a/a;->e:Z

    .line 131
    invoke-static {p0}, Lcom/bytedance/sdk/a/a/a;->a(Lcom/bytedance/sdk/a/a/a;)Z

    move-result v0

    goto :goto_5
.end method
