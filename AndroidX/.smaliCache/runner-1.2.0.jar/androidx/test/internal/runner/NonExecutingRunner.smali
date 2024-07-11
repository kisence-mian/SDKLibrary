.class Landroidx/test/internal/runner/NonExecutingRunner;
.super Lorg/junit/runner/Runner;
.source "NonExecutingRunner.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Sortable;
.implements Lorg/junit/runner/manipulation/Filterable;


# instance fields
.field private final runner:Lorg/junit/runner/Runner;


# direct methods
.method constructor <init>(Lorg/junit/runner/Runner;)V
    .registers 2
    .param p1, "runner"    # Lorg/junit/runner/Runner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runner"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/test/internal/runner/NonExecutingRunner;->runner:Lorg/junit/runner/Runner;

    .line 38
    return-void
.end method

.method private generateListOfTests(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V
    .registers 6
    .param p1, "runNotifier"    # Lorg/junit/runner/notification/RunNotifier;
    .param p2, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runNotifier",
            "description"
        }
    .end annotation

    .line 68
    invoke-virtual {p2}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/Description;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 70
    invoke-virtual {p1, p2}, Lorg/junit/runner/notification/RunNotifier;->fireTestStarted(Lorg/junit/runner/Description;)V

    .line 71
    invoke-virtual {p1, p2}, Lorg/junit/runner/notification/RunNotifier;->fireTestFinished(Lorg/junit/runner/Description;)V

    goto :goto_25

    .line 73
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runner/Description;

    .line 74
    .local v2, "child":Lorg/junit/runner/Description;
    invoke-direct {p0, p1, v2}, Landroidx/test/internal/runner/NonExecutingRunner;->generateListOfTests(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    .line 75
    .end local v2    # "child":Lorg/junit/runner/Description;
    goto :goto_15

    .line 77
    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .registers 3
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

    .line 52
    iget-object v0, p0, Landroidx/test/internal/runner/NonExecutingRunner;->runner:Lorg/junit/runner/Runner;

    invoke-virtual {p1, v0}, Lorg/junit/runner/manipulation/Filter;->apply(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .registers 2

    .line 42
    iget-object v0, p0, Landroidx/test/internal/runner/NonExecutingRunner;->runner:Lorg/junit/runner/Runner;

    invoke-virtual {v0}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
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

    .line 47
    invoke-virtual {p0}, Landroidx/test/internal/runner/NonExecutingRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/NonExecutingRunner;->generateListOfTests(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    .line 48
    return-void
.end method

.method public sort(Lorg/junit/runner/manipulation/Sorter;)V
    .registers 3
    .param p1, "sorter"    # Lorg/junit/runner/manipulation/Sorter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sorter"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Landroidx/test/internal/runner/NonExecutingRunner;->runner:Lorg/junit/runner/Runner;

    invoke-virtual {p1, v0}, Lorg/junit/runner/manipulation/Sorter;->apply(Ljava/lang/Object;)V

    .line 58
    return-void
.end method
