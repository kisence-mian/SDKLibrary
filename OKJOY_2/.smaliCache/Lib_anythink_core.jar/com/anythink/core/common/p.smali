.class public final Lcom/anythink/core/common/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/p$a;
    }
.end annotation


# static fields
.field private static a:Lcom/anythink/core/common/p;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/p$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/p;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    return-void
.end method

.method public static declared-synchronized a()Lcom/anythink/core/common/p;
    .registers 2

    const-class v0, Lcom/anythink/core/common/p;

    monitor-enter v0

    .line 34
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/p;->a:Lcom/anythink/core/common/p;

    if-nez v1, :cond_e

    .line 35
    new-instance v1, Lcom/anythink/core/common/p;

    invoke-direct {v1}, Lcom/anythink/core/common/p;-><init>()V

    sput-object v1, Lcom/anythink/core/common/p;->a:Lcom/anythink/core/common/p;

    .line 37
    :cond_e
    sget-object v1, Lcom/anythink/core/common/p;->a:Lcom/anythink/core/common/p;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 33
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/anythink/core/common/p;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/p$a;

    .line 105
    if-eqz v0, :cond_22

    iget-object v1, v0, Lcom/anythink/core/common/p$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anythink/core/common/p$a;->b(Lcom/anythink/core/common/p$a;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_22

    .line 113
    :cond_13
    iget-object p1, v0, Lcom/anythink/core/common/p$a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/anythink/core/common/p$a;->b(Lcom/anythink/core/common/p$a;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    return-object v0

    .line 106
    :cond_22
    :goto_22
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object p1

    .line 107
    if-eqz p1, :cond_39

    .line 108
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->g()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 110
    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/p;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/p$a;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1d

    .line 90
    if-nez p1, :cond_d

    .line 91
    monitor-exit p0

    return-void

    .line 93
    :cond_d
    nop

    .line 3183
    :try_start_e
    iget-object p1, p1, Lcom/anythink/core/common/p$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/p$a$a;

    .line 3184
    if-eqz p1, :cond_1b

    .line 3185
    invoke-static {p1}, Lcom/anythink/core/common/p$a$a;->a(Lcom/anythink/core/common/p$a$a;)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1d

    .line 94
    :cond_1b
    monitor-exit p0

    return-void

    .line 88
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c;",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/p;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/p$a;

    .line 49
    if-nez v0, :cond_10

    .line 50
    new-instance v0, Lcom/anythink/core/common/p$a;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/p$a;-><init>(Lcom/anythink/core/common/p;)V

    .line 53
    :cond_10
    nop

    .line 1131
    nop

    .line 1143
    new-instance v1, Lcom/anythink/core/common/p$a$a;

    invoke-direct {v1, v0}, Lcom/anythink/core/common/p$a$a;-><init>(Lcom/anythink/core/common/p$a;)V

    .line 1144
    iput-object p3, v1, Lcom/anythink/core/common/p$a$a;->a:Lcom/anythink/core/c/c;

    .line 1146
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 1147
    invoke-virtual {p3, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1148
    iput-object p3, v1, Lcom/anythink/core/common/p$a$a;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1150
    iget-object p3, v0, Lcom/anythink/core/common/p$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iput-object p2, v0, Lcom/anythink/core/common/p$a;->a:Ljava/lang/String;

    .line 55
    iget-object p3, p0, Lcom/anythink/core/common/p;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {v0, p2}, Lcom/anythink/core/common/p$a;->a(Lcom/anythink/core/common/p$a;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 59
    monitor-exit p0

    return-void

    .line 47
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/p;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/p$a;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2f

    .line 72
    if-nez p1, :cond_d

    .line 73
    monitor-exit p0

    return-void

    .line 76
    :cond_d
    :try_start_d
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_11
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 77
    nop

    .line 2131
    nop

    .line 2171
    iget-object v1, p1, Lcom/anythink/core/common/p$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/p$a$a;

    .line 2172
    if-eqz v1, :cond_2c

    .line 2173
    invoke-static {v1, v0}, Lcom/anythink/core/common/p$a$a;->a(Lcom/anythink/core/common/p$a$a;Lcom/anythink/core/c/c$b;)V
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_2f

    .line 78
    :cond_2c
    goto :goto_11

    .line 80
    :cond_2d
    monitor-exit p0

    return-void

    .line 70
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/anythink/core/common/p;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/p$a;

    .line 122
    if-eqz p1, :cond_d

    .line 123
    iget-object p1, p1, Lcom/anythink/core/common/p$a;->a:Ljava/lang/String;

    return-object p1

    .line 125
    :cond_d
    const-string p1, ""

    return-object p1
.end method
