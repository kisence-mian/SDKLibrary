.class public final Landroidx/test/espresso/base/IdlingResourceRegistry;
.super Ljava/lang/Object;
.source "IdlingResourceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;,
        Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;,
        Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;
    }
.end annotation


# static fields
.field private static final DYNAMIC_RESOURCE_HAS_IDLED:I = 0x1

.field private static final IDLE_WARNING_REACHED:I = 0x3

.field private static final NO_OP_CALLBACK:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

.field private static final POSSIBLE_RACE_CONDITION_DETECTED:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_MESSAGE_TAG:Ljava/lang/Object;

.field private static final TIMEOUT_OCCURRED:I = 0x2


# instance fields
.field private final dispatcher:Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;

.field private final handler:Landroid/os/Handler;

.field private idleNotificationCallback:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

.field private final idlingStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;",
            ">;"
        }
    .end annotation
.end field

.field private final looper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    const-class v0, Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/IdlingResourceRegistry;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/test/espresso/base/IdlingResourceRegistry;->TIMEOUT_MESSAGE_TAG:Ljava/lang/Object;

    .line 59
    new-instance v0, Landroidx/test/espresso/base/IdlingResourceRegistry$1;

    invoke-direct {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry$1;-><init>()V

    sput-object v0, Landroidx/test/espresso/base/IdlingResourceRegistry;->NO_OP_CALLBACK:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "looper"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idlingStates:Ljava/util/List;

    .line 77
    sget-object v0, Landroidx/test/espresso/base/IdlingResourceRegistry;->NO_OP_CALLBACK:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    iput-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idleNotificationCallback:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    .line 81
    iput-object p1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->looper:Landroid/os/Looper;

    .line 82
    new-instance v0, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;-><init>(Landroidx/test/espresso/base/IdlingResourceRegistry;Landroidx/test/espresso/base/IdlingResourceRegistry$1;)V

    iput-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->dispatcher:Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;

    .line 83
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method static synthetic access$1000()Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;
    .registers 1

    .line 50
    sget-object v0, Landroidx/test/espresso/base/IdlingResourceRegistry;->NO_OP_CALLBACK:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 50
    sget-object v0, Landroidx/test/espresso/base/IdlingResourceRegistry;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/test/espresso/base/IdlingResourceRegistry;)Ljava/util/List;
    .registers 1

    .line 50
    iget-object p0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idlingStates:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;
    .registers 1

    .line 50
    iget-object p0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idleNotificationCallback:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    return-object p0
.end method

.method static synthetic access$602(Landroidx/test/espresso/base/IdlingResourceRegistry;Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;)Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;
    .registers 2

    .line 50
    iput-object p1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idleNotificationCallback:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    return-object p1
.end method

.method static synthetic access$700(Landroidx/test/espresso/base/IdlingResourceRegistry;)Ljava/util/List;
    .registers 1

    .line 50
    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->getBusyResources()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .registers 1

    .line 50
    sget-object v0, Landroidx/test/espresso/base/IdlingResourceRegistry;->TIMEOUT_MESSAGE_TAG:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Landroidx/test/espresso/base/IdlingResourceRegistry;)Landroid/os/Handler;
    .registers 1

    .line 50
    iget-object p0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private getBusyResources()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 349
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 350
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 352
    iget-object v2, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idlingStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;

    .line 353
    iget-boolean v4, v3, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->idle:Z

    if-nez v4, :cond_33

    .line 354
    iget-object v4, v3, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-interface {v4}, Landroidx/test/espresso/IdlingResource;->isIdleNow()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 357
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 359
    :cond_2a
    iget-object v3, v3, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-interface {v3}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_33
    :goto_33
    goto :goto_e

    .line 364
    :cond_34
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 365
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;

    const/4 v2, 0x4

    sget-object v3, Landroidx/test/espresso/base/IdlingResourceRegistry;->TIMEOUT_MESSAGE_TAG:Ljava/lang/Object;

    .line 366
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 367
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 368
    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 369
    const/4 v0, 0x0

    return-object v0

    .line 371
    :cond_4c
    return-object v0
