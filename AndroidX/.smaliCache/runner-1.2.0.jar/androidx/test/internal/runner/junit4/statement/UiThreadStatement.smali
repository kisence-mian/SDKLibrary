.class public Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;
.super Lorg/junit/runners/model/Statement;
.source "UiThreadStatement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UiThreadStatement"


# instance fields
.field private final base:Lorg/junit/runners/model/Statement;

.field private final runOnUiThread:Z


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/Statement;Z)V
    .registers 3
    .param p1, "base"    # Lorg/junit/runners/model/Statement;
    .param p2, "runOnUiThread"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "runOnUiThread"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->base:Lorg/junit/runners/model/Statement;

    .line 40
    iput-boolean p2, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->runOnUiThread:Z

    .line 41
    return-void
.end method

.method static synthetic access$000(Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;)Lorg/junit/runners/model/Statement;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;

    .line 31
    iget-object v0, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->base:Lorg/junit/runners/model/Statement;

    return-object v0
.end method

.method private static hasAnnotation(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Class;)Z
    .registers 3
    .param p0, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "annotationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMethod;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 91
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static loadUiThreadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 96
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 97
    :catch_5
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "runnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 103
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_15

    .line 104
    const-string v0, "UiThreadStatement"

    const-string v1, "Already on the UI thread, this method should not be called from the main application thread"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_26

    .line 110
    :cond_15
    new-instance v0, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 111
    .local v0, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 113
    :try_start_22
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_25
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_22 .. :try_end_25} :catch_27

    .line 117
    nop

    .line 119
    .end local v0    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    :goto_26
    return-void

    .line 114
    .restart local v0    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    :catch_27
    move-exception v1

    .line 116
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    throw v2
.end method

.method public static shouldRunOnUiThread(Lorg/junit/runners/model/FrameworkMethod;)Z
    .registers 5
    .param p0, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    .line 72
    nop

    .line 73
    const-string v0, "android.test.UiThreadTest"

    invoke-static {v0}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->loadUiThreadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 74
    .local v0, "deprecatedUiThreadTestClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0, v0}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->hasAnnotation(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    .line 75
    return v2

    .line 79
    :cond_f
    nop

    .line 80
    const-string v1, "androidx.test.annotation.UiThreadTest"

    invoke-static {v1}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->loadUiThreadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 81
    .local v1, "uiThreadTestClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0, v0}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->hasAnnotation(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 82
    invoke-static {p0, v1}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->hasAnnotation(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_25

    .line 86
    .end local v1    # "uiThreadTestClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_23
    const/4 v1, 0x0

    return v1

    .line 83
    .restart local v1    # "uiThreadTestClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_25
    :goto_25
    return v2
.end method


# virtual methods
.method public evaluate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    iget-boolean v0, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->runOnUiThread:Z

    if-eqz v0, :cond_1b

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 51
    .local v0, "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v1, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement$1;

    invoke-direct {v1, p0, v0}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement$1;-><init>(Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v1}, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 62
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 63
    .local v1, "throwable":Ljava/lang/Throwable;
    if-nez v1, :cond_1a

    .line 66
    .end local v0    # "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    .end local v1    # "throwable":Ljava/lang/Throwable;
    goto :goto_20

    .line 64
    .restart local v0    # "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    .restart local v1    # "throwable":Ljava/lang/Throwable;
    :cond_1a
    throw v1

    .line 67
    .end local v0    # "exceptionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_1b
    iget-object v0, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->base:Lorg/junit/runners/model/Statement;

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 69
    :goto_20
    return-void
.end method

.method public isRunOnUiThread()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Landroidx/test/internal/runner/junit4/statement/UiThreadStatement;->runOnUiThread:Z

    return v0
.end method
