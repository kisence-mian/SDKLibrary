.class public abstract Landroidx/test/orchestrator/listeners/OrchestrationRunListener;
.super Ljava/lang/Object;
.source "OrchestrationRunListener.java"


# instance fields
.field private instrumentation:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstrumentation()Landroid/app/Instrumentation;
    .registers 2

    .line 37
    iget-object v0, p0, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->instrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public orchestrationRunStarted(I)V
    .registers 2
    .param p1, "testCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testCount"
        }
    .end annotation

    .line 40
    return-void
.end method

.method public setInstrumentation(Landroid/app/Instrumentation;)V
    .registers 4
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instrumentation"
        }
    .end annotation

    .line 29
    if-eqz p1, :cond_5

    .line 33
    iput-object p1, p0, Landroidx/test/orchestrator/listeners/OrchestrationRunListener;->instrumentation:Landroid/app/Instrumentation;

    .line 34
    return-void

    .line 30
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Instrumentation should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public testAssumptionFailure(Landroidx/test/orchestrator/junit/ParcelableFailure;)V
    .registers 2
    .param p1, "failure"    # Landroidx/test/orchestrator/junit/ParcelableFailure;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 50
    return-void
.end method

.method public testFailure(Landroidx/test/orchestrator/junit/ParcelableFailure;)V
    .registers 2
    .param p1, "failure"    # Landroidx/test/orchestrator/junit/ParcelableFailure;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failure"
        }
    .end annotation

    .line 48
    return-void
.end method

.method public testFinished(Landroidx/test/orchestrator/junit/ParcelableDescription;)V
    .registers 2
    .param p1, "description"    # Landroidx/test/orchestrator/junit/ParcelableDescription;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 46
    return-void
.end method

.method public testIgnored(Landroidx/test/orchestrator/junit/ParcelableDescription;)V
    .registers 2
    .param p1, "description"    # Landroidx/test/orchestrator/junit/ParcelableDescription;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 52
    return-void
.end method

.method public testProcessFinished(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 56
    return-void
.end method

.method public testRunFinished(Landroidx/test/orchestrator/junit/ParcelableResult;)V
    .registers 2
    .param p1, "result"    # Landroidx/test/orchestrator/junit/ParcelableResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 54
    return-void
.end method

.method public testRunStarted(Landroidx/test/orchestrator/junit/ParcelableDescription;)V
    .registers 2
    .param p1, "description"    # Landroidx/test/orchestrator/junit/ParcelableDescription;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 42
    return-void
.end method

.method public testStarted(Landroidx/test/orchestrator/junit/ParcelableDescription;)V
    .registers 2
    .param p1, "description"    # Landroidx/test/orchestrator/junit/ParcelableDescription;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 44
    return-void
.end method
