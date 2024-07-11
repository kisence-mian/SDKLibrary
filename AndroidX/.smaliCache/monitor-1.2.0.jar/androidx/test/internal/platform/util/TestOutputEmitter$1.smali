.class Landroidx/test/internal/platform/util/TestOutputEmitter$1;
.super Ljava/lang/Object;
.source "TestOutputEmitter.java"

# interfaces
.implements Landroidx/test/internal/platform/util/TestOutputHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/internal/platform/util/TestOutputEmitter;->lambda$static$0$TestOutputEmitter()Landroidx/test/internal/platform/util/TestOutputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public captureWindowHierarchy(Ljava/lang/String;)Z
    .registers 3
    .param p1, "outputName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputName"
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public dumpThreadStates(Ljava/lang/String;)V
    .registers 2
    .param p1, "outputName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputName"
        }
    .end annotation

    .line 30
    return-void
.end method

.method public takeScreenshot(Ljava/lang/String;)Z
    .registers 3
    .param p1, "outputName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputName"
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method
