.class Landroidx/test/internal/runner/junit3/AndroidTestSuite$3;
.super Ljava/lang/Object;
.source "AndroidTestSuite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/internal/runner/junit3/AndroidTestSuite;->terminateAllRunnerExecution(Ljava/lang/RuntimeException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$exception:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Landroidx/test/internal/runner/junit3/AndroidTestSuite;Ljava/lang/RuntimeException;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/test/internal/runner/junit3/AndroidTestSuite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$exception"
        }
    .end annotation

    .line 161
    iput-object p2, p0, Landroidx/test/internal/runner/junit3/AndroidTestSuite$3;->val$exception:Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 164
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/AndroidTestSuite$3;->val$exception:Ljava/lang/RuntimeException;

    throw v0
.end method
