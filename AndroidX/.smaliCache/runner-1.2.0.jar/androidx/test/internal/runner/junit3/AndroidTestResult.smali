.class Landroidx/test/internal/runner/junit3/AndroidTestResult;
.super Landroidx/test/internal/runner/junit3/DelegatingTestResult;
.source "AndroidTestResult.java"


# instance fields
.field private final bundle:Landroid/os/Bundle;

.field private final instr:Landroid/app/Instrumentation;

.field private timeout:J


# direct methods
.method constructor <init>(Landroid/os/Bundle;Landroid/app/Instrumentation;Ljunit/framework/TestResult;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "instr"    # Landroid/app/Instrumentation;
    .param p3, "result"    # Ljunit/framework/TestResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bundle",
            "instr",
            "result"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p3}, Landroidx/test/internal/runner/junit3/DelegatingTestResult;-><init>(Ljunit/framework/TestResult;)V

    .line 39
    iput-object p1, p0, Landroidx/test/internal/runner/junit3/AndroidTestResult;->bundle:Landroid/os/Bundle;

    .line 40
    iput-object p2, p0, Landroidx/test/internal/runner/junit3/AndroidTestResult;->instr:Landroid/app/Instrumentation;

    .line 41
    return-void
.end method


# virtual methods
.method protected run(Ljunit/framework/TestCase;)V
    .registers 4
    .param p1, "test"    # Ljunit/framework/TestCase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "test"
        }
    .end annotation

    .line 45
    instance-of v0, p1, Landroid/test/AndroidTestCase;

    if-eqz v0, :cond_10

    .line 46
    move-object v0, p1

    check-cast v0, Landroid/test/AndroidTestCase;

    iget-object v1, p0, Landroidx/test/internal/runner/junit3/AndroidTestResult;->instr:Landroid/app/Instrumentation;

    invoke-virtual {v1}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/test/AndroidTestCase;->setContext(Landroid/content/Context;)V

    .line 48
    :cond_10
    instance-of v0, p1, Landroid/test/InstrumentationTestCase;

    if-eqz v0, :cond_1c

    .line 49
    move-object v0, p1

    check-cast v0, Landroid/test/InstrumentationTestCase;

    iget-object v1, p0, Landroidx/test/internal/runner/junit3/AndroidTestResult;->instr:Landroid/app/Instrumentation;

    invoke-virtual {v0, v1}, Landroid/test/InstrumentationTestCase;->injectInstrumentation(Landroid/app/Instrumentation;)V

    .line 51
    :cond_1c
    invoke-super {p0, p1}, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->run(Ljunit/framework/TestCase;)V

    .line 52
    return-void
.end method

.method public runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V
    .registers 9
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "p"    # Ljunit/framework/Protectable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "test",
            "p"
        }
    .end annotation

    .line 73
    :try_start_0
    invoke-interface {p2}, Ljunit/framework/Protectable;->protect()V
    :try_end_3
    .catch Ljunit/framework/AssertionFailedError; {:try_start_0 .. :try_end_3} :catch_27
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_3} :catch_25
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_9
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 84
    :goto_3
    goto :goto_2c

    .line 82
    :catchall_4
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Throwable;
    invoke-super {p0, p1, v0}, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    goto :goto_2c

    .line 78
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Landroidx/test/internal/runner/junit3/AndroidTestResult;->timeout:J

    .line 81
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Test timed out after %d milliseconds"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1, v1}, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 76
    :catch_25
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/ThreadDeath;
    throw v0

    .line 74
    .end local v0    # "e":Ljava/lang/ThreadDeath;
    :catch_27
    move-exception v0

    .line 75
    .local v0, "e":Ljunit/framework/AssertionFailedError;
    invoke-super {p0, p1, v0}, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V

    .end local v0    # "e":Ljunit/framework/AssertionFailedError;
    goto :goto_3

    .line 85
    :goto_2c
    return-void
.end method

.method setCurrentTimeout(J)V
    .registers 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeout"
        }
    .end annotation

    .line 62
    iput-wide p1, p0, Landroidx/test/internal/runner/junit3/AndroidTestResult;->timeout:J

    .line 63
    return-void
.end method
