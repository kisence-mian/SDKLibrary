.class public final Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;
.super Ljava/lang/Object;
.source "ActivityLifecycleMonitorImpl.java"

# interfaces
.implements Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LifecycleMonitor"


# instance fields
.field private activityStatuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final declawThreadCheck:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;-><init>(Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "declawThreadCheck"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "declawThreadCheck"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->activityStatuses:Ljava/util/List;

    .line 44
    iput-boolean p1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->declawThreadCheck:Z

    .line 45
    return-void
.end method

.method private checkMainThread()V
    .registers 3

    .line 181
    iget-boolean v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->declawThreadCheck:Z

    if-eqz v0, :cond_5

    .line 182
    return-void

    .line 185
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 188
    return-void

    .line 186
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Querying activity state off main thread is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V
    .registers 7
    .param p1, "callback"    # Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 57
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 60
    const/4 v1, 0x1

    .line 61
    .local v1, "needsAdd":Z
    :try_start_7
    iget-object v2, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 62
    .local v2, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;>;>;"
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 64
    .local v3, "storedCallback":Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    if-nez v3, :cond_25

    .line 65
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_28

    .line 66
    :cond_25
    if-ne v3, p1, :cond_28

    .line 67
    const/4 v1, 0x0

    .line 69
    .end local v3    # "storedCallback":Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    :cond_28
    :goto_28
    goto :goto_d

    .line 70
    :cond_29
    if-eqz v1, :cond_35

    .line 71
    iget-object v3, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v1    # "needsAdd":Z
    .end local v2    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;>;>;"
    :cond_35
    monitor-exit v0

    .line 74
    return-void

    .line 73
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

.method public getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;
    .registers 7
    .param p1, "stage"    # Landroidx/test/runner/lifecycle/Stage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/runner/lifecycle/Stage;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->checkMainThread()V

    .line 113
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->activityStatuses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 117
    .local v1, "statusIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;>;"
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;

    .line 119
    .local v2, "status":Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    # getter for: Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->activityRef:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$000(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 120
    .local v3, "statusActivity":Landroid/app/Activity;
    if-nez v3, :cond_2d

    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_36

    .line 122
    :cond_2d
    # getter for: Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->lifecycleStage:Landroidx/test/runner/lifecycle/Stage;
    invoke-static {v2}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$100(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Landroidx/test/runner/lifecycle/Stage;

    move-result-object v4

    if-ne p1, v4, :cond_36

    .line 123
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v2    # "status":Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    .end local v3    # "statusActivity":Landroid/app/Activity;
    :cond_36
    :goto_36
    goto :goto_11

    .line 127
    :cond_37
    return-object v0
.end method

.method public getLifecycleStageOf(Landroid/app/Activity;)Landroidx/test/runner/lifecycle/Stage;
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->checkMainThread()V

    .line 96
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->activityStatuses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 98
    .local v0, "statusIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;

    .line 100
    .local v1, "status":Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    # getter for: Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->activityRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$000(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 101
    .local v2, "statusActivity":Landroid/app/Activity;
    if-nez v2, :cond_28

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2f

    .line 103
    :cond_28
    if-ne p1, v2, :cond_2f

    .line 104
    # getter for: Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->lifecycleStage:Landroidx/test/runner/lifecycle/Stage;
    invoke-static {v1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$100(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Landroidx/test/runner/lifecycle/Stage;

    move-result-object v3

    return-object v3

    .line 106
    .end local v1    # "status":Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    .end local v2    # "statusActivity":Landroid/app/Activity;
    :cond_2f
    :goto_2f
    goto :goto_c

    .line 107
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown activity: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_58

    :goto_57
    throw v1

    :goto_58
    goto :goto_57
.end method

.method public removeLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V
    .registers 5
    .param p1, "callback"    # Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 78
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 81
    :try_start_6
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 82
    .local v1, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;>;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 84
    .local v2, "storedCallback":Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    if-nez v2, :cond_24

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_29

    .line 86
    :cond_24
    if-ne v2, p1, :cond_29

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 89
    .end local v2    # "storedCallback":Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    :cond_29
    :goto_29
    goto :goto_c

    .line 90
    .end local v1    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;>;>;"
    :cond_2a
    monitor-exit v0

    .line 91
    return-void

    .line 90
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

.method public signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V
    .registers 13
    .param p1, "stage"    # Landroidx/test/runner/lifecycle/Stage;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stage",
            "activity"
        }
    .end annotation

    .line 137
    const-string v0, "LifecycleMonitor"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Lifecycle status change: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x1

    .line 140
    .local v0, "needsAdd":Z
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->activityStatuses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 141
    .local v1, "statusIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;>;"
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;

    .line 143
    .local v2, "status":Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    # getter for: Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->activityRef:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$000(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 144
    .local v3, "statusActivity":Landroid/app/Activity;
    if-nez v3, :cond_60

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_66

    .line 146
    :cond_60
    if-ne p2, v3, :cond_66

    .line 147
    const/4 v0, 0x0

    .line 148
    # setter for: Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->lifecycleStage:Landroidx/test/runner/lifecycle/Stage;
    invoke-static {v2, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$102(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;Landroidx/test/runner/lifecycle/Stage;)Landroidx/test/runner/lifecycle/Stage;

    .line 150
    .end local v2    # "status":Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    .end local v3    # "statusActivity":Landroid/app/Activity;
    :cond_66
    :goto_66
    goto :goto_44

    .line 152
    :cond_67
    if-eqz v0, :cond_73

    .line 153
    iget-object v2, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->activityStatuses:Ljava/util/List;

    new-instance v3, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;

    invoke-direct {v3, p2, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;-><init>(Landroid/app/Activity;Landroidx/test/runner/lifecycle/Stage;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_73
    iget-object v2, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    monitor-enter v2

    .line 157
    :try_start_76
    iget-object v3, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 158
    .local v3, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;>;>;"
    :goto_7c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 159
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 160
    .local v4, "callback":Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    if-nez v4, :cond_94

    .line 161
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_93
    .catchall {:try_start_76 .. :try_end_93} :catchall_100

    goto :goto_fc

    .line 164
    :cond_94
    :try_start_94
    const-string v5, "LifecycleMonitor"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "running callback: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-interface {v4, p2, p1}, Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;->onActivityLifecycleChanged(Landroid/app/Activity;Landroidx/test/runner/lifecycle/Stage;)V

    .line 166
    const-string v5, "LifecycleMonitor"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "callback completes: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catch Ljava/lang/RuntimeException; {:try_start_94 .. :try_end_e3} :catch_e4
    .catchall {:try_start_94 .. :try_end_e3} :catchall_100

    .line 174
    goto :goto_fc

    .line 167
    :catch_e4
    move-exception v5

    .line 168
    .local v5, "re":Ljava/lang/RuntimeException;
    :try_start_e5
    const-string v6, "LifecycleMonitor"

    const-string v7, "Callback threw exception! (callback: %s activity: %s stage: %s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p1, v8, v9

    .line 170
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 168
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v4    # "callback":Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    .end local v5    # "re":Ljava/lang/RuntimeException;
    :goto_fc
    goto/16 :goto_7c

    .line 177
    .end local v3    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;>;>;"
    :cond_fe
    monitor-exit v2

    .line 178
    return-void

    .line 177
    :catchall_100
    move-exception v3

    monitor-exit v2
    :try_end_102
    .catchall {:try_start_e5 .. :try_end_102} :catchall_100

    goto :goto_104

    :goto_103
    throw v3

    :goto_104
    goto :goto_103
.end method
