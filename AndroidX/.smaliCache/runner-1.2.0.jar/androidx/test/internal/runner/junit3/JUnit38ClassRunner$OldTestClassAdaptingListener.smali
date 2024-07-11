.class final Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;
.super Ljava/lang/Object;
.source "JUnit38ClassRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OldTestClassAdaptingListener"
.end annotation


# instance fields
.field private currentTest:Ljunit/framework/Test;

.field private description:Lorg/junit/runner/Description;

.field private final fNotifier:Lorg/junit/runner/notification/RunNotifier;


# direct methods
.method private constructor <init>(Lorg/junit/runner/notification/RunNotifier;)V
    .registers 3
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifier"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->currentTest:Ljunit/framework/Test;

    .line 48
    iput-object v0, p0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->description:Lorg/junit/runner/Description;

    .line 52
    iput-object p1, p0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/runner/notification/RunNotifier;Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/junit/runner/notification/RunNotifier;
    .param p2, "x1"    # Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$1;

    .line 43
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;-><init>(Lorg/junit/runner/notification/RunNotifier;)V

    return-void
.end method

.method private asDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;
    .registers 4
    .param p1, "test"    # Ljunit/framework/Test;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->currentTest:Ljunit/framework/Test;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->description:Lorg/junit/runner/Description;

    if-eqz v0, :cond_f

    .line 75
    return-object v0

    .line 77
    :cond_f
    iput-object p1, p0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->currentTest:Ljunit/framework/Test;

    .line 78
    instance-of v0, p1, Lorg/junit/runner/Describable;

    if-eqz v0, :cond_1f

    .line 79
    move-object v0, p1

    check-cast v0, Lorg/junit/runner/Describable;

    .line 80
    .local v0, "facade":Lorg/junit/runner/Describable;
    invoke-interface {v0}, Lorg/junit/runner/Describable;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    iput-object v1, p0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->description:Lorg/junit/runner/Description;

    .line 81
    .end local v0    # "facade":Lorg/junit/runner/Describable;
    goto :goto_38

    :cond_1f
    instance-of v0, p1, Ljunit/framework/TestCase;

    if-eqz v0, :cond_2a

    .line 82
    invoke-static {p1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner;->makeDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->description:Lorg/junit/runner/Description;

    goto :goto_38

    .line 84
    :cond_2a
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->getEffectiveClass(Ljunit/framework/Test;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Description;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->description:Lorg/junit/runner/Description;

    .line 86
    :goto_38
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->description:Lorg/junit/runner/Description;

    return-object v0
.end method

.method private getEffectiveClass(Ljunit/framework/Test;)Ljava/lang/Class;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 5
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

    .line 68
    new-instance v0, Lorg/junit/runner/notification/Failure;

    invoke-direct {p0, p1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->asDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    .line 69
    .local v0, "failure":Lorg/junit/runner/notification/Failure;
    iget-object v1, p0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-virtual {v1, v0}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    .line 70
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 3
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

    .line 96
    invoke-virtual {p0, p1, p2}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .registers 4
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
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-direct {p0, p1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->asDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFinished(Lorg/junit/runner/Description;)V

    .line 58
    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .registers 4
    .param p1, "test"    # Ljunit/framework/Test;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->fNotifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-direct {p0, p1}, Landroidx/test/internal/runner/junit3/JUnit38ClassRunner$OldTestClassAdaptingListener;->asDescription(Ljunit/framework/Test;)Lorg/junit/runner/Description;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestStarted(Lorg/junit/runner/Description;)V

    .line 63
    return-void
.end method
