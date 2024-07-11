.class public final Landroidx/test/espresso/IdlingPolicies;
.super Ljava/lang/Object;
.source "IdlingPolicies.java"


# static fields
.field private static volatile dynamicIdlingResourceErrorPolicy:Landroidx/test/espresso/IdlingPolicy;

.field private static volatile dynamicIdlingResourceWarningPolicy:Landroidx/test/espresso/IdlingPolicy;

.field private static volatile masterIdlingPolicy:Landroidx/test/espresso/IdlingPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Landroidx/test/espresso/IdlingPolicy$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;-><init>()V

    .line 37
    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeout(J)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 38
    invoke-virtual {v0, v1}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeoutUnit(Ljava/util/concurrent/TimeUnit;)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;->throwAppNotIdleException()Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;->build()Landroidx/test/espresso/IdlingPolicy;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/IdlingPolicies;->masterIdlingPolicy:Landroidx/test/espresso/IdlingPolicy;

    .line 42
    new-instance v0, Landroidx/test/espresso/IdlingPolicy$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;-><init>()V

    .line 44
    const-wide/16 v1, 0x1a

    invoke-virtual {v0, v1, v2}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeout(J)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 45
    invoke-virtual {v0, v1}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeoutUnit(Ljava/util/concurrent/TimeUnit;)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;->throwIdlingResourceTimeoutException()Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;->build()Landroidx/test/espresso/IdlingPolicy;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/IdlingPolicies;->dynamicIdlingResourceErrorPolicy:Landroidx/test/espresso/IdlingPolicy;

    .line 49
    new-instance v0, Landroidx/test/espresso/IdlingPolicy$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;-><init>()V

    .line 51
    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeout(J)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 52
    invoke-virtual {v0, v1}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeoutUnit(Ljava/util/concurrent/TimeUnit;)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;->logWarning()Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy$Builder;->build()Landroidx/test/espresso/IdlingPolicy;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/IdlingPolicies;->dynamicIdlingResourceWarningPolicy:Landroidx/test/espresso/IdlingPolicy;

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDynamicIdlingResourceErrorPolicy()Landroidx/test/espresso/IdlingPolicy;
    .registers 1

    .line 117
    sget-object v0, Landroidx/test/espresso/IdlingPolicies;->dynamicIdlingResourceErrorPolicy:Landroidx/test/espresso/IdlingPolicy;

    return-object v0
.end method

.method public static getDynamicIdlingResourceWarningPolicy()Landroidx/test/espresso/IdlingPolicy;
    .registers 1

    .line 113
    sget-object v0, Landroidx/test/espresso/IdlingPolicies;->dynamicIdlingResourceWarningPolicy:Landroidx/test/espresso/IdlingPolicy;

    return-object v0
.end method

.method public static getMasterIdlingPolicy()Landroidx/test/espresso/IdlingPolicy;
    .registers 1

    .line 109
    sget-object v0, Landroidx/test/espresso/IdlingPolicies;->masterIdlingPolicy:Landroidx/test/espresso/IdlingPolicy;

    return-object v0
.end method

.method public static setIdlingResourceTimeout(JLjava/util/concurrent/TimeUnit;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 82
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Landroidx/test/espresso/IdlingPolicies;->dynamicIdlingResourceErrorPolicy:Landroidx/test/espresso/IdlingPolicy;

    .line 85
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy;->toBuilder()Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p0, p1}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeout(J)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object p0

    .line 87
    invoke-virtual {p0, p2}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeoutUnit(Ljava/util/concurrent/TimeUnit;)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroidx/test/espresso/IdlingPolicy$Builder;->build()Landroidx/test/espresso/IdlingPolicy;

    move-result-object p0

    sput-object p0, Landroidx/test/espresso/IdlingPolicies;->dynamicIdlingResourceErrorPolicy:Landroidx/test/espresso/IdlingPolicy;

    .line 89
    return-void
.end method

.method public static setMasterPolicyTimeout(JLjava/util/concurrent/TimeUnit;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .line 63
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 64
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Landroidx/test/espresso/IdlingPolicies;->masterIdlingPolicy:Landroidx/test/espresso/IdlingPolicy;

    .line 67
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy;->toBuilder()Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p0, p1}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeout(J)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object p0

    .line 69
    invoke-virtual {p0, p2}, Landroidx/test/espresso/IdlingPolicy$Builder;->withIdlingTimeoutUnit(Ljava/util/concurrent/TimeUnit;)Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroidx/test/espresso/IdlingPolicy$Builder;->build()Landroidx/test/espresso/IdlingPolicy;

    move-result-object p0

    sput-object p0, Landroidx/test/espresso/IdlingPolicies;->masterIdlingPolicy:Landroidx/test/espresso/IdlingPolicy;

    .line 71
    return-void
.end method

.method public static setMasterPolicyTimeoutWhenDebuggerAttached(Z)V
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeoutWhenDebuggerAttached"
        }
    .end annotation

    .line 101
    sget-object p0, Landroidx/test/espresso/IdlingPolicies;->masterIdlingPolicy:Landroidx/test/espresso/IdlingPolicy;

    .line 103
    invoke-virtual {p0}, Landroidx/test/espresso/IdlingPolicy;->toBuilder()Landroidx/test/espresso/IdlingPolicy$Builder;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Landroidx/test/espresso/IdlingPolicy$Builder;->build()Landroidx/test/espresso/IdlingPolicy;

    move-result-object p0

    sput-object p0, Landroidx/test/espresso/IdlingPolicies;->masterIdlingPolicy:Landroidx/test/espresso/IdlingPolicy;

    .line 105
    return-void
.end method
