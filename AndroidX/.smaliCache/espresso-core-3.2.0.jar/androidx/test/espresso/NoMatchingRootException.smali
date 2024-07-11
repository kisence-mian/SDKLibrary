.class public final Landroidx/test/espresso/NoMatchingRootException;
.super Ljava/lang/RuntimeException;
.source "NoMatchingRootException.java"

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
    const-string p1, "ThreadState-NoMatchingRootException.txt"

    invoke-static {p1}, Landroidx/test/internal/platform/util/TestOutputEmitter;->dumpThreadStates(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static create(Lorg/hamcrest/Matcher;Ljava/util/List;)Landroidx/test/espresso/NoMatchingRootException;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rootMatcher",
            "roots"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/test/espresso/Root;",
            ">;)",
            "Landroidx/test/espresso/NoMatchingRootException;"
        }
    .end annotation

    .line 38
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v0, Landroidx/test/espresso/NoMatchingRootException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    .line 41
    const-string p0, "Matcher \'%s\' did not match any of the following roots: %s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/test/espresso/NoMatchingRootException;-><init>(Ljava/lang/String;)V

    .line 40
    return-object v0
.end method
