.class Landroidx/test/internal/runner/TestLoader;
.super Ljava/lang/Object;
.source "TestLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/runner/TestLoader$UnloadableClassRunner;,
        Landroidx/test/internal/runner/TestLoader$ScanningRunnerBuilder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TestLoader"


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final runnerBuilder:Lorg/junit/runners/model/RunnerBuilder;

.field private final runnersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/ClassLoader;Lorg/junit/runners/model/RunnerBuilder;)V
    .registers 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "runnerBuilder"    # Lorg/junit/runners/model/RunnerBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "runnerBuilder"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/TestLoader;->runnersMap:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Landroidx/test/internal/runner/TestLoader;->classLoader:Ljava/lang/ClassLoader;

    .line 61
    iput-object p2, p0, Landroidx/test/internal/runner/TestLoader;->runnerBuilder:Lorg/junit/runners/model/RunnerBuilder;

    .line 62
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 35
    invoke-static {p0}, Landroidx/test/internal/runner/TestLoader;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method private doCreateRunner(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "isScanningPath"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "isScanningPath"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Landroidx/test/internal/runner/TestLoader;->runnersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 67
    return-void

    .line 72
    :cond_9
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_b
    iget-object v2, p0, Landroidx/test/internal/runner/TestLoader;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 73
    .local v2, "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Landroidx/test/internal/runner/TestLoader;->runnerBuilder:Lorg/junit/runners/model/RunnerBuilder;

    invoke-virtual {v3, v2}, Lorg/junit/runners/model/RunnerBuilder;->safeRunnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v3

    .line 74
    .local v3, "runner":Lorg/junit/runner/Runner;
    if-nez v3, :cond_2b

    .line 75
    const-string v4, "Skipping class %s: not a test"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/test/internal/runner/TestLoader;->logDebug(Ljava/lang/String;)V

    goto :goto_41

    .line 76
    :cond_2b
    sget-object v4, Landroidx/test/internal/runner/junit3/AndroidJUnit3Builder;->NOT_A_VALID_TEST:Lorg/junit/runner/Runner;

    if-ne v3, v4, :cond_41

    .line 77
    const-string v4, "Skipping class %s: not a valid test"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/test/internal/runner/TestLoader;->logDebug(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_40} :catch_42

    .line 78
    const/4 v3, 0x0

    .line 92
    .end local v2    # "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_41
    :goto_41
    goto :goto_69

    .line 80
    .end local v3    # "runner":Lorg/junit/runner/Runner;
    :catch_42
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v3, "Could not find class: %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "errMsg":Ljava/lang/String;
    const-string v3, "TestLoader"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    invoke-static {p1, v1}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v1

    .line 84
    .local v1, "description":Lorg/junit/runner/Description;
    new-instance v3, Lorg/junit/runner/notification/Failure;

    invoke-direct {v3, v1, v2}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    .line 85
    .local v3, "failure":Lorg/junit/runner/notification/Failure;
    const/4 v4, 0x0

    .line 86
    .local v4, "runner":Lorg/junit/runner/Runner;
    if-nez p2, :cond_68

    .line 90
    new-instance v5, Landroidx/test/internal/runner/TestLoader$UnloadableClassRunner;

    invoke-direct {v5, v1, v3}, Landroidx/test/internal/runner/TestLoader$UnloadableClassRunner;-><init>(Lorg/junit/runner/Description;Lorg/junit/runner/notification/Failure;)V

    move-object v4, v5

    move-object v3, v4

    goto :goto_69

    .line 86
    :cond_68
    move-object v3, v4

    .line 94
    .end local v0    # "errMsg":Ljava/lang/String;
    .end local v1    # "description":Lorg/junit/runner/Description;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v4    # "runner":Lorg/junit/runner/Runner;
    .local v3, "runner":Lorg/junit/runner/Runner;
    :goto_69
    if-eqz v3, :cond_70

    .line 95
    iget-object v0, p0, Landroidx/test/internal/runner/TestLoader;->runnersMap:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_70
    return-void
.end method

.method private static logDebug(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 114
    const-string v0, "TestLoader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 115
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_c
    return-void
.end method

.method static testLoader(Ljava/lang/ClassLoader;Lorg/junit/runners/model/RunnerBuilder;Z)Landroidx/test/internal/runner/TestLoader;
    .registers 4
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "runnerBuilder"    # Lorg/junit/runners/model/RunnerBuilder;
    .param p2, "scanningPath"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "runnerBuilder",
            "scanningPath"
        }
    .end annotation

    .line 48
    if-eqz p2, :cond_8

    .line 49
    new-instance v0, Landroidx/test/internal/runner/TestLoader$ScanningRunnerBuilder;

    invoke-direct {v0, p1}, Landroidx/test/internal/runner/TestLoader$ScanningRunnerBuilder;-><init>(Lorg/junit/runners/model/RunnerBuilder;)V

    move-object p1, v0

    .line 52
    :cond_8
    if-nez p0, :cond_10

    .line 53
    const-class v0, Landroidx/test/internal/runner/TestLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 56
    :cond_10
    new-instance v0, Landroidx/test/internal/runner/TestLoader;

    invoke-direct {v0, p0, p1}, Landroidx/test/internal/runner/TestLoader;-><init>(Ljava/lang/ClassLoader;Lorg/junit/runners/model/RunnerBuilder;)V

    return-object v0
.end method


# virtual methods
.method getRunnersFor(Ljava/util/Collection;Z)Ljava/util/List;
    .registers 5
    .param p2, "isScanningPath"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "classNames",
            "isScanningPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation

    .line 103
    .local p1, "classNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    .local v1, "className":Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Landroidx/test/internal/runner/TestLoader;->doCreateRunner(Ljava/lang/String;Z)V

    .line 105
    .end local v1    # "className":Ljava/lang/String;
    goto :goto_4

    .line 106
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/test/internal/runner/TestLoader;->runnersMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