.end method

.method private logDuplicateRegistrationError(Landroidx/test/espresso/IdlingResource;Landroidx/test/espresso/IdlingResource;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newResource",
            "oldResource"
        }
    .end annotation

    .line 513
    sget-object v0, Landroidx/test/espresso/base/IdlingResourceRegistry;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 519
    invoke-interface {p1}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object p2, v2, p1

    .line 515
    const-string p1, "Attempted to register resource with same names: %s. R1: %s R2: %s.\nDuplicate resource registration will be ignored."

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 513
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void
.end method

.method private runSynchronouslyOnMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 323
    iget-object p1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    :try_start_a
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_e} :catch_1d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_e} :catch_16
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_e} :catch_f

    return-object p1

    .line 331
    :catch_f
    move-exception p1

    .line 332
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 329
    :catch_16
    move-exception p1

    .line 330
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 327
    :catch_1d
    move-exception p1

    .line 328
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private scheduleTimeoutMessages()V
    .registers 8

    .line 337
    invoke-static {}, Landroidx/test/espresso/IdlingPolicies;->getDynamicIdlingResourceWarningPolicy()Landroidx/test/espresso/IdlingPolicy;

    move-result-object v0

    .line 338
    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;

    sget-object v2, Landroidx/test/espresso/base/IdlingResourceRegistry;->TIMEOUT_MESSAGE_TAG:Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 339
    iget-object v3, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;

    .line 340
    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy;->getIdleTimeoutUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v4

    invoke-virtual {v0}, Landroidx/test/espresso/IdlingPolicy;->getIdleTimeout()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 339
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 341
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 342
    invoke-static {}, Landroidx/test/espresso/IdlingPolicies;->getDynamicIdlingResourceErrorPolicy()Landroidx/test/espresso/IdlingPolicy;

    move-result-object v1

    .line 344
    iget-object v2, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;

    .line 345
    invoke-virtual {v1}, Landroidx/test/espresso/IdlingPolicy;->getIdleTimeoutUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/test/espresso/IdlingPolicy;->getIdleTimeout()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 344
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 346
    return-void
.end method


# virtual methods
.method allResourcesAreIdle()Z
    .registers 6

    .line 264
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->looper:Landroid/os/Looper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 265
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idlingStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;

    .line 266
    iget-boolean v4, v1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->idle:Z

    if-eqz v4, :cond_2e

    .line 268
    iget-object v4, v1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-interface {v4}, Landroidx/test/espresso/IdlingResource;->isIdleNow()Z

    move-result v4

    iput-boolean v4, v1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->idle:Z

    .line 271
    :cond_2e
    iget-boolean v1, v1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->idle:Z

    if-nez v1, :cond_33

    .line 272
    return v3

    .line 274
    :cond_33
    goto :goto_16

    .line 275
    :cond_34
    return v2
.end method

.method asIdleNotifier()Landroidx/test/espresso/base/IdleNotifier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance v0, Landroidx/test/espresso/base/IdlingResourceRegistry$6;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$6;-><init>(Landroidx/test/espresso/base/IdlingResourceRegistry;)V

    return-object v0
.end method

