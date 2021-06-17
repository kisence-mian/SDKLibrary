.class Landroidx/test/internal/runner/junit3/AndroidTestSuite$1;
.super Ljava/lang/Object;
.source "AndroidTestSuite.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/internal/runner/junit3/AndroidTestSuite;->runTestWithTimeout(Ljunit/framework/Test;Landroidx/test/internal/runner/junit3/AndroidTestResult;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroidx/test/internal/runner/junit3/AndroidTestSuite;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/test/internal/runner/junit3/AndroidTestSuite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 91
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 92
    .local v0, "t":Ljava/lang/Thread;
    const-string v1, "AndroidTestSuite"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 93
    return-object v0
.end method
