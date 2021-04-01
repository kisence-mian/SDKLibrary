.class Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallbacksProxy.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    const-string v1, "mActivityLifecycleCallbacks"

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 21
    iget-object v1, p0, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    .line 22
    const/4 v0, 0x0

    .line 30
    :goto_5
    return-object v0

    .line 24
    :cond_6
    const/4 v0, 0x0

    .line 25
    .local v0, "callbacks":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 26
    :try_start_a
    iget-object v1, p0, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_18

    .line 27
    iget-object v1, p0, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 29
    :cond_18
    monitor-exit v2

    goto :goto_5

    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 36
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 37
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 38
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 42
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 99
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 100
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 103
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 69
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 72
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 59
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 62
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 89
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 93
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 49
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 52
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/didi/virtualapk/internal/ActivityLifecycleCallbacksProxy;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "callbacks":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 79
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 82
    .end local v1    # "i":I
    :cond_14
    return-void
.end method
