.class public final Lcom/anythink/core/common/o;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/anythink/core/common/o;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/common/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    return-void
.end method

.method public static declared-synchronized a()Lcom/anythink/core/common/o;
    .registers 2

    const-class v0, Lcom/anythink/core/common/o;

    monitor-enter v0

    .line 29
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/o;->a:Lcom/anythink/core/common/o;

    if-nez v1, :cond_e

    .line 30
    new-instance v1, Lcom/anythink/core/common/o;

    invoke-direct {v1}, Lcom/anythink/core/common/o;-><init>()V

    sput-object v1, Lcom/anythink/core/common/o;->a:Lcom/anythink/core/common/o;

    .line 32
    :cond_e
    sget-object v1, Lcom/anythink/core/common/o;->a:Lcom/anythink/core/common/o;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 28
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    monitor-enter p0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_d

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/common/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    :cond_d
    iget-object v0, p0, Lcom/anythink/core/common/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 66
    if-nez v0, :cond_22

    .line 67
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 68
    iget-object v1, p0, Lcom/anythink/core/common/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_22
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 71
    monitor-exit p0

    return-void

    .line 61
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/anythink/core/common/d;
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/anythink/core/common/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/d;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/common/d;)V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/anythink/core/common/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 44
    if-nez p2, :cond_5

    .line 45
    monitor-exit p0

    return-void

    .line 47
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/anythink/core/common/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    .line 48
    monitor-exit p0

    return-void

    .line 43
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 51
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 52
    iget-object v1, p0, Lcom/anythink/core/common/o;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_16

    .line 53
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 54
    if-eqz p1, :cond_16

    .line 55
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 58
    :cond_16
    monitor-exit p0

    return-object v0

    .line 50
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method
