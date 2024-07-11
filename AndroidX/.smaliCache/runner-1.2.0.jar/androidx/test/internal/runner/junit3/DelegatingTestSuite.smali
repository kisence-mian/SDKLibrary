.class Landroidx/test/internal/runner/junit3/DelegatingTestSuite;
.super Ljunit/framework/TestSuite;
.source "DelegatingTestSuite.java"


# annotations
.annotation runtime Lorg/junit/Ignore;
.end annotation


# instance fields
.field private wrappedSuite:Ljunit/framework/TestSuite;


# direct methods
.method public constructor <init>(Ljunit/framework/TestSuite;)V
    .registers 2
    .param p1, "suiteDelegate"    # Ljunit/framework/TestSuite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suiteDelegate"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljunit/framework/TestSuite;-><init>()V

    .line 33
    iput-object p1, p0, Landroidx/test/internal/runner/junit3/DelegatingTestSuite;->wrappedSuite:Ljunit/framework/TestSuite;

    .line 34
    return-void
.end method


# virtual methods
.method public addTest(Ljunit/framework/Test;)V
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

    .line 52
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestSuite;->wrappedSuite:Ljunit/framework/TestSuite;

    invoke-virtual {v0, p1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 53
    return-void
.end method

.method public countTestCases()I
    .registers 2

    .line 57
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestSuite;->wrappedSuite:Ljunit/framework/TestSuite;

    invoke-virtual {v0}, Ljunit/framework/TestSuite;->countTestCases()I

    move-result v0

    return v0
.end method

.method public getDelegateSuite()Ljunit/framework/TestSuite;
    .registers 2

    .line 38
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestSuite;->wrappedSuite:Ljunit/framework/TestSuite;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestSuite;->wrappedSuite:Ljunit/framework/TestSuite;

    invoke-virtual {v0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

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

    .line 97
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestSuite;->wrappedSuite:Ljunit/framework/TestSuite;

    invoke-virtual {v0, p1}, Ljunit/framework/TestSuite;->run(Ljunit/framework/TestResult;)V

    .line 98
    return-void
.end method

.method public runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .registers 4
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "result"    # Ljunit/framework/TestResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "test",
            "result"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestSuite;->wrappedSuite:Ljunit/framework/TestSuite;

    invoke-virtual {v0, p1, p2}, Ljunit/framework/TestSuite;->runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V

    .line 68
    return-void
.end method

.method public setDelegateSuite(Ljunit/framework/TestSuite;)V
    .registers 2
    .param p1, "newSuiteDelegate"    # Ljunit/framework/TestSuite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newSuiteDelegate"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Landroidx/test/internal/runner/junit3/DelegatingTestSuite;->wrappedSuite:Ljunit/framework/TestSuite;

    .line 48
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestSuite;->wrappedSuite:Ljunit/framework/TestSuite;

    invoke-virtual {v0, p1}, Ljunit/framework/TestSuite;->setName(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public testAt(I)Ljunit/framework/Test;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestSuite;->wrappedSuite:Ljunit/framework/TestSuite;

    invoke-virtual {v0, p1}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v0

    return-object v0
.end method

.method public testCount()I
    .registers 2

    .line 82
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestSuite;->wrappedSuite:Ljunit/framework/TestSuite;

    invoke-virtual {v0}, Ljunit/framework/TestSuite;->testCount()I

    move-result v0

    return v0
.end method

.method public tests()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestSuite;->wrappedSuite:Ljunit/framework/TestSuite;

    invoke-virtual {v0}, Ljunit/framework/TestSuite;->tests()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/DelegatingTestSuite;->wrappedSuite:Ljunit/framework/TestSuite;

    invoke-virtual {v0}, Ljunit/framework/TestSuite;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
