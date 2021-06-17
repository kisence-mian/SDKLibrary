.class public final Landroidx/test/internal/runner/tracker/UsageTrackerRegistry;
.super Ljava/lang/Object;
.source "UsageTrackerRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/runner/tracker/UsageTrackerRegistry$AxtVersions;
    }
.end annotation


# static fields
.field private static volatile instance:Landroidx/test/internal/runner/tracker/UsageTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroidx/test/internal/runner/tracker/UsageTracker$NoOpUsageTracker;

    invoke-direct {v0}, Landroidx/test/internal/runner/tracker/UsageTracker$NoOpUsageTracker;-><init>()V

    sput-object v0, Landroidx/test/internal/runner/tracker/UsageTrackerRegistry;->instance:Landroidx/test/internal/runner/tracker/UsageTracker;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroidx/test/internal/runner/tracker/UsageTracker;
    .registers 1

    .line 45
    sget-object v0, Landroidx/test/internal/runner/tracker/UsageTrackerRegistry;->instance:Landroidx/test/internal/runner/tracker/UsageTracker;

    return-object v0
.end method

.method public static registerInstance(Landroidx/test/internal/runner/tracker/UsageTracker;)V
    .registers 2
    .param p0, "tracker"    # Landroidx/test/internal/runner/tracker/UsageTracker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tracker"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/runner/tracker/UsageTracker;

    sput-object v0, Landroidx/test/internal/runner/tracker/UsageTrackerRegistry;->instance:Landroidx/test/internal/runner/tracker/UsageTracker;

    .line 42
    return-void
.end method
