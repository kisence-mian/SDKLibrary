.class public Lcom/bytedance/applog/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/applog/IDataObserver;


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bytedance/applog/IDataObserver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/bytedance/applog/util/a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/bytedance/applog/IDataObserver;)V
    .registers 4

    .prologue
    .line 75
    monitor-enter p0

    if-eqz p1, :cond_d

    .line 76
    :try_start_3
    sget-object v0, Lcom/bytedance/applog/util/a;->a:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 78
    :cond_d
    monitor-exit p0

    return-void

    .line 75
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/bytedance/applog/IDataObserver;)V
    .registers 4

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/bytedance/applog/util/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 82
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 84
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/IDataObserver;

    .line 85
    if-nez v0, :cond_22

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_7

    .line 81
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_22
    :try_start_22
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_1f

    goto :goto_7

    .line 93
    :cond_2c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "iid"    # Ljava/lang/String;
    .param p3, "ssid"    # Ljava/lang/String;

    .prologue
    .line 20
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/bytedance/applog/util/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 21
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 23
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/IDataObserver;

    .line 24
    if-nez v0, :cond_22

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_7

    .line 20
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 27
    :cond_22
    :try_start_22
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/applog/IDataObserver;->onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    goto :goto_7

    .line 30
    :cond_26
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onRemoteAbConfigGet(ZLorg/json/JSONObject;)V
    .registers 5
    .param p1, "changed"    # Z
    .param p2, "abConfig"    # Lorg/json/JSONObject;

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/bytedance/applog/util/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 63
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 65
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/IDataObserver;

    .line 66
    if-nez v0, :cond_22

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_7

    .line 62
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 69
    :cond_22
    :try_start_22
    invoke-interface {v0, p1, p2}, Lcom/bytedance/applog/IDataObserver;->onRemoteAbConfigGet(ZLorg/json/JSONObject;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    goto :goto_7

    .line 72
    :cond_26
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onRemoteConfigGet(ZLorg/json/JSONObject;)V
    .registers 5
    .param p1, "changed"    # Z
    .param p2, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/bytedance/applog/util/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 49
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 51
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/IDataObserver;

    .line 52
    if-nez v0, :cond_22

    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_7

    .line 48
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 55
    :cond_22
    :try_start_22
    invoke-interface {v0, p1, p2}, Lcom/bytedance/applog/IDataObserver;->onRemoteConfigGet(ZLorg/json/JSONObject;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    goto :goto_7

    .line 58
    :cond_26
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p1, "changed"    # Z
    .param p2, "oldDid"    # Ljava/lang/String;
    .param p3, "newDid"    # Ljava/lang/String;
    .param p4, "oldIid"    # Ljava/lang/String;
    .param p5, "newIid"    # Ljava/lang/String;
    .param p6, "oldSsid"    # Ljava/lang/String;
    .param p7, "newSsid"    # Ljava/lang/String;

    .prologue
    .line 34
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/bytedance/applog/util/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 35
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 36
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 37
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/IDataObserver;

    .line 38
    if-nez v0, :cond_22

    .line 39
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_7

    .line 34
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_22
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 41
    :try_start_2a
    invoke-interface/range {v0 .. v7}, Lcom/bytedance/applog/IDataObserver;->onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_1f

    goto :goto_7

    .line 44
    :cond_2e
    monitor-exit p0

    return-void
.end method
