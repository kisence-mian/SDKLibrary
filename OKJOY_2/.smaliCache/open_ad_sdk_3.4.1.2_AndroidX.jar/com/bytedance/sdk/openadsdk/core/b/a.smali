.class public Lcom/bytedance/sdk/openadsdk/core/b/a;
.super Ljava/lang/Object;
.source "FrequentCallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/b/a$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/core/b/a;

.field private static volatile b:Z

.field private static volatile c:J


# instance fields
.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bytedance/sdk/openadsdk/core/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private final f:Lcom/bytedance/sdk/openadsdk/core/h/h;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->f:Lcom/bytedance/sdk/openadsdk/core/h/h;

    .line 36
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/b/a;
    .registers 2

    .line 39
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/b/a;

    if-nez v0, :cond_17

    .line 40
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/b/a;

    monitor-enter v0

    .line 41
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/b/a;

    if-nez v1, :cond_12

    .line 42
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/b/a;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/b/a;

    .line 44
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 46
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/b/a;

    return-object v0
.end method

.method private declared-synchronized a(J)V
    .registers 5

    monitor-enter p0

    .line 92
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Landroid/os/Handler;

    if-nez v0, :cond_10

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Landroid/os/Handler;

    .line 95
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->e:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/b/a$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/b/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/b/a;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 101
    monitor-exit p0

    return-void

    .line 91
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/b/a;Z)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .registers 2

    monitor-enter p0

    .line 104
    :try_start_1
    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 105
    monitor-exit p0

    return-void

    .line 103
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(J)V
    .registers 3

    monitor-enter p0

    .line 112
    :try_start_1
    sput-wide p1, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 113
    monitor-exit p0

    return-void

    .line 111
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Ljava/lang/String;)Z
    .registers 11

    monitor-enter p0

    .line 55
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->f:Lcom/bytedance/sdk/openadsdk/core/h/h;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h/h;->k()I

    move-result v2

    .line 57
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->f:Lcom/bytedance/sdk/openadsdk/core/h/h;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/h/h;->j()J

    move-result-wide v3

    .line 58
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_4f

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    if-lt v5, v2, :cond_4f

    .line 59
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/b/a$a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/b/a$a;->a(Lcom/bytedance/sdk/openadsdk/core/b/a$a;)J

    move-result-wide v7

    .line 60
    sub-long v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 62
    cmp-long v2, v7, v3

    if-gtz v2, :cond_3f

    .line 63
    sub-long/2addr v3, v7

    invoke-direct {p0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b(J)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_5c

    .line 64
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 66
    :cond_3f
    :try_start_3f
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 67
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/b/a$a;

    invoke-direct {v3, v0, v1, p1, v6}, Lcom/bytedance/sdk/openadsdk/core/b/a$a;-><init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/b/a$1;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 69
    goto :goto_59

    .line 70
    :cond_4f
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/b/a$a;

    invoke-direct {v3, v0, v1, p1, v6}, Lcom/bytedance/sdk/openadsdk/core/b/a$a;-><init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/b/a$1;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_59
    .catchall {:try_start_3f .. :try_end_59} :catchall_5c

    .line 72
    :goto_59
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 54
    :catchall_5c
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 79
    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 80
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    .line 81
    sget-wide v0, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:J

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(J)V

    goto :goto_15

    .line 83
    :cond_11
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    .line 85
    :goto_15
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return p1

    .line 78
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Z
    .registers 2

    monitor-enter p0

    .line 108
    :try_start_1
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 108
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 119
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/b/a$a;

    .line 121
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/b/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/b/a$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3e

    .line 122
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/b/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/b/a$a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/b/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/b/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    .line 124
    :cond_3e
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/b/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/b/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :goto_49
    goto :goto_c

    .line 127
    :cond_4a
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 128
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 129
    const/high16 v2, -0x80000000

    .line 130
    const-string v3, ""

    .line 133
    :cond_56
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 135
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_74

    .line 136
    if-ge v2, v5, :cond_56

    .line 137
    nop

    .line 138
    move-object v3, v4

    move v2, v5

    goto :goto_56

    .line 141
    :cond_72
    monitor-exit p0

    return-object v3

    .line 118
    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0
.end method
