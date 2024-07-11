.class public abstract Landroidx/test/internal/runner/filters/ParentFilter;
.super Lorg/junit/runner/manipulation/Filter;
.source "ParentFilter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lorg/junit/runner/manipulation/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract evaluateTest(Lorg/junit/runner/Description;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation
.end method

.method public shouldRun(Lorg/junit/runner/Description;)Z
    .registers 5
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Lorg/junit/runner/Description;->isTest()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    invoke-virtual {p0, p1}, Landroidx/test/internal/runner/filters/ParentFilter;->evaluateTest(Lorg/junit/runner/Description;)Z

    move-result v0

    return v0

    .line 30
    :cond_b
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/Description;

    .line 31
    .local v1, "each":Lorg/junit/runner/Description;
    invoke-virtual {p0, v1}, Landroidx/test/internal/runner/filters/ParentFilter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 32
    const/4 v0, 0x1

    return v0

    .line 34
    .end local v1    # "each":Lorg/junit/runner/Description;
    :cond_27
    goto :goto_13

    .line 36
    :cond_28
    const/4 v0, 0x0

    return v0
.end method
