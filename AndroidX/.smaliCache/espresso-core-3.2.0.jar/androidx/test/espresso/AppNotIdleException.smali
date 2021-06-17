.class public final Landroidx/test/espresso/AppNotIdleException;
.super Ljava/lang/RuntimeException;
.source "AppNotIdleException.java"

# interfaces
.implements Landroidx/test/espresso/EspressoException;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    const-string p1, "ThreadState-AppNotIdleException.txt"

    invoke-static {p1}, Landroidx/test/internal/platform/util/TestOutputEmitter;->dumpThreadStates(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static create(Ljava/util/List;II)Landroidx/test/espresso/AppNotIdleException;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "idleConditions",
            "loopCount",
            "seconds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)",
            "Landroidx/test/espresso/AppNotIdleException;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 53
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    .line 60
    const-string p2, ","

    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Joiner;->on(Ljava/lang/String;)Landroidx/test/espresso/core/internal/deps/guava/base/Joiner;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    .line 54
    const-string p0, "App not idle within timeout of %s seconds evenafter trying for %s iterations. The following Idle Conditions failed %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 61
    new-instance p1, Landroidx/test/espresso/AppNotIdleException;

    invoke-direct {p1, p0}, Landroidx/test/espresso/AppNotIdleException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static create(Ljava/util/List;Ljava/lang/String;)Landroidx/test/espresso/AppNotIdleException;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idleConditions",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/test/espresso/AppNotIdleException;"
        }
    .end annotation

    .line 75
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 80
    const-string p1, ","

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Joiner;->on(Ljava/lang/String;)Landroidx/test/espresso/core/internal/deps/guava/base/Joiner;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    .line 76
    const-string p0, "%s The following Idle Conditions failed %s."

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 81
    new-instance p1, Landroidx/test/espresso/AppNotIdleException;

    invoke-direct {p1, p0}, Landroidx/test/espresso/AppNotIdleException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
