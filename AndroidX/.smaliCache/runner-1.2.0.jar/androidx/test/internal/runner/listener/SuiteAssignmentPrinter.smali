.class public Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;
.super Landroidx/test/internal/runner/listener/InstrumentationRunListener;
.source "SuiteAssignmentPrinter.java"


# instance fields
.field endTime:J

.field startTime:J

.field timingValid:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentTimeMillis()J
    .registers 3

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public testAssumptionFailure(Lorg/junit/runner/notification/Failure;)V
    .registers 3
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->timingValid:Z

    .line 93
    return-void
.end method

.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .registers 3
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->timingValid:Z

    .line 88
    return-void
.end method

.method public testFinished(Lorg/junit/runner/Description;)V
    .registers 13
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->endTime:J

    .line 48
    iget-boolean v2, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->timingValid:Z

    const-string v3, "SuiteAssignmentPrinter"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v2, :cond_7a

    iget-wide v7, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->startTime:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-gez v2, :cond_18

    goto :goto_7a

    .line 56
    :cond_18
    sub-long/2addr v0, v7

    .line 57
    .local v0, "runTime":J
    long-to-float v2, v0

    invoke-static {v2}, Landroidx/test/internal/runner/TestSize;->getTestSizeForRunTime(F)Landroidx/test/internal/runner/TestSize;

    move-result-object v2

    .line 58
    .local v2, "assignmentSuite":Landroidx/test/internal/runner/TestSize;
    invoke-static {p1}, Landroidx/test/internal/runner/TestSize;->fromDescription(Lorg/junit/runner/Description;)Landroidx/test/internal/runner/TestSize;

    move-result-object v7

    .line 59
    .local v7, "currentRenameSize":Landroidx/test/internal/runner/TestSize;
    invoke-virtual {v2, v7}, Landroidx/test/internal/runner/TestSize;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-nez v8, :cond_51

    .line 61
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    .line 65
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v7, v3, v6

    .line 67
    invoke-virtual {v2}, Landroidx/test/internal/runner/TestSize;->getSizeQualifierName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v10

    .line 62
    const-string v4, "\n%s#%s: current size: %s. suggested: %s runTime: %d ms\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {p0, v3}, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->sendString(Ljava/lang/String;)V

    goto :goto_96

    .line 70
    :cond_51
    const-string v8, "."

    invoke-virtual {p0, v8}, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->sendString(Ljava/lang/String;)V

    .line 71
    new-array v8, v10, [Ljava/lang/Object;

    .line 75
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v5

    .line 76
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 77
    invoke-virtual {v2}, Landroidx/test/internal/runner/TestSize;->getSizeQualifierName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v6

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v9

    .line 73
    const-string v4, "%s#%s assigned correctly as %s. runTime: %d ms\n"

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 49
    .end local v0    # "runTime":J
    .end local v2    # "assignmentSuite":Landroidx/test/internal/runner/TestSize;
    .end local v7    # "currentRenameSize":Landroidx/test/internal/runner/TestSize;
    :cond_7a
    :goto_7a
    const-string v0, "F"

    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->sendString(Ljava/lang/String;)V

    .line 50
    new-array v0, v6, [Ljava/lang/Object;

    .line 54
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getClassName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 52
    const-string v1, "%s#%s: skipping suite assignment due to test failure\n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_96
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->startTime:J

    .line 83
    return-void
.end method

.method public testIgnored(Lorg/junit/runner/Description;)V
    .registers 3
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->timingValid:Z

    .line 98
    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
    .registers 4
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->timingValid:Z

    .line 40
    invoke-virtual {p0}, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/test/internal/runner/listener/SuiteAssignmentPrinter;->startTime:J

    .line 41
    return-void
.end method
