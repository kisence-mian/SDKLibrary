.class public Landroidx/test/internal/runner/listener/DelayInjector;
.super Lorg/junit/runner/notification/RunListener;
.source "DelayInjector.java"


# instance fields
.field private final delayMsec:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "delayMsec"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayMsec"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    .line 32
    iput p1, p0, Landroidx/test/internal/runner/listener/DelayInjector;->delayMsec:I

    .line 33
    return-void
.end method

.method private delay()V
    .registers 4

    .line 49
    :try_start_0
    iget v0, p0, Landroidx/test/internal/runner/listener/DelayInjector;->delayMsec:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_6} :catch_7

    .line 52
    goto :goto_f

    .line 50
    :catch_7
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "DelayInjector"

    const-string v2, "interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_f
    return-void
.end method


# virtual methods
.method public testFinished(Lorg/junit/runner/Description;)V
    .registers 2
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

    .line 44
    invoke-direct {p0}, Landroidx/test/internal/runner/listener/DelayInjector;->delay()V

    .line 45
    return-void
.end method

.method public testRunStarted(Lorg/junit/runner/Description;)V
    .registers 2
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

    .line 38
    invoke-direct {p0}, Landroidx/test/internal/runner/listener/DelayInjector;->delay()V

    .line 39
    return-void
.end method
