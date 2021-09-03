.class public Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;
.super Lcom/tds/common/reactor/schedulers/Scheduler$Worker;
.source "NewThreadWorker.java"

# interfaces
.implements Lcom/tds/common/reactor/Subscription;


# static fields
.field private static final EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static final FREQUENCY_KEY:Ljava/lang/String; = "rx.scheduler.jdk6.purge-frequency-millis"

.field private static final PURGE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static final PURGE_FORCE_KEY:Ljava/lang/String; = "rx.scheduler.jdk6.purge-force"

.field public static final PURGE_FREQUENCY:I

.field private static final PURGE_THREAD_PREFIX:Ljava/lang/String; = "RxSchedulerPurge-"

.field private static final SET_REMOVE_ON_CANCEL_POLICY_METHOD_NOT_SUPPORTED:Ljava/lang/Object;

.field private static final SHOULD_TRY_ENABLE_CANCEL_POLICY:Z

.field private static volatile cachedSetRemoveOnCancelPolicyMethod:Ljava/lang/Object;


# instance fields
.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field volatile isUnsubscribed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->SET_REMOVE_ON_CANCEL_POLICY_METHOD_NOT_SUPPORTED:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->PURGE:Ljava/util/concurrent/atomic/AtomicReference;

    .line 77
    const-string v0, "rx.scheduler.jdk6.purge-frequency-millis"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->PURGE_FREQUENCY:I

    .line 80
    const-string v0, "rx.scheduler.jdk6.purge-force"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 82
    .local v0, "purgeForce":Z
    invoke-static {}, Lcom/tds/common/reactor/util/PlatformDependent;->getAndroidApiVersion()I

    move-result v1

    .line 86
    .local v1, "androidApiVersion":I
    if-nez v0, :cond_37

    if-eqz v1, :cond_35

    const/16 v2, 0x15

    if-lt v1, v2, :cond_37

    :cond_35
    const/4 v2, 0x1

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    sput-boolean v2, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->SHOULD_TRY_ENABLE_CANCEL_POLICY:Z

    .line 88
    .end local v0    # "purgeForce":Z
    .end local v1    # "androidApiVersion":I
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 5
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 224
    invoke-direct {p0}, Lcom/tds/common/reactor/schedulers/Scheduler$Worker;-><init>()V

    .line 225
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 227
    .local v0, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0}, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v1

    .line 228
    .local v1, "cancelSupported":Z
    if-nez v1, :cond_18

    instance-of v2, v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v2, :cond_18

    .line 229
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v2}, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->registerExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 231
    :cond_18
    iput-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 232
    return-void
.end method

