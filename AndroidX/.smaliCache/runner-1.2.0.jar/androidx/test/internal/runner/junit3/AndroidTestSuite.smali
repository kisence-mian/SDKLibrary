.class Landroidx/test/internal/runner/junit3/AndroidTestSuite;
.super Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;
.source "AndroidTestSuite.java"


# annotations
.annotation runtime Lorg/junit/Ignore;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidTestSuite"


# instance fields
.field private final androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroidx/test/internal/util/AndroidRunnerParams;)V
    .registers 4
    .param p2, "runnerParams"    # Landroidx/test/internal/util/AndroidRunnerParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "testClass",
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

    .line 46
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroidx/test/internal/runner/junit3/NonLeakyTestSuite;

    invoke-direct {v0, p1}, Landroidx/test/internal/runner/junit3/NonLeakyTestSuite;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0, p2}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;-><init>(Ljunit/framework/TestSuite;Landroidx/test/internal/util/AndroidRunnerParams;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljunit/framework/TestSuite;Landroidx/test/internal/util/AndroidRunnerParams;)V
    .registers 3
    .param p1, "s"    # Ljunit/framework/TestSuite;
    .param p2, "runnerParams"    # Landroidx/test/internal/util/AndroidRunnerParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "runnerParams"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;-><init>(Ljunit/framework/TestSuite;)V

    .line 51
    iput-object p2, p0, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    .line 52
    return-void
.end method

