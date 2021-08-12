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
    .registers 3

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/a/a/a;->b:J

    .line 53
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/a/a/a;->d:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/bytedance/sdk/a/a/t;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Lcom/bytedance/sdk/a/a/a;JZ)V
    .registers 9

    const-class v0, Lcom/bytedance/sdk/a/a/a;

    monitor-enter v0

    .line 95
    :try_start_3
    sget-object v1, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    if-nez v1, :cond_1b

    .line 96
    new-instance v1, Lcom/bytedance/sdk/a/a/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/a/a/a;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    .line 97
    new-instance v1, Lcom/bytedance/sdk/a/a/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/a/a/a$a;-><init>()V

    .line 98
    const-string v2, "tt_pangle_thread_watch_dog"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 102
    :cond_1b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 103
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-eqz v3, :cond_34

    if-eqz p3, :cond_34

    .line 106
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/a;->c_()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/bytedance/sdk/a/a/a;->g:J

    goto :goto_42

    .line 107
    :cond_34
    if-eqz v3, :cond_3a

    .line 108
    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/bytedance/sdk/a/a/a;->g:J

    goto :goto_42

    .line 109
    :cond_3a
    if-eqz p3, :cond_67

    .line 110
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/a;->c_()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/a/a/a;->g:J

    .line 116
    :goto_42
    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/a/a/a;->b(J)J

    move-result-wide p1

    .line 117
    sget-object p3, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    .line 118
    :goto_48
    iget-object v3, p3, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    if-eqz v3, :cond_58

    invoke-direct {v3, v1, v2}, Lcom/bytedance/sdk/a/a/a;->b(J)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_55

    goto :goto_58

    .line 117
    :cond_55
    iget-object p3, p3, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    goto :goto_48

    .line 119
    :cond_58
    :goto_58
    iget-object p1, p3, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    iput-object p1, p0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    .line 120
    iput-object p0, p3, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    .line 121
    sget-object p0, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    if-ne p3, p0, :cond_65

    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_6d

    .line 127
    :cond_65
    monitor-exit v0

    return-void

    .line 112
    :cond_67
    :try_start_67
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_6d

    .line 94
    :catchall_6d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Lcom/bytedance/sdk/a/a/a;)Z
    .registers 4

    const-class v0, Lcom/bytedance/sdk/a/a/a;

    monitor-enter v0

    .line 143
    :try_start_3
    sget-object v1, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    :goto_5
    if-eqz v1, :cond_17

    .line 144
    iget-object v2, v1, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    if-ne v2, p0, :cond_15

    .line 145
    iget-object v2, p0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    iput-object v2, v1, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    .line 147
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    .line 143
    :cond_15
    move-object v1, v2

    goto :goto_5

    .line 152
    :cond_17
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    .line 142
    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b(J)J
    .registers 5

    .line 160
    iget-wide v0, p0, Lcom/bytedance/sdk/a/a/a;->g:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method static d()Lcom/bytedance/sdk/a/a/a;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 367
    const-class v0, Lcom/bytedance/sdk/a/a/a;

    sget-object v1, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    iget-object v1, v1, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    .line 370
    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 371
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 372
    sget-wide v5, Lcom/bytedance/sdk/a/a/a;->b:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 373
    sget-object v0, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    iget-object v0, v0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    if-nez v0, :cond_25

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-wide v3, Lcom/bytedance/sdk/a/a/a;->d:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_25

    sget-object v2, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    :cond_25
    return-object v2

    .line 378
    :cond_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/a/a/a;->b(J)J

    move-result-wide v3

    .line 381
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_40

    .line 384
    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    .line 385
    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    .line 386
    long-to-int v1, v3

    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    .line 387
    return-object v2

    .line 391
    :cond_40
    sget-object v0, Lcom/bytedance/sdk/a/a/a;->a:Lcom/bytedance/sdk/a/a/a;

    iget-object v3, v1, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    iput-object v3, v0, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    .line 392
    iput-object v2, v1, Lcom/bytedance/sdk/a/a/a;->f:Lcom/bytedance/sdk/a/a/a;

    .line 393
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/bytedance/sdk/a/a/r;)Lcom/bytedance/sdk/a/a/r;
    .registers 3

    .line 175
    new-instance v0, Lcom/bytedance/sdk/a/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/a/a/a$1;-><init>(Lcom/bytedance/sdk/a/a/a;Lcom/bytedance/sdk/a/a/r;)V

    return-object v0
.end method

.method public final a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/s;
    .registers 3

    .line 252
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

    .line 309
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 310
    :cond_7
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 6

    .line 82
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/a;->e:Z

    if-nez v0, :cond_1c

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/a;->b_()J

    move-result-wide v0

    .line 84
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/a;->c()Z

    move-result v2

    .line 85
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_15

    if-nez v2, :cond_15

    .line 86
    return-void

    .line 88
    :cond_15
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/bytedance/sdk/a/a/a;->e:Z

    .line 89
    invoke-static {p0, v0, v1, v2}, Lcom/bytedance/sdk/a/a/a;->a(Lcom/bytedance/sdk/a/a/a;JZ)V

    .line 90
    return-void

    .line 82
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/a/a;->b()Z

    move-result v0

    .line 300
    if-eqz v0, :cond_f

    if-nez p1, :cond_9

    goto :goto_f

    :cond_9
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/a/a;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 301
    :cond_f
    :goto_f
    return-void
.end method

.method protected a_()V
    .registers 1

    .line 168
    return-void
.end method

.method protected b(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    .line 319
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 320
    if-eqz p1, :cond_c

    .line 321
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 323
    :cond_c
    return-object v0
.end method

.method public final b()Z
    .registers 3

    .line 133
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/a/a;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 134
    :cond_6
    iput-boolean v1, p0, Lcom/bytedance/sdk/a/a/a;->e:Z

    .line 135
    invoke-static {p0}, Lcom/bytedance/sdk/a/a/a;->a(Lcom/bytedance/sdk/a/a/a;)Z

    move-result v0

    return v0
.end method
