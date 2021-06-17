.class public Landroidx/test/internal/runner/junit4/statement/RunBefores;
.super Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;
.source "RunBefores.java"


# instance fields
.field private final befores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final next:Lorg/junit/runners/model/Statement;

.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V
    .registers 6
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "next"    # Lorg/junit/runners/model/Statement;
    .param p4, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "next",
            "befores",
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMethod;",
            "Lorg/junit/runners/model/Statement;",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 47
    .local p3, "befores":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-static {p1}, Landroidx/test/internal/runner/junit4/statement/RunBefores;->shouldRunOnUiThread(Lorg/junit/runners/model/FrameworkMethod;)Z

    move-result v0

    invoke-direct {p0, p2, v0}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;-><init>(Lorg/junit/runners/model/Statement;Z)V

    .line 48
    iput-object p2, p0, Landroidx/test/internal/runner/junit4/statement/RunBefores;->next:Lorg/junit/runners/model/Statement;

    .line 49
    iput-object p3, p0, Landroidx/test/internal/runner/junit4/statement/RunBefores;->befores:Ljava/util/List;

    .line 50
    iput-object p4, p0, Landroidx/test/internal/runner/junit4/statement/RunBefores;->target:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method static synthetic access$000(Landroidx/test/internal/runner/junit4/statement/RunBefores;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/junit4/statement/RunBefores;

    .line 27
    iget-object v0, p0, Landroidx/test/internal/runner/junit4/statement/RunBefores;->target:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public evaluate()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 56
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    iget-object v1, p0, Landroidx/test/internal/runner/junit4/statement/RunBefores;->befores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/model/FrameworkMethod;

    .line 57
    .local v2, "before":Lorg/junit/runners/model/FrameworkMethod;
    invoke-static {v2}, Landroidx/test/internal/runner/junit4/statement/RunBefores;->shouldRunOnUiThread(Lorg/junit/runners/model/FrameworkMethod;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 58
    new-instance v3, Landroidx/test/internal/runner/junit4/statement/RunBefores$1;

    invoke-direct {v3, p0, v2, v0}, Landroidx/test/internal/runner/junit4/statement/RunBefores$1;-><init>(Landroidx/test/internal/runner/junit4/statement/RunBefores;Lorg/junit/runners/model/FrameworkMethod;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v3}, Landroidx/test/internal/runner/junit4/statement/RunBefores;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 72
    .local v3, "throwable":Ljava/lang/Throwable;
    if-nez v3, :cond_2e

    .line 75
    .end local v3    # "throwable":Ljava/lang/Throwable;
    goto :goto_37

    .line 73
    .restart local v3    # "throwable":Ljava/lang/Throwable;
    :cond_2e
    throw v3

    .line 76
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :cond_2f
    iget-object v3, p0, Landroidx/test/internal/runner/junit4/statement/RunBefores;->target:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v2    # "before":Lorg/junit/runners/model/FrameworkMethod;
    :goto_37
    goto :goto_b

    .line 80
    :cond_38
    iget-object v1, p0, Landroidx/test/internal/runner/junit4/statement/RunBefores;->next:Lorg/junit/runners/model/Statement;

    invoke-virtual {v1}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 81
    return-void
.end method
