.class public final Landroidx/test/espresso/InjectEventSecurityException;
.super Landroidx/test/platform/ui/InjectEventSecurityException;
.source "InjectEventSecurityException.java"

# interfaces
.implements Landroidx/test/espresso/EspressoException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Landroidx/test/platform/ui/InjectEventSecurityException;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Landroidx/test/espresso/InjectEventSecurityException;->dumpThreads()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "cause"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/test/platform/ui/InjectEventSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    invoke-direct {p0}, Landroidx/test/espresso/InjectEventSecurityException;->dumpThreads()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Landroidx/test/platform/ui/InjectEventSecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    invoke-direct {p0}, Landroidx/test/espresso/InjectEventSecurityException;->dumpThreads()V

    .line 36
    return-void
.end method

.method private dumpThreads()V
    .registers 2

    .line 44
    const-string v0, "ThreadState-InjectEventSecurityException.txt"

    invoke-static {v0}, Landroidx/test/internal/platform/util/TestOutputEmitter;->dumpThreadStates(Ljava/lang/String;)V

    .line 45
    return-void
.end method
