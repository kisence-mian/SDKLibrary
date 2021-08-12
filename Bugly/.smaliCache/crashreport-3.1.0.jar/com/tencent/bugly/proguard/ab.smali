.class public final Lcom/tencent/bugly/proguard/ab;
.super Ljava/lang/Thread;
.source "BUGLY"


# instance fields
.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/aa;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ab;->a:Z

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ab;->b:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/os/Handler;)V
    .registers 6

    .line 78
    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 79
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "removeThread handler should not be null"

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 80
    return-void

    .line 82
    :cond_b
    move v1, v0

    :goto_c
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 83
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/aa;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 84
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/ab;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "remove handler::%s"

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 85
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 82
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 88
    :cond_4a
    return-void
.end method

.method private a(Landroid/os/Handler;J)V
    .registers 7

    .line 58
    const/4 p2, 0x0

    if-nez p1, :cond_b

    .line 59
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "addThread handler should not be null"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 60
    return-void

    .line 62
    :cond_b
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    .line 63
    move v0, p2

    :goto_18
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ab;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 64
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ab;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/aa;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 65
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "addThread fail ,this thread has been added in monitor queue"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 66
    return-void

    .line 63
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 69
    :cond_49
    iget-object p2, p0, Lcom/tencent/bugly/proguard/ab;->b:Ljava/util/List;

    new-instance v0, Lcom/tencent/bugly/proguard/aa;

    const-wide/16 v1, 0x1388

    invoke-direct {v0, p1, p3, v1, v2}, Lcom/tencent/bugly/proguard/aa;-><init>(Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v1, 0x1388

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/bugly/proguard/ab;->a(Landroid/os/Handler;J)V

    .line 34
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/ac;)V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 144
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "addThreadMonitorListeners fail ,this threadMonitorListener has been added in monitor queue"

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 145
    return-void

    .line 147
    :cond_11
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public final b()V
    .registers 3

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/ab;->a(Landroid/os/Handler;)V

    .line 42
    return-void
.end method

.method public final b(Lcom/tencent/bugly/proguard/ac;)V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public final c()Z
    .registers 4

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ab;->a:Z

    .line 102
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ab;->isAlive()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 103
    return v2

    .line 106
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ab;->interrupt()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    .line 109
    goto :goto_1d

    .line 107
    :catch_f
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 110
    :goto_1d
    return v0
.end method

.method public final d()Z
    .registers 4

    .line 117
    nop

    .line 118
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ab;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 119
    return v1

    .line 122
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ab;->start()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_e

    .line 123
    const/4 v1, 0x1

    .line 126
    goto :goto_1c

    .line 124
    :catch_e
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 127
    :goto_1c
    return v1
.end method

.method public final run()V
    .registers 10

    .line 174
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ab;->a:Z

    if-nez v0, :cond_d7

    .line 175
    nop

    .line 176
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 177
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/aa;

    .line 178
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/aa;->a()V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 180
    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x7d0

    move-wide v5, v3

    .line 181
    :goto_24
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_40

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ab;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_40

    .line 183
    :try_start_30
    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/ab;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    .line 186
    goto :goto_38

    .line 184
    :catch_34
    move-exception v5

    .line 185
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    :goto_38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    sub-long v5, v3, v5

    goto :goto_24

    .line 189
    :cond_40
    move v1, v0

    move v2, v1

    :goto_42
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ab;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5d

    iget-object v3, p0, Lcom/tencent/bugly/proguard/ab;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v3}, Lcom/tencent/bugly/proguard/aa;->c()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 190
    :cond_5d
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 194
    move v3, v0

    :goto_68
    iget-object v4, p0, Lcom/tencent/bugly/proguard/ab;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8c

    .line 195
    iget-object v4, p0, Lcom/tencent/bugly/proguard/ab;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/proguard/aa;

    .line 196
    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/aa;->b()Z

    move-result v5

    if-eqz v5, :cond_89

    .line 197
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {v4, v5, v6}, Lcom/tencent/bugly/proguard/aa;->a(J)V

    .line 194
    :cond_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 201
    :cond_8c
    nop

    .line 202
    move v3, v0

    move v4, v3

    :goto_8f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_d5

    .line 203
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/proguard/aa;

    .line 204
    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/aa;->d()Ljava/lang/Thread;

    move-result-object v6

    .line 205
    move v7, v0

    :goto_a0
    iget-object v8, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_ba

    .line 206
    iget-object v8, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/bugly/proguard/ac;

    invoke-interface {v8, v6}, Lcom/tencent/bugly/proguard/ac;->a(Ljava/lang/Thread;)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 207
    move v4, v1

    .line 205
    :cond_b7
    add-int/lit8 v7, v7, 0x1

    goto :goto_a0

    .line 210
    :cond_ba
    if-nez v4, :cond_d2

    .line 211
    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/aa;->e()Ljava/lang/String;

    move-result-object v6

    const-string v7, "main"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d2

    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/aa;->f()V

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "although thread is blocked ,may not be anr error,so restore handler check wait time and restart check main thread"

    invoke-static {v6, v5}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 202
    :cond_d2
    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    .line 214
    :cond_d5
    goto/16 :goto_0

    .line 215
    :cond_d7
    return-void
.end method
