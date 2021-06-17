.class public Landroidx/test/internal/runner/junit4/AndroidJUnit4ClassRunner;
.super Lorg/junit/runners/BlockJUnit4ClassRunner;
.source "AndroidJUnit4ClassRunner.java"


# instance fields
.field private final androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "klass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 48
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Landroidx/test/internal/runner/junit4/AndroidJUnit4ClassRunner;->createRunnerParams()Landroidx/test/internal/util/AndroidRunnerParams;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/junit4/AndroidJUnit4ClassRunner;-><init>(Ljava/lang/Class;Landroidx/test/internal/util/AndroidRunnerParams;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroidx/test/internal/util/AndroidRunnerParams;)V
    .registers 3
    .param p2, "runnerParams"    # Landroidx/test/internal/util/AndroidRunnerParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "klass",
            "runnerParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/test/internal/util/AndroidRunnerParams;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 43
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;-><init>(Ljava/lang/Class;)V

    .line 44
    iput-object p2, p0, Landroidx/test/internal/runner/junit4/AndroidJUnit4ClassRunner;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    .line 45
    return-void
.end method

.method private static createRunnerParams()Landroidx/test/internal/util/AndroidRunnerParams;
    .registers 8

    .line 52
    new-instance v0, Landroidx/test/internal/runner/RunnerArgs$Builder;

    invoke-direct {v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;-><init>()V

    .line 53
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/test/internal/runner/RunnerArgs$Builder;->fromBundle(Landroid/app/Instrumentation;Landroid/os/Bundle;)Landroidx/test/internal/runner/RunnerArgs$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/internal/runner/RunnerArgs$Builder;->build()Landroidx/test/internal/runner/RunnerArgs;

    move-result-object v0

    .line 54
    .local v0, "runnerArgs":Landroidx/test/internal/runner/RunnerArgs;
    new-instance v7, Landroidx/test/internal/util/AndroidRunnerParams;

    .line 55
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    iget-wide v4, v0, Landroidx/test/internal/runner/RunnerArgs;->testTimeout:J

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroidx/test/internal/util/AndroidRunnerParams;-><init>(Landroid/app/Instrumentation;Landroid/os/Bundle;JZ)V

    .line 54
    return-object v7
.end method

.method private getTimeout(Lorg/junit/Test;)J
    .registers 4
    .param p1, "annotation"    # Lorg/junit/Test;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotation"
        }
    .end annotation

    .line 105
    if-nez p1, :cond_5

    .line 106
    const-wide/16 v0, 0x0

    return-wide v0

    .line 108
    :cond_5
    invoke-interface {p1}, Lorg/junit/Test;->timeout()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected methodInvoker(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
    .registers 6
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "test"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "test"
        }
    .end annotation

    .line 61
    invoke-static {p1}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->shouldRunOnUiThread(Lorg/junit/runners/model/FrameworkMethod;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 62
    new-instance v0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;

    invoke-super {p0, p1, p2}, Lorg/junit/runners/BlockJUnit4ClassRunner;->methodInvoker(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;-><init>(Lorg/junit/runners/model/Statement;Z)V

    return-object v0

    .line 64
    :cond_11
    invoke-super {p0, p1, p2}, Lorg/junit/runners/BlockJUnit4ClassRunner;->methodInvoker(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    return-object v0
.end method

.method protected withAfters(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .registers 6
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "statement"    # Lorg/junit/runners/model/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "target",
            "statement"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Landroidx/test/internal/runner/junit4/AndroidJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    const-class v1, Lorg/junit/After;

    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, "afters":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v1, p3

    goto :goto_17

    :cond_12
    new-instance v1, Landroidx/test/internal/runner/junit4/statement/RunAfters;

    invoke-direct {v1, p1, p3, v0, p2}, Landroidx/test/internal/runner/junit4/statement/RunAfters;-><init>(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    :goto_17
    return-object v1
.end method

.method protected withBefores(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .registers 6
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "statement"    # Lorg/junit/runners/model/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "target",
            "statement"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Landroidx/test/internal/runner/junit4/AndroidJUnit4ClassRunner;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    const-class v1, Lorg/junit/Before;

    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "befores":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v1, p3

    goto :goto_17

    :cond_12
    new-instance v1, Landroidx/test/internal/runner/junit4/statement/RunBefores;

    invoke-direct {v1, p1, p3, v0, p2}, Landroidx/test/internal/runner/junit4/statement/RunBefores;-><init>(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    :goto_17
    return-object v1
.end method

.method protected withPotentialTimeout(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .registers 11
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "test"    # Ljava/lang/Object;
    .param p3, "next"    # Lorg/junit/runners/model/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "test",
            "next"
        }
    .end annotation

    .line 87
    const-class v0, Lorg/junit/Test;

    invoke-virtual {p1, v0}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/Test;

    invoke-direct {p0, v0}, Landroidx/test/internal/runner/junit4/AndroidJUnit4ClassRunner;->getTimeout(Lorg/junit/Test;)J

    move-result-wide v0

    .line 90
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_22

    iget-object v4, p0, Landroidx/test/internal/runner/junit4/AndroidJUnit4ClassRunner;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    invoke-virtual {v4}, Landroidx/test/internal/util/AndroidRunnerParams;->getPerTestTimeout()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_22

    .line 91
    iget-object v4, p0, Landroidx/test/internal/runner/junit4/AndroidJUnit4ClassRunner;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    invoke-virtual {v4}, Landroidx/test/internal/util/AndroidRunnerParams;->getPerTestTimeout()J

    move-result-wide v0

    .line 94
    :cond_22
    cmp-long v4, v0, v2

    if-gtz v4, :cond_27

    .line 96
    return-object p3

    .line 101
    :cond_27
    new-instance v2, Lorg/junit/internal/runners/statements/FailOnTimeout;

    invoke-direct {v2, p3, v0, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout;-><init>(Lorg/junit/runners/model/Statement;J)V

    return-object v2
.end method
