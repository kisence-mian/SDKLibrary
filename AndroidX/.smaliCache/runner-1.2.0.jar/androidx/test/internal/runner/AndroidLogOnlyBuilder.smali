.class Landroidx/test/internal/runner/AndroidLogOnlyBuilder;
.super Lorg/junit/runners/model/RunnerBuilder;
.source "AndroidLogOnlyBuilder.java"


# instance fields
.field private final builder:Landroidx/test/internal/runner/AndroidRunnerBuilder;

.field private runnerCount:I

.field private final runnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

.field private final scanningPath:Z


# direct methods
.method constructor <init>(Landroidx/test/internal/util/AndroidRunnerParams;ZLjava/util/List;)V
    .registers 5
    .param p1, "runnerParams"    # Landroidx/test/internal/util/AndroidRunnerParams;
    .param p2, "scanningPath"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "runnerParams",
            "scanningPath",
            "customRunnerBuilderClasses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/internal/util/AndroidRunnerParams;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runners/model/RunnerBuilder;",
            ">;>;)V"
        }
    .end annotation

    .line 59
    .local p3, "customRunnerBuilderClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Lorg/junit/runners/model/RunnerBuilder;>;>;"
    invoke-direct {p0}, Lorg/junit/runners/model/RunnerBuilder;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->runnerCount:I

    .line 60
    const-string v0, "runnerParams cannot be null!"

    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/util/AndroidRunnerParams;

    iput-object v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->runnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    .line 61
    iput-boolean p2, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->scanningPath:Z

    .line 66
    new-instance v0, Landroidx/test/internal/runner/AndroidRunnerBuilder;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/test/internal/runner/AndroidRunnerBuilder;-><init>(Lorg/junit/runners/model/RunnerBuilder;Landroidx/test/internal/util/AndroidRunnerParams;ZLjava/util/List;)V

    iput-object v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->builder:Landroidx/test/internal/runner/AndroidRunnerBuilder;

    .line 68
    return-void
.end method


# virtual methods
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
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->runnerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->runnerCount:I

    .line 76
    invoke-static {p1}, Landroidx/test/internal/util/AndroidRunnerBuilderUtil;->isJUnit3Test(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 79
    iget-boolean v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->scanningPath:Z

    if-eqz v0, :cond_18

    invoke-static {p1}, Landroidx/test/internal/util/AndroidRunnerBuilderUtil;->hasJUnit3TestMethod(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 80
    return-object v1

    .line 83
    :cond_18
    new-instance v0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;

    new-instance v1, Landroidx/test/internal/runner/junit3/NonExecutingTestSuite;

    invoke-direct {v1, p1}, Landroidx/test/internal/runner/junit3/NonExecutingTestSuite;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V

    return-object v0

    .line 84
    :cond_23
    invoke-static {p1}, Landroidx/test/internal/util/AndroidRunnerBuilderUtil;->hasSuiteMethod(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 85
    iget-object v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->runnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    invoke-virtual {v0}, Landroidx/test/internal/util/AndroidRunnerParams;->isIgnoreSuiteMethods()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 86
    return-object v1

    .line 89
    :cond_32
    invoke-static {p1}, Lorg/junit/internal/runners/SuiteMethod;->testFromSuiteMethod(Ljava/lang/Class;)Ljunit/framework/Test;

    move-result-object v0

    .line 90
    .local v0, "test":Ljunit/framework/Test;
    instance-of v1, v0, Ljunit/framework/TestSuite;

    if-eqz v1, :cond_48

    .line 95
    new-instance v1, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;

    new-instance v2, Landroidx/test/internal/runner/junit3/NonExecutingTestSuite;

    move-object v3, v0

    check-cast v3, Ljunit/framework/TestSuite;

    invoke-direct {v2, v3}, Landroidx/test/internal/runner/junit3/NonExecutingTestSuite;-><init>(Ljunit/framework/TestSuite;)V

    invoke-direct {v1, v2}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V

    return-object v1

    .line 92
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#suite() did not return a TestSuite"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    .end local v0    # "test":Ljunit/framework/Test;
    :cond_5c
    iget v0, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->runnerCount:I

    .line 100
    .local v0, "oldRunnerCount":I
    iget-object v2, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->builder:Landroidx/test/internal/runner/AndroidRunnerBuilder;

    invoke-virtual {v2, p1}, Landroidx/test/internal/runner/AndroidRunnerBuilder;->runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v2

    .line 101
    .local v2, "runner":Lorg/junit/runner/Runner;
    if-nez v2, :cond_67

    .line 103
    return-object v1

    .line 104
    :cond_67
    instance-of v1, v2, Lorg/junit/internal/runners/ErrorReportingRunner;

    if-eqz v1, :cond_6c

    .line 108
    return-object v2

    .line 109
    :cond_6c
    iget v1, p0, Landroidx/test/internal/runner/AndroidLogOnlyBuilder;->runnerCount:I

    if-le v1, v0, :cond_71

    .line 114
    return-object v2

    .line 116
    :cond_71
    new-instance v1, Landroidx/test/internal/runner/NonExecutingRunner;

    invoke-direct {v1, v2}, Landroidx/test/internal/runner/NonExecutingRunner;-><init>(Lorg/junit/runner/Runner;)V

    return-object v1
.end method
