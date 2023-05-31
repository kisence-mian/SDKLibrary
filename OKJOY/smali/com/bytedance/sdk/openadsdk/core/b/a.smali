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
            "Ljava/util/Queue",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private final f:Lcom/bytedance/sdk/openadsdk/core/h/l;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->f:Lcom/bytedance/sdk/openadsdk/core/h/l;

    .line 36
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/b/a;
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/b/a;

    if-nez v0, :cond_13

    .line 40
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/b/a;

    monitor-enter v1

    .line 41
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/b/a;

    if-nez v0, :cond_12

    .line 42
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/b/a;

    .line 44
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 46
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/b/a;

    return-object v0

    .line 44
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized a(J)V
    .registers 6

    .prologue
    .line 92
    monitor-enter p0

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

    .line 92
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/b/a;Z)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .registers 3

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 105
    monitor-exit p0

    return-void

    .line 104
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(J)V
    .registers 4

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    sput-wide p1, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)Z
    .registers 9

    .prologue
    .line 55
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->f:Lcom/bytedance/sdk/openadsdk/core/h/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->l()I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->f:Lcom/bytedance/sdk/openadsdk/core/h/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->k()J

    move-result-wide v4

    .line 58
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_51

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lt v1, v0, :cond_51

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/b/a$a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/a$a;->a(Lcom/bytedance/sdk/openadsdk/core/b/a$a;)J

    move-result-wide v0

    .line 60
    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 62
    cmp-long v6, v0, v4

    if-gtz v6, :cond_3f

    .line 63
    sub-long v0, v4, v0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b(J)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_5d

    .line 64
    const/4 v0, 0x1

    .line 72
    :goto_3d
    monitor-exit p0

    return v0

    .line 66
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/b/a$a;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/bytedance/sdk/openadsdk/core/b/a$a;-><init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/b/a$1;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 72
    :goto_4f
    const/4 v0, 0x0

    goto :goto_3d

    .line 70
    :cond_51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/b/a$a;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/bytedance/sdk/openadsdk/core/b/a$a;-><init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/b/a$1;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_3f .. :try_end_5c} :catchall_5d

    goto :goto_4f

    .line 55
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V

    .line 81
    sget-wide v0, Lcom/bytedance/sdk/openadsdk/core/b/a;->c:J

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(J)V

    .line 85
    :goto_10
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    monitor-exit p0

    return v0

    .line 83
    :cond_14
    const/4 v0, 0x0

    :try_start_15
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Z)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_10

    .line 79
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .registers 2

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/b/a;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .registers 7

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/b/a$a;

    .line 121
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/b/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 122
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/b/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/b/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3e

    goto :goto_c

    .line 119
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 124
    :cond_41
    :try_start_41
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/a$a;->b(Lcom/bytedance/sdk/openadsdk/core/b/a$a;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 127
    :cond_4e
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 129
    const/high16 v1, -0x80000000

    .line 130
    const-string v0, ""

    move-object v2, v0

    move v3, v1

    .line 133
    :cond_5c
    :goto_5c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 134
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_71
    .catchall {:try_start_41 .. :try_end_71} :catchall_3e

    move-result v1

    .line 136
    if-ge v3, v1, :cond_5c

    move-object v2, v0

    move v3, v1

    .line 138
    goto :goto_5c

    .line 141
    :cond_77
    monitor-exit p0

    return-object v2
.end method
