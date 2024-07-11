.class public Lcom/bytedance/embedapplog/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embedapplog/IDataObserver;


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/embedapplog/IDataObserver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/bytedance/embedapplog/bi;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/bytedance/embedapplog/IDataObserver;)V
    .registers 4

    monitor-enter p0

    .line 75
    if-eqz p1, :cond_11

    .line 76
    :try_start_3
    sget-object v0, Lcom/bytedance/embedapplog/bi;->a:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_e

    goto :goto_11

    .line 74
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1

    .line 78
    :cond_11
    :goto_11
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lcom/bytedance/embedapplog/IDataObserver;)V
    .registers 4

    monitor-enter p0

    .line 81
    :try_start_1
    sget-object v0, Lcom/bytedance/embedapplog/bi;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 82
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 84
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/embedapplog/IDataObserver;

    .line 85
    if-nez v1, :cond_1f

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_28

    .line 87
    :cond_1f
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2b

    .line 92
    :cond_28
    :goto_28
    goto :goto_7

    .line 93
    :cond_29
    monitor-exit p0

    return-void

    .line 80
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 20
    :try_start_1
    sget-object v0, Lcom/bytedance/embedapplog/bi;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 21
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 23
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/embedapplog/IDataObserver;

    .line 24
    if-nez v1, :cond_1f

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    .line 27
    :cond_1f
    invoke-interface {v1, p1, p2, p3}, Lcom/bytedance/embedapplog/IDataObserver;->onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_25

    .line 29
    :goto_22
    goto :goto_7

    .line 30
    :cond_23
    monitor-exit p0

    return-void

    .line 19
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRemoteAbConfigGet(ZLorg/json/JSONObject;)V
    .registers 5

    monitor-enter p0

    .line 62
    :try_start_1
    sget-object v0, Lcom/bytedance/embedapplog/bi;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 63
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 65
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/embedapplog/IDataObserver;

    .line 66
    if-nez v1, :cond_1f

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    .line 69
    :cond_1f
    invoke-interface {v1, p1, p2}, Lcom/bytedance/embedapplog/IDataObserver;->onRemoteAbConfigGet(ZLorg/json/JSONObject;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_25

    .line 71
    :goto_22
    goto :goto_7

    .line 72
    :cond_23
    monitor-exit p0

    return-void

    .line 61
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRemoteConfigGet(ZLorg/json/JSONObject;)V
    .registers 5

    monitor-enter p0

    .line 48
    :try_start_1
    sget-object v0, Lcom/bytedance/embedapplog/bi;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 49
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 51
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/embedapplog/IDataObserver;

    .line 52
    if-nez v1, :cond_1f

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    .line 55
    :cond_1f
    invoke-interface {v1, p1, p2}, Lcom/bytedance/embedapplog/IDataObserver;->onRemoteConfigGet(ZLorg/json/JSONObject;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_25

    .line 57
    :goto_22
    goto :goto_7

    .line 58
    :cond_23
    monitor-exit p0

    return-void

    .line 47
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    monitor-enter p0

    .line 34
    :try_start_1
    sget-object v0, Lcom/bytedance/embedapplog/bi;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 35
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 37
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bytedance/embedapplog/IDataObserver;

    .line 38
    if-nez v2, :cond_20

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2c

    .line 41
    :cond_20
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/bytedance/embedapplog/IDataObserver;->onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2f

    .line 43
    :goto_2c
    goto :goto_7

    .line 44
    :cond_2d
    monitor-exit p0

    return-void

    .line 33
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
