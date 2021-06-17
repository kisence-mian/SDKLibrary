.class final Landroidx/test/espresso/core/internal/deps/guava/base/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/base/Platform$JdkPatternCompiler;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final patternCompiler:Landroidx/test/espresso/core/internal/deps/guava/base/PatternCompiler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Landroidx/test/espresso/core/internal/deps/guava/base/Platform;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/Platform;->logger:Ljava/util/logging/Logger;

    .line 34
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Platform;->loadPatternCompiler()Landroidx/test/espresso/core/internal/deps/guava/base/PatternCompiler;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/Platform;->patternCompiler:Landroidx/test/espresso/core/internal/deps/guava/base/PatternCompiler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static formatCompact4Digits(D)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 54
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "%.4g"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static loadPatternCompiler()Landroidx/test/espresso/core/internal/deps/guava/base/PatternCompiler;
    .registers 2

    .line 84
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/base/Platform$JdkPatternCompiler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Platform$JdkPatternCompiler;-><init>(Landroidx/test/espresso/core/internal/deps/guava/base/Platform$1;)V

    return-object v0
.end method

.method static systemNanoTime()J
    .registers 2

    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