.method cancelIdleMonitor()V
    .registers 2

    .line 318
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->dispatcher:Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;

    # invokes: Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->deregister()V
    invoke-static {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;->access$300(Landroidx/test/espresso/base/IdlingResourceRegistry$Dispatcher;)V

    .line 319
    return-void
.end method

.method public getResources()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/test/espresso/IdlingResource;",
            ">;"
        }
    .end annotation

    .line 246
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->looper:Landroid/os/Looper;

    if-eq v0, v1, :cond_14

    .line 247
    new-instance v0, Landroidx/test/espresso/base/IdlingResourceRegistry$5;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$5;-><init>(Landroidx/test/espresso/base/IdlingResourceRegistry;)V

    invoke-direct {p0, v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->runSynchronouslyOnMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 255
    :cond_14
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->builder()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Builder;

    move-result-object v0

    .line 256
    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idlingStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;

    .line 257
    iget-object v2, v2, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-virtual {v0, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Builder;

    .line 258
    goto :goto_1e

    .line 259
    :cond_30
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList$Builder;->build()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method notifyWhenAllResourcesAreIdle(Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 287
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->looper:Landroid/os/Looper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 289
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idleNotificationCallback:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    sget-object v1, Landroidx/test/espresso/base/IdlingResourceRegistry;->NO_OP_CALLBACK:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    if-ne v0, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    const-string v0, "Callback has already been registered."

    invoke-static {v2, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 290
    invoke-virtual {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->allResourcesAreIdle()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 291
    invoke-interface {p1}, Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;->allResourcesIdle()V

    goto :goto_2f

    .line 293
    :cond_2a
    iput-object p1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idleNotificationCallback:Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;

    .line 294
    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->scheduleTimeoutMessages()V

    .line 296
    :goto_2f
    return-void
.end method

.method public registerLooper(Landroid/os/Looper;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "looper",
            "considerWaitIdle"
        }
    .end annotation

    .line 232
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, p1, :cond_d

    const/4 p2, 0x1

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    const-string v2, "Not intended for use with main looper!"

    invoke-static {p2, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 235
    new-array p2, v0, [Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;

    .line 236
    invoke-static {p1}, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->forLooper(Landroid/os/Looper;)Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 235
    invoke-virtual {p0, p1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->registerResources(Ljava/util/List;)Z

    .line 237
    return-void
.end method

.method public registerResources(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resourceList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/test/espresso/IdlingResource;",
            ">;)Z"
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->looper:Landroid/os/Looper;

    if-eq v0, v1, :cond_18

    .line 152
    new-instance v0, Landroidx/test/espresso/base/IdlingResourceRegistry$3;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/IdlingResourceRegistry$3;-><init>(Landroidx/test/espresso/base/IdlingResourceRegistry;Ljava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->runSynchronouslyOnMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 160
    :cond_18
    nop

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/espresso/IdlingResource;

    .line 162
    invoke-interface {v2}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IdlingResource.getName() should not be null"

    invoke-static {v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    nop

    .line 165
    iget-object v3, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idlingStates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;

    .line 166
    invoke-interface {v2}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-interface {v7}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 170
    iget-object v3, v4, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-direct {p0, v2, v3}, Landroidx/test/espresso/base/IdlingResourceRegistry;->logDuplicateRegistrationError(Landroidx/test/espresso/IdlingResource;Landroidx/test/espresso/IdlingResource;)V

    .line 171
    nop

    .line 172
    const/4 v3, 0x1

    goto :goto_62

    .line 174
    :cond_60
    goto :goto_3b

    .line 165
    :cond_61
    const/4 v3, 0x0

    .line 176
    :goto_62
    if-nez v3, :cond_75

    .line 177
    new-instance v3, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;

    iget-object v4, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;-><init>(Landroidx/test/espresso/IdlingResource;Landroid/os/Handler;Landroidx/test/espresso/base/IdlingResourceRegistry$1;)V

    .line 178
    iget-object v2, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idlingStates:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    # invokes: Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->registerSelf()V
    invoke-static {v3}, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->access$200(Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;)V

    .line 180
    goto :goto_76

    .line 181
    :cond_75
    const/4 v1, 0x0

    .line 183
    :goto_76
    goto :goto_1f

    .line 184
    :cond_77
    return v1
.end method

.method public sync(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "resources",
            "loopers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroidx/test/espresso/IdlingResource;",
            ">;",
            "Ljava/lang/Iterable<",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->looper:Landroid/os/Looper;

    if-eq v0, v1, :cond_12

    .line 92
    new-instance v0, Landroidx/test/espresso/base/IdlingResourceRegistry$2;

    invoke-direct {v0, p0, p1, p2}, Landroidx/test/espresso/base/IdlingResourceRegistry$2;-><init>(Landroidx/test/espresso/base/IdlingResourceRegistry;Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    invoke-direct {p0, v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->runSynchronouslyOnMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_c5

    .line 101
    :cond_12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/IdlingResource;

    .line 105
    invoke-interface {v1}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 106
    invoke-interface {v1}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/espresso/IdlingResource;

    invoke-direct {p0, v1, v2}, Landroidx/test/espresso/base/IdlingResourceRegistry;->logDuplicateRegistrationError(Landroidx/test/espresso/IdlingResource;Landroidx/test/espresso/IdlingResource;)V

    goto :goto_46

    .line 108
    :cond_3f
    invoke-interface {v1}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_46
    goto :goto_1b

    .line 114
    :cond_47
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    .line 115
    invoke-static {p2}, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->forLooper(Landroid/os/Looper;)Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;

    move-result-object p2

    .line 116
    invoke-interface {p2}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 117
    invoke-interface {p2}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/IdlingResource;

    invoke-direct {p0, p2, v1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->logDuplicateRegistrationError(Landroidx/test/espresso/IdlingResource;Landroidx/test/espresso/IdlingResource;)V

    goto :goto_7a

    .line 119
    :cond_73
    invoke-interface {p2}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :goto_7a
    goto :goto_4b

    .line 126
    :cond_7b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object p2, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idlingStates:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_86
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;

    .line 128
    iget-object v2, v1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-interface {v2}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/espresso/IdlingResource;

    .line 129
    if-nez v2, :cond_a6

    .line 130
    iget-object v1, v1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b6

    .line 131
    :cond_a6
    iget-object v3, v1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    if-eq v3, v2, :cond_b6

    .line 134
    iget-object v1, v1, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v2}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_b6
    :goto_b6
    goto :goto_86

    .line 139
    :cond_b7
    invoke-virtual {p0, p1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->unregisterResources(Ljava/util/List;)Z

    .line 140
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/test/espresso/base/IdlingResourceRegistry;->registerResources(Ljava/util/List;)Z

    .line 142
    :goto_c5
    return-void
.end method

.method public unregisterResources(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resourceList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/test/espresso/IdlingResource;",
            ">;)Z"
        }
    .end annotation

    .line 195
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->looper:Landroid/os/Looper;

    if-eq v0, v1, :cond_18

    .line 196
    new-instance v0, Landroidx/test/espresso/base/IdlingResourceRegistry$4;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/IdlingResourceRegistry$4;-><init>(Landroidx/test/espresso/base/IdlingResourceRegistry;Ljava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->runSynchronouslyOnMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 204
    :cond_18
    nop

    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/espresso/IdlingResource;

    .line 206
    nop

    .line 207
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2e
    iget-object v5, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idlingStates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_59

    .line 208
    iget-object v5, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idlingStates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;

    iget-object v5, v5, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-interface {v5}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 209
    iget-object v5, p0, Landroidx/test/espresso/base/IdlingResourceRegistry;->idlingStates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 210
    nop

    .line 211
    const/4 v4, 0x1

    goto :goto_5a

    .line 207
    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_59
    const/4 v4, 0x0

    .line 215
    :goto_5a
    if-nez v4, :cond_7a

    .line 216
    nop

    .line 217
    sget-object v1, Landroidx/test/espresso/base/IdlingResourceRegistry;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 223
    invoke-interface {v2}, Landroidx/test/espresso/IdlingResource;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    .line 224
    invoke-virtual {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->getResources()Ljava/util/List;

    move-result-object v2

    aput-object v2, v5, v0

    .line 219
    const-string v2, "Attempted to unregister resource that is not registered: \'%s\'. Resource list: %s"

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 226
    :cond_7a
    goto :goto_1f

    .line 227
    :cond_7b
    return v1
.end method
