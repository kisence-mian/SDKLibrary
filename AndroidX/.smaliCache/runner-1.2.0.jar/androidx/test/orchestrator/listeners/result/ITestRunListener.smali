.class public interface abstract Landroidx/test/orchestrator/listeners/result/ITestRunListener;
.super Ljava/lang/Object;
.source "ITestRunListener.java"


# virtual methods
.method public abstract testAssumptionFailure(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "trace"
        }
    .end annotation
.end method

.method public abstract testEnded(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "testMetrics"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/orchestrator/listeners/result/TestIdentifier;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract testFailed(Landroidx/test/orchestrator/listeners/result/TestIdentifier;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "trace"
        }
    .end annotation
.end method

.method public abstract testIgnored(Landroidx/test/orchestrator/listeners/result/TestIdentifier;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation
.end method

.method public abstract testRunEnded(JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elapsedTime",
            "runMetrics"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract testRunFailed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorMessage"
        }
    .end annotation
.end method

.method public abstract testRunStarted(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runName",
            "testCount"
        }
    .end annotation
.end method

.method public abstract testRunStopped(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elapsedTime"
        }
    .end annotation
.end method

.method public abstract testStarted(Landroidx/test/orchestrator/listeners/result/TestIdentifier;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation
.end method