.method public static deregisterExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2
    .param p0, "service"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 123
    sget-object v0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method static findSetRemoveOnCancelPolicyMethod(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;
    .registers 9
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_2d

    aget-object v4, v0, v3

    .line 211
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setRemoveOnCancelPolicy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 212
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 214
    .local v5, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2a

    aget-object v6, v5, v2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_2a

    .line 215
    return-object v4

    .line 210
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 220
    :cond_2d
    const/4 v0, 0x0

    return-object v0
.end method

.method static purgeExecutors()V
    .registers 4

    .line 131
    :try_start_0
    sget-object v0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 132
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/ScheduledThreadPoolExecutor;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 133
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/ScheduledThreadPoolExecutor;>;"
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 135
    .local v2, "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_20

    .line 136
    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->purge()V

    goto :goto_23

    .line 138
    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_25

    .line 140
    .end local v2    # "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :goto_23
    goto :goto_a

    .line 144
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/util/concurrent/ScheduledThreadPoolExecutor;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/ScheduledThreadPoolExecutor;>;"
    :cond_24
    goto :goto_2c

    .line 141
    :catchall_25
    move-exception v0

    .line 142
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/tds/common/reactor/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 143
    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 145
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2c
    return-void
.end method

.method public static registerExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .registers 13
    .param p0, "service"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 96
    :goto_0
    sget-object v0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->PURGE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 97
    .local v1, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v1, :cond_b

    .line 98
    goto :goto_2e

    .line 100
    :cond_b
    const/4 v2, 0x1

    new-instance v3, Lcom/tds/common/reactor/util/RxThreadFactory;

    const-string v4, "RxSchedulerPurge-"

    invoke-direct {v3, v4}, Lcom/tds/common/reactor/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 101
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 102
    new-instance v6, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker$1;

    invoke-direct {v6}, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker$1;-><init>()V

    sget v0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->PURGE_FREQUENCY:I

    int-to-long v7, v0

    int-to-long v9, v0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v5, v1

    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 109
    nop

    .line 115
    .end local v1    # "exec":Ljava/util/concurrent/ScheduledExecutorService;
    :goto_2e
    sget-object v0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void

    .line 111
    .restart local v1    # "exec":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_34
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 113
    .end local v1    # "exec":Ljava/util/concurrent/ScheduledExecutorService;
    goto :goto_0
.end method

.method public static tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z
    .registers 7
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 156
    sget-boolean v0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->SHOULD_TRY_ENABLE_CANCEL_POLICY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    .line 157
    instance-of v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 161
    .local v0, "isInstanceOfScheduledThreadPoolExecutor":Z
    if-eqz v0, :cond_21

    .line 162
    sget-object v2, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->cachedSetRemoveOnCancelPolicyMethod:Ljava/lang/Object;

    .line 164
    .local v2, "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    sget-object v3, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->SET_REMOVE_ON_CANCEL_POLICY_METHOD_NOT_SUPPORTED:Ljava/lang/Object;

    if-ne v2, v3, :cond_10

    .line 165
    return v1

    .line 168
    :cond_10
    if-nez v2, :cond_1d

    .line 169
    invoke-static {p0}, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->findSetRemoveOnCancelPolicyMethod(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 171
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_19

    move-object v3, v4

    :cond_19
    sput-object v3, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->cachedSetRemoveOnCancelPolicyMethod:Ljava/lang/Object;

    .line 175
    move-object v3, v4

    .line 176
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .local v3, "methodToCall":Ljava/lang/reflect/Method;
    goto :goto_20

    .line 177
    .end local v3    # "methodToCall":Ljava/lang/reflect/Method;
    :cond_1d
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/Method;

    .line 179
    .end local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    .restart local v3    # "methodToCall":Ljava/lang/reflect/Method;
    :goto_20
    goto :goto_25

    .line 180
    .end local v3    # "methodToCall":Ljava/lang/reflect/Method;
    :cond_21
    invoke-static {p0}, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->findSetRemoveOnCancelPolicyMethod(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 183
    .restart local v3    # "methodToCall":Ljava/lang/reflect/Method;
    :goto_25
    if-eqz v3, :cond_42

    .line 185
    const/4 v2, 0x1

    :try_start_28
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_33} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_33} :catch_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_33} :catch_34

    .line 186
    return v2

    .line 191
    :catch_34
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v2}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_42

    .line 189
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_39
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_42

    .line 187
    :catch_3e
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v2}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 197
    .end local v0    # "isInstanceOfScheduledThreadPoolExecutor":Z
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "methodToCall":Ljava/lang/reflect/Method;
    :cond_42
    :goto_42
    return v1
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .line 309
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->isUnsubscribed:Z

    return v0
.end method

