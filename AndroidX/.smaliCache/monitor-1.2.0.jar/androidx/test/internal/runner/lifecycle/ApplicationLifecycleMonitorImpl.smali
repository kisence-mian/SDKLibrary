.class public Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;
.super Ljava/lang/Object;
.source "ApplicationLifecycleMonitorImpl.java"

# interfaces
.implements Landroidx/test/runner/lifecycle/ApplicationLifecycleMonitor;


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationLifecycleMonitorImpl"


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addLifecycleCallback(Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;)V
    .registers 7
    .param p1, "callback"    # Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 43
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 46
    const/4 v1, 0x1

    .line 47
    .local v1, "needsAdd":Z
    :try_start_7
    iget-object v2, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 48
    .local v2, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;>;>;"
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;

    .line 50
    .local v3, "storedCallback":Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    if-nez v3, :cond_25

    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_28

    .line 52
    :cond_25
    if-ne v3, p1, :cond_28

    .line 53
    const/4 v1, 0x0

    .line 55
    .end local v3    # "storedCallback":Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    :cond_28
    :goto_28
    goto :goto_d

    .line 56
    :cond_29
    if-eqz v1, :cond_35

    .line 57
    iget-object v3, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v1    # "needsAdd":Z
    .end local v2    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;>;>;"
    :cond_35
    monitor-exit v0

    .line 60
    return-void

    .line 59
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    goto :goto_3b

    :goto_3a
    throw v1

    :goto_3b
    goto :goto_3a
.end method

.method public removeLifecycleCallback(Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;)V
    .registers 5
    .param p1, "callback"    # Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 67
    :try_start_6
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    .local v1, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;>;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;

    .line 70
    .local v2, "storedCallback":Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    if-nez v2, :cond_24

    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_29

    .line 72
    :cond_24
    if-ne v2, p1, :cond_29

    .line 73
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 75
    .end local v2    # "storedCallback":Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    :cond_29
    :goto_29
    goto :goto_c

    .line 76
    .end local v1    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;>;>;"
    :cond_2a
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2c

    goto :goto_30

    :goto_2f
    throw v1

    :goto_30
    goto :goto_2f
.end method

.method public signalLifecycleChange(Landroid/app/Application;Landroidx/test/runner/lifecycle/ApplicationStage;)V
    .registers 11
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "stage"    # Landroidx/test/runner/lifecycle/ApplicationStage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "app",
            "stage"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 82
    .local v1, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;>;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;

    .line 84
    .local v2, "callback":Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    if-nez v2, :cond_21

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_89

    goto :goto_86

    .line 88
    :cond_21
    :try_start_21
    const-string v3, "ApplicationLifecycleMonitorImpl"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "running callback: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-interface {v2, p1, p2}, Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;->onApplicationLifecycleChanged(Landroid/app/Application;Landroidx/test/runner/lifecycle/ApplicationStage;)V

    .line 90
    const-string v3, "ApplicationLifecycleMonitorImpl"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "callback completes: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_70} :catch_71
    .catchall {:try_start_21 .. :try_end_70} :catchall_89

    .line 97
    goto :goto_86

    .line 91
    :catch_71
    move-exception v3

    .line 92
    .local v3, "re":Ljava/lang/RuntimeException;
    :try_start_72
    const-string v4, "ApplicationLifecycleMonitorImpl"

    const-string v5, "Callback threw exception! (callback: %s stage: %s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    .line 94
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v2    # "callback":Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    .end local v3    # "re":Ljava/lang/RuntimeException;
    :goto_86
    goto :goto_9

    .line 100
    .end local v1    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;>;>;"
    :cond_87
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_89
    move-exception v1

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_72 .. :try_end_8b} :catchall_89

    goto :goto_8d

    :goto_8c
    throw v1

    :goto_8d
    goto :goto_8c
.end method
