.class public final Lcom/tapjoy/internal/gz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/tapjoy/internal/hn;

.field b:Lcom/tapjoy/internal/by;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Thread;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/tapjoy/internal/hn;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/hn;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    .line 65
    iput-object v0, p0, Lcom/tapjoy/internal/gz;->c:Ljava/lang/Object;

    .line 67
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hn;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 68
    new-instance p1, Ljava/lang/Thread;

    const-string v0, "5Rocks"

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tapjoy/internal/gz;->d:Ljava/lang/Thread;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 70
    return-void
.end method

.method private a(J)V
    .registers 7

    .line 146
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_1f

    .line 147
    iget-object v1, p0, Lcom/tapjoy/internal/gz;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_a
    iput-boolean v0, p0, Lcom/tapjoy/internal/gz;->e:Z

    .line 149
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    .line 150
    iget-object v0, p0, Lcom/tapjoy/internal/gz;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 152
    monitor-exit v1

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw p1

    .line 154
    :cond_1f
    iget-object p1, p0, Lcom/tapjoy/internal/gz;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 155
    :try_start_22
    iput-boolean v0, p0, Lcom/tapjoy/internal/gz;->e:Z

    .line 156
    iget-object p2, p0, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/by;

    if-eqz p2, :cond_30

    iget-object p2, p0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    invoke-virtual {p2}, Lcom/tapjoy/internal/hn;->b()Z

    move-result p2

    if-eqz p2, :cond_35

    .line 162
    :cond_30
    iget-object p2, p0, Lcom/tapjoy/internal/gz;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V

    .line 165
    :cond_35
    monitor-exit p1

    return-void

    :catchall_37
    move-exception p2

    monitor-exit p1
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_37

    throw p2
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/by;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hn;->b()Z

    move-result v0

    if-nez v0, :cond_10

    .line 194
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gz;->a(Z)V

    .line 196
    :cond_10
    return-void
.end method