.method public schedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/Subscription;
    .registers 5
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;

    .line 236
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->schedule(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/Subscription;
    .registers 6
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 241
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->isUnsubscribed:Z

    if-eqz v0, :cond_9

    .line 242
    invoke-static {}, Lcom/tds/common/reactor/subscriptions/Subscriptions;->unsubscribed()Lcom/tds/common/reactor/Subscription;

    move-result-object v0

    return-object v0

    .line 244
    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->scheduleActual(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/schedulers/ScheduledAction;

    move-result-object v0

    return-object v0
.end method

.method public scheduleActual(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lcom/tds/common/reactor/schedulers/ScheduledAction;
    .registers 9
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 256
    invoke-static {p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onScheduledAction(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/functions/Action0;

    move-result-object v0

    .line 257
    .local v0, "decoratedAction":Lcom/tds/common/reactor/functions/Action0;
    new-instance v1, Lcom/tds/common/reactor/schedulers/ScheduledAction;

    invoke-direct {v1, v0}, Lcom/tds/common/reactor/schedulers/ScheduledAction;-><init>(Lcom/tds/common/reactor/functions/Action0;)V

    .line 259
    .local v1, "run":Lcom/tds/common/reactor/schedulers/ScheduledAction;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_16

    .line 260
    iget-object v2, p0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .local v2, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_1c

    .line 262
    .end local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_16
    iget-object v2, p0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 264
    .restart local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_1c
    invoke-virtual {v1, v2}, Lcom/tds/common/reactor/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 266
    return-object v1
.end method

.method public scheduleActual(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;Lcom/tds/common/reactor/subscriptions/CompositeSubscription;)Lcom/tds/common/reactor/schedulers/ScheduledAction;
    .registers 10
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "parent"    # Lcom/tds/common/reactor/subscriptions/CompositeSubscription;

    .line 269
    invoke-static {p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onScheduledAction(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/functions/Action0;

    move-result-object v0

    .line 270
    .local v0, "decoratedAction":Lcom/tds/common/reactor/functions/Action0;
    new-instance v1, Lcom/tds/common/reactor/schedulers/ScheduledAction;

    invoke-direct {v1, v0, p5}, Lcom/tds/common/reactor/schedulers/ScheduledAction;-><init>(Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/subscriptions/CompositeSubscription;)V

    .line 271
    .local v1, "run":Lcom/tds/common/reactor/schedulers/ScheduledAction;
    invoke-virtual {p5, v1}, Lcom/tds/common/reactor/subscriptions/CompositeSubscription;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 274
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_19

    .line 275
    iget-object v2, p0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .local v2, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_1f

    .line 277
    .end local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_19
    iget-object v2, p0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 279
    .restart local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_1f
    invoke-virtual {v1, v2}, Lcom/tds/common/reactor/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 281
    return-object v1
.end method

.method public scheduleActual(Lcom/tds/common/reactor/functions/Action0;JLjava/util/concurrent/TimeUnit;Lcom/tds/common/reactor/util/SubscriptionList;)Lcom/tds/common/reactor/schedulers/ScheduledAction;
    .registers 10
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "parent"    # Lcom/tds/common/reactor/util/SubscriptionList;

    .line 285
    invoke-static {p1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onScheduledAction(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/functions/Action0;

    move-result-object v0

    .line 286
    .local v0, "decoratedAction":Lcom/tds/common/reactor/functions/Action0;
    new-instance v1, Lcom/tds/common/reactor/schedulers/ScheduledAction;

    invoke-direct {v1, v0, p5}, Lcom/tds/common/reactor/schedulers/ScheduledAction;-><init>(Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/util/SubscriptionList;)V

    .line 287
    .local v1, "run":Lcom/tds/common/reactor/schedulers/ScheduledAction;
    invoke-virtual {p5, v1}, Lcom/tds/common/reactor/util/SubscriptionList;->add(Lcom/tds/common/reactor/Subscription;)V

    .line 290
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_19

    .line 291
    iget-object v2, p0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .local v2, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_1f

    .line 293
    .end local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_19
    iget-object v2, p0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 295
    .restart local v2    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_1f
    invoke-virtual {v1, v2}, Lcom/tds/common/reactor/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 297
    return-object v1
.end method

.method public unsubscribe()V
    .registers 2

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->isUnsubscribed:Z

    .line 303
    iget-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 304
    iget-object v0, p0, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0}, Lcom/tds/common/reactor/internal/schedulers/NewThreadWorker;->deregisterExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 305
    return-void
.end method
