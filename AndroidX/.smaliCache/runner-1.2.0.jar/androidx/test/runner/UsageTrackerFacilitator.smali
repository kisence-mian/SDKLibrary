.class public Landroidx/test/runner/UsageTrackerFacilitator;
.super Ljava/lang/Object;
.source "UsageTrackerFacilitator.java"

# interfaces
.implements Landroidx/test/internal/runner/tracker/UsageTracker;


# static fields
.field private static final TAG:Ljava/lang/String; = "UsageTrackerFacilitator"


# instance fields
.field private final shouldTrackUsage:Z


# direct methods
.method public constructor <init>(Landroidx/test/internal/runner/RunnerArgs;)V
    .registers 4
    .param p1, "runnerArgs"    # Landroidx/test/internal/runner/RunnerArgs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnerArgs"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "runnerArgs cannot be null!"

    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p1, Landroidx/test/internal/runner/RunnerArgs;->orchestratorService:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 44
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->disableAnalytics:Z

    if-nez v0, :cond_16

    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->listTestsForOrchestrator:Z

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iput-boolean v1, p0, Landroidx/test/runner/UsageTrackerFacilitator;->shouldTrackUsage:Z

    goto :goto_1f

    .line 46
    :cond_1a
    iget-boolean v0, p1, Landroidx/test/internal/runner/RunnerArgs;->disableAnalytics:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/test/runner/UsageTrackerFacilitator;->shouldTrackUsage:Z

    .line 48
    :goto_1f
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2
    .param p1, "shouldTrackUsage"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldTrackUsage"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Landroidx/test/runner/UsageTrackerFacilitator;->shouldTrackUsage:Z

    .line 52
    return-void
.end method


# virtual methods
.method public registerUsageTracker(Landroidx/test/internal/runner/tracker/UsageTracker;)V
    .registers 4
    .param p1, "usageTracker"    # Landroidx/test/internal/runner/tracker/UsageTracker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usageTracker"
        }
    .end annotation

    .line 59
    const-string v0, "UsageTrackerFacilitator"

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroidx/test/runner/UsageTrackerFacilitator;->shouldTrackUsage()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 60
    const-string v1, "Usage tracking enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p1}, Landroidx/test/internal/runner/tracker/UsageTrackerRegistry;->registerInstance(Landroidx/test/internal/runner/tracker/UsageTracker;)V

    .line 62
    return-void

    .line 66
    :cond_13
    const-string v1, "Usage tracking disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Landroidx/test/internal/runner/tracker/UsageTracker$NoOpUsageTracker;

    invoke-direct {v0}, Landroidx/test/internal/runner/tracker/UsageTracker$NoOpUsageTracker;-><init>()V

    invoke-static {v0}, Landroidx/test/internal/runner/tracker/UsageTrackerRegistry;->registerInstance(Landroidx/test/internal/runner/tracker/UsageTracker;)V

    .line 68
    return-void
.end method

.method public sendUsages()V
    .registers 2

    .line 79
    invoke-virtual {p0}, Landroidx/test/runner/UsageTrackerFacilitator;->shouldTrackUsage()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 80
    invoke-static {}, Landroidx/test/internal/runner/tracker/UsageTrackerRegistry;->getInstance()Landroidx/test/internal/runner/tracker/UsageTracker;

    move-result-object v0

    invoke-interface {v0}, Landroidx/test/internal/runner/tracker/UsageTracker;->sendUsages()V

    .line 82
    :cond_d
    return-void
.end method

.method public shouldTrackUsage()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Landroidx/test/runner/UsageTrackerFacilitator;->shouldTrackUsage:Z

    return v0
.end method

.method public trackUsage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "usage"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "usage",
            "version"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Landroidx/test/runner/UsageTrackerFacilitator;->shouldTrackUsage()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 73
    invoke-static {}, Landroidx/test/internal/runner/tracker/UsageTrackerRegistry;->getInstance()Landroidx/test/internal/runner/tracker/UsageTracker;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/test/internal/runner/tracker/UsageTracker;->trackUsage(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_d
    return-void
.end method
