.class Landroidx/test/internal/runner/junit3/AndroidTestSuite$2;
.super Ljava/lang/Object;
.source "AndroidTestSuite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/internal/runner/junit3/AndroidTestSuite;->runTestWithTimeout(Ljunit/framework/Test;Landroidx/test/internal/runner/junit3/AndroidTestResult;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$androidTestResult:Landroidx/test/internal/runner/junit3/AndroidTestResult;

.field final synthetic val$test:Ljunit/framework/Test;


# direct methods
.method constructor <init>(Landroidx/test/internal/runner/junit3/AndroidTestSuite;Ljunit/framework/Test;Landroidx/test/internal/runner/junit3/AndroidTestResult;)V
    .registers 4
    .param p1, "this$0"    # Landroidx/test/internal/runner/junit3/AndroidTestSuite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$test",
            "val$androidTestResult"
        }
    .end annotation

    .line 98
    iput-object p2, p0, Landroidx/test/internal/runner/junit3/AndroidTestSuite$2;->val$test:Ljunit/framework/Test;

    iput-object p3, p0, Landroidx/test/internal/runner/junit3/AndroidTestSuite$2;->val$androidTestResult:Landroidx/test/internal/runner/junit3/AndroidTestResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 101
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/AndroidTestSuite$2;->val$test:Ljunit/framework/Test;

    iget-object v1, p0, Landroidx/test/internal/runner/junit3/AndroidTestSuite$2;->val$androidTestResult:Landroidx/test/internal/runner/junit3/AndroidTestResult;

    invoke-interface {v0, v1}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    .line 102
    return-void
.end method
