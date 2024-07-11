.class public final Lcom/anythink/core/common/b;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/anythink/core/common/b;


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    return-void
.end method

.method public static declared-synchronized a()Lcom/anythink/core/common/b;
    .registers 2

    const-class v0, Lcom/anythink/core/common/b;

    monitor-enter v0

    .line 25
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/b;->c:Lcom/anythink/core/common/b;

    if-nez v1, :cond_e

    .line 26
    new-instance v1, Lcom/anythink/core/common/b;

    invoke-direct {v1}, Lcom/anythink/core/common/b;-><init>()V

    sput-object v1, Lcom/anythink/core/common/b;->c:Lcom/anythink/core/common/b;

    .line 28
    :cond_e
    sget-object v1, Lcom/anythink/core/common/b;->c:Lcom/anythink/core/common/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 24
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/lang/String;J)V
    .registers 5

    .line 51
    iget-object v0, p0, Lcom/anythink/core/common/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method private b(Ljava/lang/String;J)V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/anythink/core/common/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/c/c$b;)Z
    .registers 8

    .line 38
    nop

    .line 2080
    iget-wide v0, p1, Lcom/anythink/core/c/c$b;->D:J

    .line 38
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 39
    return v1

    .line 42
    :cond_b
    iget-object v0, p0, Lcom/anythink/core/common/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/anythink/core/common/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 43
    :cond_23
    nop

    .line 3080
    iget-wide v4, p1, Lcom/anythink/core/c/c$b;->D:J

    .line 43
    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_30

    .line 44
    return v1

    .line 47
    :cond_30
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/anythink/core/c/c$b;)Z
    .registers 8

    .line 56
    nop

    .line 3084
    iget-wide v0, p1, Lcom/anythink/core/c/c$b;->E:J

    .line 56
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 57
    return v1

    .line 60
    :cond_b
    iget-object v0, p0, Lcom/anythink/core/common/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/anythink/core/common/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 61
    :cond_23
    nop

    .line 4084
    iget-wide v4, p1, Lcom/anythink/core/c/c$b;->E:J

    .line 61
    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_30

    .line 62
    return v1

    .line 65
    :cond_30
    const/4 p1, 0x1

    return p1
.end method
