.class public Landroidx/test/internal/platform/util/TestOutputEmitter;
.super Ljava/lang/Object;
.source "TestOutputEmitter.java"


# static fields
.field private static final debugHandler:Landroidx/test/internal/platform/util/TestOutputHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    const-class v0, Landroidx/test/internal/platform/util/TestOutputHandler;

    sget-object v1, Landroidx/test/internal/platform/util/TestOutputEmitter$$Lambda$0;->$instance:Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;

    .line 25
    invoke-static {v0, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/util/TestOutputHandler;

    sput-object v0, Landroidx/test/internal/platform/util/TestOutputEmitter;->debugHandler:Landroidx/test/internal/platform/util/TestOutputHandler;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureWindowHierarchy(Ljava/lang/String;)Z
    .registers 2
    .param p0, "outputName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputName"
        }
    .end annotation

    .line 57
    sget-object v0, Landroidx/test/internal/platform/util/TestOutputEmitter;->debugHandler:Landroidx/test/internal/platform/util/TestOutputHandler;

    invoke-interface {v0, p0}, Landroidx/test/internal/platform/util/TestOutputHandler;->captureWindowHierarchy(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static dumpThreadStates(Ljava/lang/String;)V
    .registers 2
    .param p0, "outputName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputName"
        }
    .end annotation

    .line 47
    sget-object v0, Landroidx/test/internal/platform/util/TestOutputEmitter;->debugHandler:Landroidx/test/internal/platform/util/TestOutputHandler;

    invoke-interface {v0, p0}, Landroidx/test/internal/platform/util/TestOutputHandler;->dumpThreadStates(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method static final synthetic lambda$static$0$TestOutputEmitter()Landroidx/test/internal/platform/util/TestOutputHandler;
    .registers 1

    .line 28
    new-instance v0, Landroidx/test/internal/platform/util/TestOutputEmitter$1;

    invoke-direct {v0}, Landroidx/test/internal/platform/util/TestOutputEmitter$1;-><init>()V

    return-object v0
.end method

.method public static takeScreenshot(Ljava/lang/String;)Z
    .registers 2
    .param p0, "outputName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputName"
        }
    .end annotation

    .line 52
    sget-object v0, Landroidx/test/internal/platform/util/TestOutputEmitter;->debugHandler:Landroidx/test/internal/platform/util/TestOutputHandler;

    invoke-interface {v0, p0}, Landroidx/test/internal/platform/util/TestOutputHandler;->takeScreenshot(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
