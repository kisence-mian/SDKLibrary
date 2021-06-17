.class public final Landroidx/test/espresso/util/ActivityLifecycles;
.super Ljava/lang/Object;
.source "ActivityLifecycles.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasForegroundActivities(Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 40
    sget-object v0, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    invoke-interface {p0, v0}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static hasTransitioningActivities(Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 83
    sget-object v0, Landroidx/test/runner/lifecycle/Stage;->RESTARTED:Landroidx/test/runner/lifecycle/Stage;

    invoke-interface {p0, v0}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Landroidx/test/runner/lifecycle/Stage;->STARTED:Landroidx/test/runner/lifecycle/Stage;

    .line 84
    invoke-interface {p0, v0}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    .line 85
    invoke-interface {p0, v0}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p0, 0x1

    .line 83
    :goto_28
    return p0
.end method

.method public static hasVisibleActivities(Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .line 61
    invoke-static {p0}, Landroidx/test/espresso/util/ActivityLifecycles;->hasForegroundActivities(Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Landroidx/test/espresso/util/ActivityLifecycles;->hasTransitioningActivities(Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method
