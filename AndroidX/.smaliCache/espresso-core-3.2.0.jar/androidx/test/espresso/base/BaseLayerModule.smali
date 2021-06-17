.class public Landroidx/test/espresso/base/BaseLayerModule;
.super Ljava/lang/Object;
.source "BaseLayerModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic lambda$provideControlledLooper$0$BaseLayerModule()Landroidx/test/internal/platform/os/ControlledLooper;
    .registers 1

    .line 199
    sget-object v0, Landroidx/test/internal/platform/os/ControlledLooper;->NO_OP_CONTROLLED_LOOPER:Landroidx/test/internal/platform/os/ControlledLooper;

    return-object v0
.end method


# virtual methods
.method public provideActiveRootLister(Landroidx/test/espresso/base/RootsOracle;)Landroidx/test/espresso/base/ActiveRootLister;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootsOracle"
        }
    .end annotation

    .line 116
    return-object p1
.end method

.method public provideCompatAsyncTaskMonitor(Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;)Landroidx/test/espresso/base/IdleNotifier;
    .registers 3
    .annotation runtime Landroidx/test/espresso/base/CompatAsyncTask;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extractor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;",
            ")",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;->getCompatAsyncTaskThreadPool()Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 78
    new-instance v0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;

    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, p1}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-virtual {v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->asIdleNotifier()Landroidx/test/espresso/base/IdleNotifier;

    move-result-object p1

    return-object p1

    .line 80
    :cond_1a
    new-instance p1, Landroidx/test/espresso/base/NoopRunnableIdleNotifier;

    invoke-direct {p1}, Landroidx/test/espresso/base/NoopRunnableIdleNotifier;-><init>()V

    return-object p1
.end method

.method public provideControlledLooper()Landroidx/test/internal/platform/os/ControlledLooper;
    .registers 3

    .line 198
    const-class v0, Landroidx/test/internal/platform/os/ControlledLooper;

    sget-object v1, Landroidx/test/espresso/base/BaseLayerModule$$Lambda$0;->$instance:Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;

    invoke-static {v0, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/os/ControlledLooper;

    return-object v0
.end method

.method provideDefaultFailureHander(Landroid/content/Context;)Landroidx/test/espresso/base/DefaultFailureHandler;
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation runtime Landroidx/test/espresso/internal/inject/TargetContext;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 191
    new-instance v0, Landroidx/test/espresso/base/DefaultFailureHandler;

    invoke-direct {v0, p1}, Landroidx/test/espresso/base/DefaultFailureHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public provideDynamicNotifer(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroidx/test/espresso/base/IdleNotifier;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dynamicRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/IdlingResourceRegistry;",
            ")",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
            ">;"
        }
    .end annotation

    .line 102
    nop

    .line 103
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/IdlingRegistry;->getResources()Ljava/util/Collection;

    move-result-object v0

    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/test/espresso/IdlingRegistry;->getLoopers()Ljava/util/Collection;

    move-result-object v1

    .line 102
    invoke-virtual {p1, v0, v1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->sync(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 104
    invoke-virtual {p1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->asIdleNotifier()Landroidx/test/espresso/base/IdleNotifier;

    move-result-object p1

    return-object p1
.end method

.method public provideEventInjector()Landroidx/test/espresso/base/EventInjector;
    .registers 5

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 129
    nop

    .line 130
    const/16 v1, 0x10

    if-lt v0, v1, :cond_11

    .line 131
    new-instance v0, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;

    invoke-direct {v0}, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;-><init>()V

    .line 132
    invoke-virtual {v0}, Landroidx/test/espresso/base/InputManagerEventInjectionStrategy;->initialize()V

    .line 133
    nop

    .line 134
    goto :goto_1e

    :cond_11
    const/4 v1, 0x7

    if-lt v0, v1, :cond_24

    .line 136
    new-instance v0, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;

    invoke-direct {v0}, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;-><init>()V

    .line 137
    invoke-virtual {v0}, Landroidx/test/espresso/base/WindowManagerEventInjectionStrategy;->initialize()V

    .line 138
    nop

    .line 139
    nop

    .line 143
    :goto_1e
    new-instance v1, Landroidx/test/espresso/base/EventInjector;

    invoke-direct {v1, v0}, Landroidx/test/espresso/base/EventInjector;-><init>(Landroidx/test/espresso/base/EventInjectionStrategy;)V

    return-object v1

    .line 140
    :cond_24
    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x44

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "API Level 6 and below is not supported. You are running: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method provideFailureHander(Landroidx/test/espresso/base/DefaultFailureHandler;)Landroidx/test/espresso/FailureHandler;
    .registers 2
    .annotation runtime Landroidx/test/espresso/base/Default;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 186
    return-object p1
.end method

.method provideFailureHandler(Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;)Landroidx/test/espresso/FailureHandler;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;->get()Landroidx/test/espresso/FailureHandler;

    move-result-object p1

    return-object p1
.end method

.method public provideLifecycleMonitor()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;
    .registers 2

    .line 56
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    return-object v0
.end method

.method public provideMainLooper()Landroid/os/Looper;
    .registers 2

    .line 68
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public provideMainThreadExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;
    .registers 3
    .annotation runtime Landroidx/test/espresso/base/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainLooper"
        }
    .end annotation

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    new-instance p1, Landroidx/test/espresso/base/BaseLayerModule$1;

    invoke-direct {p1, p0, v0}, Landroidx/test/espresso/base/BaseLayerModule$1;-><init>(Landroidx/test/espresso/base/BaseLayerModule;Landroid/os/Handler;)V

    return-object p1
.end method

.method public provideRemoteExecutor()Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;
    .registers 10

    .line 173
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder;-><init>()V

    .line 180
    const-string v1, "Espresso Remote #%d"

    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x5

    const-wide/16 v3, 0xa

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 173
    invoke-static {v8}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public provideSdkAsyncTaskMonitor(Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;)Landroidx/test/espresso/base/IdleNotifier;
    .registers 3
    .annotation runtime Landroidx/test/espresso/base/SdkAsyncTask;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extractor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;",
            ")",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;

    invoke-virtual {p1}, Landroidx/test/espresso/base/ThreadPoolExecutorExtractor;->getAsyncTaskThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-virtual {v0}, Landroidx/test/espresso/base/AsyncTaskPoolMonitor;->asIdleNotifier()Landroidx/test/espresso/base/IdleNotifier;

    move-result-object p1

    return-object p1
.end method

.method public provideTargetContext()Landroid/content/Context;
    .registers 2
    .annotation runtime Landroidx/test/espresso/internal/inject/TargetContext;
    .end annotation

    .line 62
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
