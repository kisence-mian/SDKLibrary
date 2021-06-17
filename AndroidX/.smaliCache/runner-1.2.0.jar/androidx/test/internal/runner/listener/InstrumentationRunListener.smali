.class public abstract Landroidx/test/internal/runner/listener/InstrumentationRunListener;
.super Lorg/junit/runner/notification/RunListener;
.source "InstrumentationRunListener.java"


# instance fields
.field private instr:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstrumentation()Landroid/app/Instrumentation;
    .registers 2

    .line 34
    iget-object v0, p0, Landroidx/test/internal/runner/listener/InstrumentationRunListener;->instr:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public instrumentationRunFinished(Ljava/io/PrintStream;Landroid/os/Bundle;Lorg/junit/runner/Result;)V
    .registers 4
    .param p1, "streamResult"    # Ljava/io/PrintStream;
    .param p2, "resultBundle"    # Landroid/os/Bundle;
    .param p3, "junitResults"    # Lorg/junit/runner/Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamResult",
            "resultBundle",
            "junitResults"
        }
    .end annotation

    .line 63
    return-void
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "bundle"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method public sendString(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "stream"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/test/internal/runner/listener/InstrumentationRunListener;->sendStatus(ILandroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public setInstrumentation(Landroid/app/Instrumentation;)V
    .registers 2
    .param p1, "instr"    # Landroid/app/Instrumentation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instr"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Landroidx/test/internal/runner/listener/InstrumentationRunListener;->instr:Landroid/app/Instrumentation;

    .line 39
    return-void
.end method
