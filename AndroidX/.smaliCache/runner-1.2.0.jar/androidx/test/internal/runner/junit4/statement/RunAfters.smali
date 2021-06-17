.class public Landroidx/test/internal/runner/junit4/statement/RunAfters;
.super Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;
.source "RunAfters.java"


# instance fields
.field private final afters:Ljava/util/List;
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
            "afters",
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

    .line 50
    .local p3, "afters":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-static {p1}, Landroidx/test/internal/runner/junit4/statement/RunAfters;->shouldRunOnUiThread(Lorg/junit/runners/model/FrameworkMethod;)Z

    move-result v0

    invoke-direct {p0, p2, v0}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;-><init>(Lorg/junit/runners/model/Statement;Z)V

    .line 51
    iput-object p2, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->next:Lorg/junit/runners/model/Statement;

    .line 52
    iput-object p3, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->afters:Ljava/util/List;

    .line 53
    iput-object p4, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->target:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method static synthetic access$000(Landroidx/test/internal/runner/junit4/statement/RunAfters;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/junit4/statement/RunAfters;

    .line 28
    iget-object v0, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->target:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public evaluate()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 61
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v1, 0x0

    :try_start_6
    iget-object v2, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->next:Lorg/junit/runners/model/Statement;

    invoke-virtual {v2}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_3a

    .line 65
    iget-object v2, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->afters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runners/model/FrameworkMethod;

    .line 66
    .local v3, "each":Lorg/junit/runners/model/FrameworkMethod;
    invoke-static {v3}, Landroidx/test/internal/runner/junit4/statement/RunAfters;->shouldRunOnUiThread(Lorg/junit/runners/model/FrameworkMethod;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 67
    new-instance v4, Landroidx/test/internal/runner/junit4/statement/RunAfters$1;

    invoke-direct {v4, p0, v3, v0}, Landroidx/test/internal/runner/junit4/statement/RunAfters$1;-><init>(Landroidx/test/internal/runner/junit4/statement/RunAfters;Lorg/junit/runners/model/FrameworkMethod;Ljava/util/List;)V

    invoke-static {v4}, Landroidx/test/internal/runner/junit4/statement/RunAfters;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_38

    .line 80
    :cond_2c
    :try_start_2c
    iget-object v4, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->target:Ljava/lang/Object;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    .line 83
    goto :goto_38

    .line 81
    :catchall_34
    move-exception v4

    .line 82
    .local v4, "e":Ljava/lang/Throwable;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v3    # "each":Lorg/junit/runners/model/FrameworkMethod;
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_38
    goto :goto_11

    .line 86
    :cond_39
    goto :goto_6d

    .line 62
    :catchall_3a
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_3b
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_71

    .line 65
    nop

    .end local v2    # "e":Ljava/lang/Throwable;
    iget-object v2, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->afters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runners/model/FrameworkMethod;

    .line 66
    .restart local v3    # "each":Lorg/junit/runners/model/FrameworkMethod;
    invoke-static {v3}, Landroidx/test/internal/runner/junit4/statement/RunAfters;->shouldRunOnUiThread(Lorg/junit/runners/model/FrameworkMethod;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 67
    new-instance v4, Landroidx/test/internal/runner/junit4/statement/RunAfters$1;

    invoke-direct {v4, p0, v3, v0}, Landroidx/test/internal/runner/junit4/statement/RunAfters$1;-><init>(Landroidx/test/internal/runner/junit4/statement/RunAfters;Lorg/junit/runners/model/FrameworkMethod;Ljava/util/List;)V

    invoke-static {v4}, Landroidx/test/internal/runner/junit4/statement/RunAfters;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6c

    .line 80
    :cond_60
    :try_start_60
    iget-object v4, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->target:Ljava/lang/Object;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_68

    .line 83
    goto :goto_6c

    .line 81
    :catchall_68
    move-exception v4

    .line 82
    .restart local v4    # "e":Ljava/lang/Throwable;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v3    # "each":Lorg/junit/runners/model/FrameworkMethod;
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_6c
    goto :goto_45

    .line 87
    :goto_6d
    invoke-static {v0}, Lorg/junit/runners/model/MultipleFailureException;->assertEmpty(Ljava/util/List;)V

    .line 88
    return-void

    .line 65
    :catchall_71
    move-exception v2

    iget-object v3, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->afters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/junit/runners/model/FrameworkMethod;

    .line 66
    .local v4, "each":Lorg/junit/runners/model/FrameworkMethod;
    invoke-static {v4}, Landroidx/test/internal/runner/junit4/statement/RunAfters;->shouldRunOnUiThread(Lorg/junit/runners/model/FrameworkMethod;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 67
    new-instance v5, Landroidx/test/internal/runner/junit4/statement/RunAfters$1;

    invoke-direct {v5, p0, v4, v0}, Landroidx/test/internal/runner/junit4/statement/RunAfters$1;-><init>(Landroidx/test/internal/runner/junit4/statement/RunAfters;Lorg/junit/runners/model/FrameworkMethod;Ljava/util/List;)V

    invoke-static {v5}, Landroidx/test/internal/runner/junit4/statement/RunAfters;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_9f

    .line 80
    :cond_93
    :try_start_93
    iget-object v5, p0, Landroidx/test/internal/runner/junit4/statement/RunAfters;->target:Ljava/lang/Object;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_9b

    .line 83
    goto :goto_9f

    .line 81
    :catchall_9b
    move-exception v5

    .line 82
    .local v5, "e":Ljava/lang/Throwable;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v4    # "each":Lorg/junit/runners/model/FrameworkMethod;
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_9f
    goto :goto_78

    :cond_a0
    goto :goto_a2

    :goto_a1
    throw v2

    :goto_a2
    goto :goto_a1
.end method
