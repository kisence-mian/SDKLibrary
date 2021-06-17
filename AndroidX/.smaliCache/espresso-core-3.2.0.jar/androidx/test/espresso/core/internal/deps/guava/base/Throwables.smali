.class public final Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;
.super Ljava/lang/Object;
.source "Throwables.java"


# static fields
.field private static final getStackTraceDepthMethod:Ljava/lang/reflect/Method;

.field private static final getStackTraceElementMethod:Ljava/lang/reflect/Method;

.field private static final jla:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 452
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->getJLA()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->jla:Ljava/lang/Object;

    .line 460
    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v2, v1

    goto :goto_f

    :cond_b
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->getGetMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    :goto_f
    sput-object v2, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->getStackTraceElementMethod:Ljava/lang/reflect/Method;

    .line 468
    if-nez v0, :cond_14

    goto :goto_18

    :cond_14
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->getSizeMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    :goto_18
    sput-object v1, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->getStackTraceDepthMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static getGetMethod()Ljava/lang/reflect/Method;
    .registers 3

    .line 503
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "getStackTraceElement"

    invoke-static {v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->getJlaMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static getJLA()Ljava/lang/Object;
    .registers 5

    .line 482
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "sun.misc.SharedSecrets"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 483
    const-string v3, "getJavaLangAccess"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 484
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_16} :catch_19
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    return-object v0

    .line 487
    :catchall_17
    move-exception v1

    .line 492
    return-object v0

    .line 485
    :catch_19
    move-exception v0

    .line 486
    throw v0
.end method

.method private static varargs getJlaMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ThreadDeath;
        }
    .end annotation

    .line 534
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "sun.misc.JavaLangAccess"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_c} :catch_f
    .catchall {:try_start_1 .. :try_end_c} :catchall_d

    return-object p0

    .line 537
    :catchall_d
    move-exception p0

    .line 542
    return-object v0

    .line 535
    :catch_f
    move-exception p0

    .line 536
    throw p0
.end method

.method private static getSizeMethod()Ljava/lang/reflect/Method;
    .registers 6

    .line 519
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "getStackTraceDepth"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->getJlaMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 520
    if-nez v1, :cond_12

    .line 521
    return-object v0

    .line 523
    :cond_12
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->getJLA()Ljava/lang/Object;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    aput-object v4, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_22} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_22} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_22} :catch_23

    .line 524
    return-object v1

    .line 525
    :catch_23
    move-exception v1

    goto :goto_28

    :catch_25
    move-exception v1

    goto :goto_28

    :catch_27
    move-exception v1

    .line 526
    :goto_28
    return-object v0
.end method

.method public static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 241
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static throwIfUnchecked(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 128
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_f

    .line 132
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_c

    .line 135
    return-void

    .line 133
    :cond_c
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 130
    :cond_f
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method
