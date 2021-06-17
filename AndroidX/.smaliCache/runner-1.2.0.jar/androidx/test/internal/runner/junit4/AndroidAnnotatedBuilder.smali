.class public Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;
.super Lorg/junit/internal/builders/AnnotatedBuilder;
.source "AndroidAnnotatedBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidAnnotatedBuilder"


# instance fields
.field private final androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/RunnerBuilder;Landroidx/test/internal/util/AndroidRunnerParams;)V
    .registers 3
    .param p1, "suiteBuilder"    # Lorg/junit/runners/model/RunnerBuilder;
    .param p2, "runnerParams"    # Landroidx/test/internal/util/AndroidRunnerParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "suiteBuilder",
            "runnerParams"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lorg/junit/internal/builders/AnnotatedBuilder;-><init>(Lorg/junit/runners/model/RunnerBuilder;)V

    .line 36
    iput-object p2, p0, Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    .line 37
    return-void
.end method


# virtual methods
.method public buildAndroidRunner(Ljava/lang/Class;Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnerClass",
            "testClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runner/Runner;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    .local p1, "runnerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/Runner;>;"
    .local p2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroidx/test/internal/util/AndroidRunnerParams;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    iget-object v2, p0, Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    aput-object v2, v0, v4

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Runner;

    .line 69
    return-object v0
.end method

.method public runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .registers 6
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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-class v0, Lorg/junit/runner/RunWith;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/RunWith;

    .line 44
    .local v0, "annotation":Lorg/junit/runner/RunWith;
    if-eqz v0, :cond_28

    const-class v1, Landroidx/test/runner/AndroidJUnit4;

    invoke-interface {v0}, Lorg/junit/runner/RunWith;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 45
    invoke-interface {v0}, Lorg/junit/runner/RunWith;->value()Ljava/lang/Class;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_2e

    .line 48
    .local v1, "runnerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/Runner;>;"
    :try_start_1a
    invoke-virtual {p0, v1, p1}, Landroidx/test/internal/runner/junit4/AndroidAnnotatedBuilder;->buildAndroidRunner(Ljava/lang/Class;Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1a .. :try_end_1e} :catch_22
    .catchall {:try_start_1a .. :try_end_1e} :catchall_2e

    .line 49
    .local v2, "runner":Lorg/junit/runner/Runner;
    if-eqz v2, :cond_21

    .line 50
    return-object v2

    .line 56
    .end local v2    # "runner":Lorg/junit/runner/Runner;
    :cond_21
    goto :goto_28

    .line 52
    :catch_22
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    :try_start_23
    invoke-super {p0, v1, p1}, Lorg/junit/internal/builders/AnnotatedBuilder;->buildRunner(Ljava/lang/Class;Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_2e

    return-object v3

    .line 62
    .end local v0    # "annotation":Lorg/junit/runner/RunWith;
    .end local v1    # "runnerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/Runner;>;"
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_28
    :goto_28
    nop

    .line 63
    invoke-super {p0, p1}, Lorg/junit/internal/builders/AnnotatedBuilder;->runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v0

    return-object v0

    .line 58
    :catchall_2e
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "AndroidAnnotatedBuilder"

    const-string v2, "Error constructing runner"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    throw v0
.end method
