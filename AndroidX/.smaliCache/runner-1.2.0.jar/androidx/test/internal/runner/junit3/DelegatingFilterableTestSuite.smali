.class Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;
.super Landroidx/test/internal/runner/junit3/DelegatingTestSuite;
.source "DelegatingFilterableTestSuite.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;


# annotations
.annotation runtime Lorg/junit/Ignore;
.end annotation


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

    .line 31
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/junit3/DelegatingTestSuite;-><init>(Ljunit/framework/TestSuite;)V

    .line 32
    return-void
.end method

.method private static makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;
    .registers 2
    .param p0, "test"    # Ljunit/framework/Test;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 53
    invoke-static {p0}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .registers 8
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    .line 36
    invoke-virtual {p0}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->getDelegateSuite()Ljunit/framework/TestSuite;

    move-result-object v0

    .line 37
    .local v0, "suite":Ljunit/framework/TestSuite;
    new-instance v1, Ljunit/framework/TestSuite;

    invoke-virtual {v0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "filtered":Ljunit/framework/TestSuite;
    invoke-virtual {v0}, Ljunit/framework/TestSuite;->testCount()I

    move-result v2

    .line 39
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_28

    .line 40
    invoke-virtual {v0, v3}, Ljunit/framework/TestSuite;->testAt(I)Ljunit/framework/Test;

    move-result-object v4

    .line 41
    .local v4, "test":Ljunit/framework/Test;
    invoke-static {v4}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/junit/runner/manipulation/Filter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 42
    invoke-virtual {v1, v4}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 39
    .end local v4    # "test":Ljunit/framework/Test;
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 45
    .end local v3    # "i":I
    :cond_28
    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/junit3/DelegatingFilterableTestSuite;->setDelegateSuite(Ljunit/framework/TestSuite;)V

    .line 46
    invoke-virtual {v1}, Ljunit/framework/TestSuite;->testCount()I

    move-result v3

    if-eqz v3, :cond_32

    .line 49
    return-void

    .line 47
    :cond_32
    new-instance v3, Lorg/junit/runner/manipulation/NoTestsRemainException;

    invoke-direct {v3}, Lorg/junit/runner/manipulation/NoTestsRemainException;-><init>()V

    goto :goto_39

    :goto_38
    throw v3

    :goto_39
    goto :goto_38
.end method
