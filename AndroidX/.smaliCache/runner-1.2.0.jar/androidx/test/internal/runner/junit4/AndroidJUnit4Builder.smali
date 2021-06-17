.class public Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;
.super Lorg/junit/internal/builders/JUnit4Builder;
.source "AndroidJUnit4Builder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidJUnit4Builder"


# instance fields
.field private final androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

.field private final scanningPath:Z


# direct methods
.method public constructor <init>(Landroidx/test/internal/util/AndroidRunnerParams;)V
    .registers 3
    .param p1, "runnerParams"    # Landroidx/test/internal/util/AndroidRunnerParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnerParams"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;-><init>(Landroidx/test/internal/util/AndroidRunnerParams;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroidx/test/internal/util/AndroidRunnerParams;Z)V
    .registers 3
    .param p1, "runnerParams"    # Landroidx/test/internal/util/AndroidRunnerParams;
    .param p2, "scanningPath"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnerParams",
            "scanningPath"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lorg/junit/internal/builders/JUnit4Builder;-><init>()V

    .line 43
    iput-object p1, p0, Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    .line 44
    iput-boolean p2, p0, Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;->scanningPath:Z

    .line 45
    return-void
.end method

.method private static hasTestMethods(Ljava/lang/Class;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 74
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 76
    .local v0, "hasTestMethods":Z
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_19

    aget-object v5, v2, v4

    .line 77
    .local v5, "testMethod":Ljava/lang/reflect/Method;
    const-class v6, Lorg/junit/Test;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_1b

    if-eqz v6, :cond_16

    .line 78
    const/4 v0, 0x1

    .line 79
    goto :goto_19

    .line 76
    .end local v5    # "testMethod":Ljava/lang/reflect/Method;
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 93
    :cond_19
    :goto_19
    nop

    .line 95
    return v0

    .line 82
    :catchall_1b
    move-exception v2

    .line 91
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "%s in hasTestMethods for %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AndroidJUnit4Builder"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v1
.end method


# virtual methods
.method public runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 61
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-boolean v0, p0, Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;->scanningPath:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;->hasTestMethods(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_c
    new-instance v0, Landroidx/test/internal/runner/junit4/AndroidJUnit4ClassRunner;

    iget-object v1, p0, Landroidx/test/internal/runner/junit4/AndroidJUnit4Builder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    invoke-direct {v0, p1, v1}, Landroidx/test/internal/runner/junit4/AndroidJUnit4ClassRunner;-><init>(Ljava/lang/Class;Landroidx/test/internal/util/AndroidRunnerParams;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-object v0

    .line 66
    :catchall_14
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "AndroidJUnit4Builder"

    const-string v2, "Error constructing runner"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    throw v0
.end method