.method final a(Z)V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/tapjoy/internal/gz;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    iput-boolean p1, p0, Lcom/tapjoy/internal/gz;->e:Z

    .line 172
    iget-object p1, p0, Lcom/tapjoy/internal/gz;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 173
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final run()V
    .registers 16

    .line 76
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 78
    :goto_2
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    .line 79
    :goto_6
    :try_start_6
    iget-object v7, p0, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/by;

    if-eqz v7, :cond_10d

    iget-object v7, p0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    invoke-virtual {v7}, Lcom/tapjoy/internal/hn;->a()I

    move-result v7

    if-lez v7, :cond_10d

    cmp-long v7, v5, v2

    if-gtz v7, :cond_10d

    .line 80
    iget-object v7, p0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    invoke-virtual {v7}, Lcom/tapjoy/internal/hn;->a()I

    move-result v7

    const/16 v8, 0x2710

    if-le v7, v8, :cond_2a

    .line 81
    iget-object v7, p0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    invoke-virtual {v7}, Lcom/tapjoy/internal/hn;->a()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {v7, v9}, Lcom/tapjoy/internal/hn;->a(I)V

    .line 84
    :cond_2a
    iget-object v7, p0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    invoke-virtual {v7, v4}, Lcom/tapjoy/internal/hn;->b(I)Lcom/tapjoy/internal/ew;

    move-result-object v7

    .line 85
    if-eqz v7, :cond_10d

    .line 89
    iget-object v5, v7, Lcom/tapjoy/internal/ew;->w:Lcom/tapjoy/internal/fi;

    .line 90
    const-wide/16 v8, 0x3

    if-eqz v5, :cond_43

    iget-object v5, v5, Lcom/tapjoy/internal/fi;->G:Ljava/lang/String;

    if-nez v5, :cond_43

    .line 91
    sget-object v5, Lcom/tapjoy/internal/hp;->c:Ljava/util/concurrent/CountDownLatch;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8, v9, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 94
    :cond_43
    invoke-static {}, Lcom/tapjoy/internal/u;->c()Z

    move-result v5

    if-nez v5, :cond_50

    .line 95
    sget-object v5, Lcom/tapjoy/internal/hp;->b:Ljava/util/concurrent/CountDownLatch;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8, v9, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 98
    :cond_50
    iget-boolean v5, p0, Lcom/tapjoy/internal/gz;->e:Z

    const/16 v6, 0x64

    if-nez v5, :cond_8b

    iget-object v5, v7, Lcom/tapjoy/internal/ew;->n:Lcom/tapjoy/internal/ez;

    sget-object v8, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ez;

    if-eq v5, v8, :cond_8b

    iget-object v5, p0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    .line 99
    invoke-virtual {v5}, Lcom/tapjoy/internal/hn;->a()I

    move-result v5

    if-ge v5, v6, :cond_8b

    iget-object v5, v7, Lcom/tapjoy/internal/ew;->p:Ljava/lang/Long;

    .line 100
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-lez v5, :cond_73

    goto :goto_8b

    .line 103
    :cond_73
    iget-object v5, v7, Lcom/tapjoy/internal/ew;->p:Ljava/lang/Long;

    .line 105
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v8, v12

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 104
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_8c

    .line 101
    :cond_8b
    :goto_8b
    move-wide v8, v2

    .line 109
    :goto_8c
    cmp-long v5, v8, v2

    if-gtz v5, :cond_10a

    .line 110
    new-instance v5, Lcom/tapjoy/internal/im;

    invoke-direct {v5}, Lcom/tapjoy/internal/im;-><init>()V

    .line 111
    invoke-virtual {v5, v7}, Lcom/tapjoy/internal/im;->a(Lcom/tapjoy/internal/ew;)Z

    .line 112
    new-array v10, v0, [Ljava/lang/Object;

    aput-object v7, v10, v4

    .line 113
    const/4 v7, 0x1

    :goto_9d
    if-ge v7, v6, :cond_bc

    iget-object v10, p0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    invoke-virtual {v10}, Lcom/tapjoy/internal/hn;->a()I

    move-result v10

    if-ge v7, v10, :cond_bc

    .line 114
    iget-object v10, p0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    invoke-virtual {v10, v7}, Lcom/tapjoy/internal/hn;->b(I)Lcom/tapjoy/internal/ew;

    move-result-object v10

    .line 115
    if-eqz v10, :cond_bc

    invoke-virtual {v5, v10}, Lcom/tapjoy/internal/im;->a(Lcom/tapjoy/internal/ew;)Z

    move-result v11

    if-eqz v11, :cond_bc

    .line 118
    new-array v11, v0, [Ljava/lang/Object;

    aput-object v10, v11, v4
    :try_end_b9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_b9} :catch_119
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b9} :catch_117

    .line 113
    add-int/lit8 v7, v7, 0x1

    goto :goto_9d

    .line 122
    :cond_bc
    add-int/lit8 v1, v1, 0x1

    .line 123
    const/4 v6, 0x2

    :try_start_bf
    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/tapjoy/internal/im;->g()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v0

    .line 124
    iget-object v7, p0, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/by;

    invoke-interface {v7, v5}, Lcom/tapjoy/internal/by;->a(Lcom/tapjoy/internal/bv;)Ljava/lang/Object;

    .line 125
    iget-object v7, p0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    invoke-virtual {v5}, Lcom/tapjoy/internal/im;->g()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/tapjoy/internal/hn;->a(I)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_df} :catch_f3
    .catch Ljava/lang/InterruptedException; {:try_start_bf .. :try_end_df} :catch_119

    .line 126
    nop

    .line 127
    :try_start_e0
    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/tapjoy/internal/im;->g()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v4
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_ec} :catch_f0
    .catch Ljava/lang/InterruptedException; {:try_start_e0 .. :try_end_ec} :catch_119

    .line 131
    move-wide v5, v8

    const/4 v1, 0x0

    goto/16 :goto_6

    .line 128
    :catch_f0
    move-exception v1

    const/4 v7, 0x0

    goto :goto_f7

    :catch_f3
    move-exception v7

    move-object v14, v7

    move v7, v1

    move-object v1, v14

    .line 129
    :goto_f7
    :try_start_f7
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/tapjoy/internal/im;->g()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    aput-object v1, v6, v0

    .line 130
    const-wide/32 v5, 0x493e0

    move v1, v7

    goto :goto_10b

    .line 109
    :cond_10a
    move-wide v5, v8

    .line 133
    :goto_10b
    goto/16 :goto_6

    .line 135
    :cond_10d
    iget-object v2, p0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    invoke-virtual {v2}, Lcom/tapjoy/internal/hn;->flush()V

    .line 136
    invoke-direct {p0, v5, v6}, Lcom/tapjoy/internal/gz;->a(J)V
    :try_end_115
    .catch Ljava/lang/InterruptedException; {:try_start_f7 .. :try_end_115} :catch_119
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_115} :catch_117

    .line 137
    goto/16 :goto_2

    .line 140
    :catch_117
    move-exception v0

    .line 143
    return-void

    .line 138
    :catch_119
    move-exception v0

    .line 142
    return-void
.end method
