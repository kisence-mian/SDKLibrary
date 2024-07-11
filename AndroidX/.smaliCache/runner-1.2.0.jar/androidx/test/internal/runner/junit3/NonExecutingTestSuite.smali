.class public Landroidx/test/internal/runner/junit3/NonExecutingTestSuite;
.super Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;
.source "NonExecutingTestSuite.java"


# annotations
.annotation runtime Lorg/junit/Ignore;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "testClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 28
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Landroidx/test/internal/runner/junit3/NonExecutingTestSuite;-><init>(Ljunit/framework/TestSuite;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljunit/framework/TestSuite;)V
    .registers 2
    .param p1, "s"    # Ljunit/framework/TestSuite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;-><init>(Ljunit/framework/TestSuite;)V

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic addTest(Ljunit/framework/Test;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "test"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->addTest(Ljunit/framework/Test;)V

    return-void
.end method

.method public bridge synthetic countTestCases()I
    .registers 2

    .line 24
    invoke-super {p0}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->countTestCases()I

    move-result v0

    return v0
.end method

.method public bridge synthetic filter(Lorg/junit/runner/manipulation/Filter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->filter(Lorg/junit/runner/manipulation/Filter;)V

    return-void
.end method

.method public bridge synthetic getDelegateSuite()Ljunit/framework/TestSuite;
    .registers 2

    .line 24
    invoke-super {p0}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->getDelegateSuite()Ljunit/framework/TestSuite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .line 24
    invoke-super {p0}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .registers 3
    .param p1, "result"    # Ljunit/framework/TestResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 38
    new-instance v0, Landroidx/test/internal/runner/junit3/NonExecutingTestResult;

    invoke-direct {v0, p1}, Landroidx/test/internal/runner/junit3/NonExecutingTestResult;-><init>(Ljunit/framework/TestResult;)V

    invoke-super {p0, v0}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->run(Ljunit/framework/TestResult;)V

    .line 39
    return-void
.end method

.method public bridge synthetic runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "test",
            "result"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1, p2}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V

    return-void
.end method

.method public bridge synthetic setDelegateSuite(Ljunit/framework/TestSuite;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "newSuiteDelegate"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->setDelegateSuite(Ljunit/framework/TestSuite;)V

    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "name"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic testAt(I)Ljunit/framework/Test;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic testCount()I
    .registers 2

    .line 24
    invoke-super {p0}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->testCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic tests()Ljava/util/Enumeration;
    .registers 2

    .line 24
    invoke-super {p0}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->tests()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .line 24
    invoke-super {p0}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
