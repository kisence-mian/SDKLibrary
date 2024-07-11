.class Landroidx/test/internal/runner/junit3/DelegatingTestResult;
.super Ljunit/framework/TestResult;
.source "DelegatingTestResult.java"


# instance fields
.field private wrappedResult:Ljunit/framework/TestResult;


# direct methods
.method constructor <init>(Ljunit/framework/TestResult;)V
    .registers 2
    .param p1, "wrappedResult"    # Ljunit/framework/TestResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrappedResult"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljunit/framework/TestResult;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    .line 33
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "t"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0, p1, p2}, Ljunit/framework/TestResult;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 4
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "t"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0, p1, p2}, Ljunit/framework/TestResult;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V

    .line 43
    return-void
.end method

.method public addListener(Ljunit/framework/TestListener;)V
    .registers 3
    .param p1, "listener"    # Ljunit/framework/TestListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0, p1}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    .line 48
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 3
    .param p1, "test"    # Ljunit/framework/Test;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0, p1}, Ljunit/framework/TestResult;->endTest(Ljunit/framework/Test;)V

    .line 58
    return-void
.end method

.method public errorCount()I
    .registers 2

    .line 62
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->errorCount()I

    move-result v0

    return v0
.end method

.method public errors()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->errors()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public failureCount()I
    .registers 2

    .line 72
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->failureCount()I

    move-result v0

    return v0
.end method

.method public failures()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->failures()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Ljunit/framework/TestListener;)V
    .registers 3
    .param p1, "listener"    # Ljunit/framework/TestListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0, p1}, Ljunit/framework/TestResult;->removeListener(Ljunit/framework/TestListener;)V

    .line 53
    return-void
.end method

.method public runCount()I
    .registers 2

    .line 82
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->runCount()I

    move-result v0

    return v0
.end method

.method public runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V
    .registers 4
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "p"    # Ljunit/framework/Protectable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "test",
            "p"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0, p1, p2}, Ljunit/framework/TestResult;->runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V

    .line 88
    return-void
.end method

.method public shouldStop()Z
    .registers 2

    .line 92
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->shouldStop()Z

    move-result v0

    return v0
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 3
    .param p1, "test"    # Ljunit/framework/Test;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0, p1}, Ljunit/framework/TestResult;->startTest(Ljunit/framework/Test;)V

    .line 98
    return-void
.end method

.method public stop()V
    .registers 2

    .line 102
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->stop()V

    .line 103
    return-void
.end method

.method public wasSuccessful()Z
    .registers 2

    .line 107
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestResult;->wrappedResult:Ljunit/framework/TestResult;

    invoke-virtual {v0}, Ljunit/framework/TestResult;->wasSuccessful()Z

    move-result v0

    return v0
.end method