.method private getStackTraces()Ljava/lang/String;
    .registers 11

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 186
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1d
    const-string v7, "\tat "

    if-ge v6, v4, :cond_35

    aget-object v8, v2, v6

    .line 188
    .local v8, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    .end local v8    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 190
    :cond_35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v4, v2

    :goto_50
    if-ge v5, v4, :cond_66

    aget-object v6, v2, v5

    .line 194
    .local v6, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    .end local v6    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 196
    :cond_66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private runTestWithTimeout(Ljunit/framework/Test;Landroidx/test/internal/runner/junit3/AndroidTestResult;J)V
    .registers 22
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "androidTestResult"    # Landroidx/test/internal/runner/junit3/AndroidTestResult;
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "test",
            "androidTestResult",
            "timeout"
        }
    .end annotation

    .line 86
    move-object/from16 v1, p0

    const-string v2, "Exception from the execution thread"

    const-string v3, "AndroidTestSuite"

    new-instance v0, Landroidx/test/internal/runner/junit3/AndroidTestSuite$1;

    invoke-direct {v0, v1}, Landroidx/test/internal/runner/junit3/AndroidTestSuite$1;-><init>(Landroidx/test/internal/runner/junit3/AndroidTestSuite;)V

    .line 87
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 97
    .local v4, "threadExecutor":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Landroidx/test/internal/runner/junit3/AndroidTestSuite$2;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct {v0, v1, v5, v6}, Landroidx/test/internal/runner/junit3/AndroidTestSuite$2;-><init>(Landroidx/test/internal/runner/junit3/AndroidTestSuite;Ljunit/framework/Test;Landroidx/test/internal/runner/junit3/AndroidTestResult;)V

    move-object v7, v0

    .line 105
    .local v7, "execRunnable":Ljava/lang/Runnable;
    invoke-virtual/range {p2 .. p4}, Landroidx/test/internal/runner/junit3/AndroidTestResult;->setCurrentTimeout(J)V

    .line 107
    invoke-interface {v4, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v8

    .line 110
    .local v8, "result":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 112
    const/4 v10, 0x0

    const/4 v11, 0x2

    :try_start_25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_27} :catch_78

    move-wide/from16 v12, p3

    :try_start_29
    invoke-interface {v4, v12, v13, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 113
    .local v0, "isTerminated":Z
    if-nez v0, :cond_75

    .line 116
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 118
    const-wide/16 v14, 0x1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v14, v15, v9}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    .line 119
    .end local v0    # "isTerminated":Z
    .local v9, "isTerminated":Z
    if-nez v9, :cond_75

    .line 120
    const-string v0, "Failed to to stop test execution thread, the correctness of the test runner is at risk. Abort all execution!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_41} :catch_76

    .line 127
    const-wide/16 v14, 0x0

    :try_start_43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v14, v15, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_43 .. :try_end_48} :catch_4e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_43 .. :try_end_48} :catch_49
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_48} :catch_76

    .line 132
    goto :goto_57

    .line 130
    :catch_49
    move-exception v0

    .line 131
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_4a
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    .line 128
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_4e
    move-exception v0

    .line 129
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    invoke-static {v3, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    nop

    .line 134
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Test timed out after %d milliseconds but execution thread failed to terminate\nDumping instr and main threads:\n%s"

    new-array v14, v11, [Ljava/lang/Object;

    .line 140
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v10

    invoke-direct/range {p0 .. p0}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->getStackTraces()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    .line 136
    invoke-static {v2, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-direct {v1, v0}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->terminateAllRunnerExecution(Ljava/lang/RuntimeException;)V
    :try_end_75
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_75} :catch_76

    .line 151
    .end local v9    # "isTerminated":Z
    :cond_75
    goto :goto_99

    .line 143
    :catch_76
    move-exception v0

    goto :goto_7b

    :catch_78
    move-exception v0

    move-wide/from16 v12, p3

    .line 144
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_7b
    const-string v2, "The correctness of the test runner is at risk. Abort all execution!"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v2, Ljava/lang/IllegalStateException;

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v10

    .line 150
    invoke-direct/range {p0 .. p0}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->getStackTraces()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v3, v10

    .line 147
    const-string v9, "Test execution thread got interrupted:\n%s\nDumping instr and main threads:\n%s"

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-direct {v1, v2}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->terminateAllRunnerExecution(Ljava/lang/RuntimeException;)V

    .line 152
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_99
    return-void
.end method

.method private runTestsWithTimeout(JLandroidx/test/internal/runner/junit3/AndroidTestResult;)V
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "result"    # Landroidx/test/internal/runner/junit3/AndroidTestResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "result"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->testCount()I

    move-result v0

    .line 75
    .local v0, "suiteSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 76
    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v2

    .line 77
    .local v2, "test":Ljunit/framework/Test;
    invoke-direct {p0, v2, p3, p1, p2}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->runTestWithTimeout(Ljunit/framework/Test;Landroidx/test/internal/runner/junit3/AndroidTestResult;J)V

    .line 75
    .end local v2    # "test":Ljunit/framework/Test;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 79
    .end local v1    # "i":I
    :cond_11
    return-void
.end method

.method private terminateAllRunnerExecution(Ljava/lang/RuntimeException;)V
    .registers 5
    .param p1, "exception"    # Ljava/lang/RuntimeException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "exception"
        }
    .end annotation

    .line 160
    new-instance v0, Landroidx/test/internal/runner/junit3/AndroidTestSuite$3;

    invoke-direct {v0, p0, p1}, Landroidx/test/internal/runner/junit3/AndroidTestSuite$3;-><init>(Landroidx/test/internal/runner/junit3/AndroidTestSuite;Ljava/lang/RuntimeException;)V

    .line 167
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Terminator"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 168
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 172
    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_13

    .line 175
    goto :goto_14

    .line 173
    :catch_13
    move-exception v2

    .line 176
    :goto_14
    return-void
.end method


# virtual methods
.method public run(Ljunit/framework/TestResult;)V
    .registers 8
    .param p1, "result"    # Ljunit/framework/TestResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 57
    new-instance v0, Landroidx/test/internal/runner/junit3/AndroidTestResult;

    iget-object v1, p0, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    .line 59
    invoke-virtual {v1}, Landroidx/test/internal/util/AndroidRunnerParams;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    invoke-virtual {v2}, Landroidx/test/internal/util/AndroidRunnerParams;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Landroidx/test/internal/runner/junit3/AndroidTestResult;-><init>(Landroid/os/Bundle;Landroid/app/Instrumentation;Ljunit/framework/TestResult;)V

    .line 61
    .local v0, "androidTestResult":Landroidx/test/internal/runner/junit3/AndroidTestResult;
    iget-object v1, p0, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->androidRunnerParams:Landroidx/test/internal/util/AndroidRunnerParams;

    invoke-virtual {v1}, Landroidx/test/internal/util/AndroidRunnerParams;->getPerTestTimeout()J

    move-result-wide v1

    .line 62
    .local v1, "timeout":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_21

    .line 63
    invoke-direct {p0, v1, v2, v0}, Landroidx/test/internal/runner/junit3/AndroidTestSuite;->runTestsWithTimeout(JLandroidx/test/internal/runner/junit3/AndroidTestResult;)V

    goto :goto_24

    .line 65
    :cond_21
    invoke-super {p0, v0}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->run(Ljunit/framework/TestResult;)V

    .line 67
    :goto_24
    return-void
.end method
