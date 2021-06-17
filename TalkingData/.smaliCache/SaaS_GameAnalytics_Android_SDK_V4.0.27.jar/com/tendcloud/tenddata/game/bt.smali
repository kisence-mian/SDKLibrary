.class public final Lcom/tendcloud/tenddata/game/bt;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/bt$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/bt;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentMap;

.field private final c:Ljava/lang/ThreadLocal;

.field private final d:Ljava/lang/ThreadLocal;

.field private final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/bt;->a:Lcom/tendcloud/tenddata/game/bt;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bt;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 44
    new-instance v0, Lcom/tendcloud/tenddata/game/bu;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/bu;-><init>(Lcom/tendcloud/tenddata/game/bt;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bt;->c:Ljava/lang/ThreadLocal;

    .line 54
    new-instance v0, Lcom/tendcloud/tenddata/game/bv;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/bv;-><init>(Lcom/tendcloud/tenddata/game/bt;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bt;->d:Ljava/lang/ThreadLocal;

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bt;->e:Ljava/util/Map;

    .line 64
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/bt;
    .registers 2

    .line 29
    sget-object v0, Lcom/tendcloud/tenddata/game/bt;->a:Lcom/tendcloud/tenddata/game/bt;

    if-nez v0, :cond_17

    .line 30
    const-class v0, Lcom/tendcloud/tenddata/game/bt;

    monitor-enter v0

    .line 31
    :try_start_7
    sget-object v1, Lcom/tendcloud/tenddata/game/bt;->a:Lcom/tendcloud/tenddata/game/bt;

    if-nez v1, :cond_12

    .line 32
    new-instance v1, Lcom/tendcloud/tenddata/game/bt;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/bt;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/bt;->a:Lcom/tendcloud/tenddata/game/bt;

    .line 34
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 36
    :cond_17
    :goto_17
    sget-object v0, Lcom/tendcloud/tenddata/game/bt;->a:Lcom/tendcloud/tenddata/game/bt;

    return-object v0
.end method

.method private c(Ljava/lang/Class;)Ljava/util/Set;
    .registers 4

    .line 295
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 296
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 298
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_27

    .line 301
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 302
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 305
    if-eqz p1, :cond_26

    .line 306
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_28

    .line 308
    :cond_26
    goto :goto_d

    .line 309
    :cond_27
    return-object v1

    .line 310
    :catchall_28
    move-exception p1

    .line 312
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 313
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method a(Ljava/lang/Class;)Ljava/util/Set;
    .registers 3

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bt;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object p1

    .line 263
    :catchall_9
    move-exception p1

    .line 265
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 266
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/bx;)V
    .registers 5

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bt;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/tendcloud/tenddata/game/bt$a;

    invoke-direct {v1, p1, p2}, Lcom/tendcloud/tenddata/game/bt$a;-><init>(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/bx;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 197
    goto :goto_15

    .line 194
    :catchall_11
    move-exception p1

    .line 196
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 198
    :goto_15
    return-void
.end method

.method b(Ljava/lang/Class;)Ljava/util/Set;
    .registers 4

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bt;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 280
    if-nez v0, :cond_13

    .line 281
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/bt;->c(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bt;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    .line 285
    :cond_13
    return-object v0

    .line 286
    :catchall_14
    move-exception p1

    .line 288
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 289
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b()V
    .registers 4

    .line 208
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bt;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_4f

    if-eqz v1, :cond_19

    .line 224
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bt;->d:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 209
    return-void

    .line 212
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bt;->d:Ljava/lang/ThreadLocal;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 214
    :goto_23
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bt;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/bt$a;
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_4f

    .line 215
    if-nez v1, :cond_3f

    .line 216
    nop

    .line 224
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bt;->d:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 225
    nop

    .line 226
    return-void

    .line 219
    :cond_3f
    :try_start_3f
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/bt$a;->handler:Lcom/tendcloud/tenddata/game/bx;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/bx;->a()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 220
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/bt$a;->event:Ljava/lang/Object;

    iget-object v1, v1, Lcom/tendcloud/tenddata/game/bt$a;->handler:Lcom/tendcloud/tenddata/game/bx;

    invoke-virtual {p0, v2, v1}, Lcom/tendcloud/tenddata/game/bt;->b(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/bx;)V
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_4f

    .line 222
    :cond_4e
    goto :goto_23

    .line 224
    :catchall_4f
    move-exception v1

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bt;->d:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_5b

    :goto_5a
    throw v1

    :goto_5b
    goto :goto_5a
.end method

.method protected b(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/bx;)V
    .registers 3

    .line 243
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/tendcloud/tenddata/game/bx;->handleEvent(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 250
    goto :goto_8

    .line 244
    :catchall_4
    move-exception p1

    .line 249
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 251
    :goto_8
    return-void
.end method

.method public post(Ljava/lang/Object;)V
    .registers 6

    .line 157
    if-nez p1, :cond_3

    .line 159
    return-void

    .line 162
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/bt;->b(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 164
    const/4 v1, 0x0

    .line 165
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 166
    invoke-virtual {p0, v2}, Lcom/tendcloud/tenddata/game/bt;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v2

    .line 168
    if-eqz v2, :cond_3d

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 169
    const/4 v1, 0x1

    .line 170
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/game/bx;

    .line 171
    invoke-virtual {p0, p1, v3}, Lcom/tendcloud/tenddata/game/bt;->a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/bx;)V

    .line 172
    goto :goto_2d

    .line 174
    :cond_3d
    goto :goto_10

    .line 176
    :cond_3e
    if-nez v1, :cond_4c

    instance-of v0, p1, Lcom/tendcloud/tenddata/game/by;

    if-nez v0, :cond_4c

    .line 177
    new-instance v0, Lcom/tendcloud/tenddata/game/by;

    invoke-direct {v0, p0, p1}, Lcom/tendcloud/tenddata/game/by;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    .line 180
    :cond_4c
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/bt;->b()V
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_50

    .line 184
    goto :goto_54

    .line 181
    :catchall_50
    move-exception p1

    .line 183
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 185
    :goto_54
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .registers 6

    .line 73
    if-nez p1, :cond_3

    .line 74
    return-void

    .line 77
    :cond_3
    :try_start_3
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 78
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 79
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bt;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 80
    if-nez v2, :cond_36

    .line 82
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 83
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/bt;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 84
    if-nez v3, :cond_35

    .line 85
    goto :goto_36

    .line 84
    :cond_35
    move-object v2, v3

    .line 88
    :cond_36
    :goto_36
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 89
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v1
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_45

    if-nez v1, :cond_43

    .line 91
    return-void

    .line 93
    :cond_43
    goto :goto_f

    .line 97
    :cond_44
    goto :goto_49

    .line 94
    :catchall_45
    move-exception p1

    .line 96
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 98
    :goto_49
    return-void
.end method

.method public unregister(Ljava/lang/Object;)V
    .registers 7

    .line 109
    if-nez p1, :cond_3

    .line 111
    return-void

    .line 114
    :cond_3
    :try_start_3
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 115
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/tendcloud/tenddata/game/bt;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 119
    if-eqz v1, :cond_52

    invoke-interface {v1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_52

    .line 125
    :cond_34
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/game/bx;

    .line 126
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 127
    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/bx;->b()V

    .line 129
    :cond_4d
    goto :goto_38

    .line 130
    :cond_4e
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_54

    .line 131
    goto :goto_f

    .line 122
    :cond_52
    :goto_52
    return-void

    .line 135
    :cond_53
    goto :goto_58

    .line 132
    :catchall_54
    move-exception p1

    .line 134
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 136
    :goto_58
    return-void
.end method
