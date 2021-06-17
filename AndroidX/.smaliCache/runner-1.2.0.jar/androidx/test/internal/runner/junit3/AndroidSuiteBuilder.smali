.class public Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;
.super Lorg/junit/internal/builders/SuiteMethodBuilder;
.source "AndroidSuiteBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AndroidSuiteBuilder"


# instance fields
.field private final androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;


# direct methods
.method public constructor <init>(Landroidx/test/internal/util/AndroidRunnerParams;)V
    .registers 2
    .param p1, "runnerParams"    # Landroidx/test/internal/util/AndroidRunnerParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnerParams"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/junit/internal/builders/SuiteMethodBuilder;-><init>()V

    .line 40
    iput-object p1, p0, Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    .line 41
    return-void
.end method


# virtual methods
.method public runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .registers 7
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

    .line 45
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    invoke-virtual {v0}, Landroidx/test/internal/util/AndroidRunnerParams;->isIgnoreSuiteMethods()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 46
    return-object v1

    .line 49
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1}, Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;->hasSuiteMethod(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 50
    invoke-static {p1}, Lorg/junit/internal/runners/SuiteMethod;->testFromSuiteMethod(Ljava/lang/Class;)Ljunit/framework/Test;

    move-result-object v0

    .line 51
    .local v0, "t":Ljunit/framework/Test;
    instance-of v1, v0, Ljunit/framework/TestSuite;

    if-eqz v1, :cond_28

    .line 56
    new-instance v1, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;

    new-instance v2, Landroidx/test/internal/runner/junit3/AndroidTestSuite;

    move-object v3, v0

    check-cast v3, Ljunit/framework/TestSuite;

    iget-object v4, p0, Landroidx/test/internal/runner/junit3/AndroidSuiteBuilder;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    invoke-direct {v2, v3, v4}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;-><init>(Ljunit/framework/TestSuite;Landroidx/test/internal/util/AndroidRunnerParams;)V

    invoke-direct {v1, v2}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V

    return-object v1

    .line 53
    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#suite() did not return a TestSuite"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    throw v1
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_3e

    .line 62
    .end local v0    # "t":Ljunit/framework/Test;
    .restart local p1    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3c
    nop

    .line 63
    return-object v1

    .line 58
    :catchall_3e
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "AndroidSuiteBuilder"

    const-string v2, "Error constructing runner"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    throw v0
.end method
