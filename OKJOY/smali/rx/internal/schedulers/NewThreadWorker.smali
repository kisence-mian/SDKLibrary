.class public Lrx/internal/schedulers/NewThreadWorker;
.super Lrx/Scheduler$Worker;
.source "NewThreadWorker.java"

# interfaces
.implements Lrx/Subscription;


# static fields
.field private static final EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
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
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
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
    .registers 4

    .prologue
    .line 57
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lrx/internal/schedulers/NewThreadWorker;->SET_REMOVE_ON_CANCEL_POLICY_METHOD_NOT_SUPPORTED:Ljava/lang/Object;

    .line 60
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lrx/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v2, Lrx/internal/schedulers/NewThreadWorker;->PURGE:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    const-string v2, "rx.scheduler.jdk6.purge-frequency-millis"

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lrx/internal/schedulers/NewThreadWorker;->PURGE_FREQUENCY:I

    .line 65
    const-string v2, "rx.scheduler.jdk6.purge-force"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 67
    .local v1, "purgeForce":Z
    invoke-static {}, Lrx/internal/util/PlatformDependent;->getAndroidApiVersion()I

    move-result v0

    .line 71
    .local v0, "androidApiVersion":I
    if-nez v1, :cond_39

    if-eqz v0, :cond_35

    const/16 v2, 0x15

    if-lt v0, v2, :cond_39

    :cond_35
    const/4 v2, 0x1

    :goto_36
    sput-boolean v2, Lrx/internal/schedulers/NewThreadWorker;->SHOULD_TRY_ENABLE_CANCEL_POLICY:Z

    .line 73
    return-void

    .line 71
    :cond_39
    const/4 v2, 0x0

    goto :goto_36
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 5
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 207
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 208
    const/4 v2, 0x1

    invoke-static {v2, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 210
    .local v1, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v1}, Lrx/internal/schedulers/NewThreadWorker;->tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v0

    .line 211
    .local v0, "cancelSupported":Z
    if-nez v0, :cond_18

    instance-of v2, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v2, :cond_18

    move-object v2, v1

    .line 212
    check-cast v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v2}, Lrx/internal/schedulers/NewThreadWorker;->registerExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 214
    :cond_18
    iput-object v1, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 215
    return-void
.end method

.method public static deregisterExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 2
    .param p0, "service"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 108
    sget-object v0, Lrx/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method static findSetRemoveOnCancelPolicyMethod(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;
    .registers 8
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_a
    if-ge v1, v2, :cond_2d

    aget-object v3, v0, v1

    .line 194
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setRemoveOnCancelPolicy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 195
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 197
    .local v4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2a

    const/4 v5, 0x0

    aget-object v5, v4, v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_2a

    .line 203
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_29
    return-object v3

    .line 193
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 203
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_2d
    const/4 v3, 0x0

    goto :goto_29
.end method

.method static purgeExecutors()V
    .registers 4
    .annotation build Lrx/internal/util/SuppressAnimalSniffer;
    .end annotation

    .prologue
    .line 115
    :try_start_0
    sget-object v3, Lrx/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 116
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/concurrent/ScheduledThreadPoolExecutor;>;"
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 118
    .local v0, "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_28

    .line 119
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->purge()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_a

    .line 124
    .end local v0    # "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :catch_20
    move-exception v2

    .line 125
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 126
    invoke-static {v2}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 128
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_27
    return-void

    .line 121
    .restart local v0    # "exec":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :cond_28
    :try_start_28
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_20

    goto :goto_a
.end method

.method public static registerExecutor(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .registers 8
    .param p0, "service"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .prologue
    .line 81
    :goto_0
    sget-object v1, Lrx/internal/schedulers/NewThreadWorker;->PURGE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 82
    .local v0, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    if-eqz v0, :cond_10

    .line 100
    :goto_a
    sget-object v1, Lrx/internal/schedulers/NewThreadWorker;->EXECUTORS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void

    .line 85
    :cond_10
    const/4 v1, 0x1

    new-instance v2, Lrx/internal/util/RxThreadFactory;

    const-string v3, "RxSchedulerPurge-"

    invoke-direct {v2, v3}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 86
    sget-object v1, Lrx/internal/schedulers/NewThreadWorker;->PURGE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 87
    new-instance v1, Lrx/internal/schedulers/NewThreadWorker$1;

    invoke-direct {v1}, Lrx/internal/schedulers/NewThreadWorker$1;-><init>()V

    sget v2, Lrx/internal/schedulers/NewThreadWorker;->PURGE_FREQUENCY:I

    int-to-long v2, v2

    sget v4, Lrx/internal/schedulers/NewThreadWorker;->PURGE_FREQUENCY:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_a

    .line 96
    :cond_36
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0
.end method

.method public static tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z
    .registers 11
    .param p0, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 139
    sget-boolean v5, Lrx/internal/schedulers/NewThreadWorker;->SHOULD_TRY_ENABLE_CANCEL_POLICY:Z

    if-eqz v5, :cond_40

    .line 140
    instance-of v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 144
    .local v1, "isInstanceOfScheduledThreadPoolExecutor":Z
    if-eqz v1, :cond_37

    .line 145
    sget-object v2, Lrx/internal/schedulers/NewThreadWorker;->cachedSetRemoveOnCancelPolicyMethod:Ljava/lang/Object;

    .line 147
    .local v2, "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    sget-object v5, Lrx/internal/schedulers/NewThreadWorker;->SET_REMOVE_ON_CANCEL_POLICY_METHOD_NOT_SUPPORTED:Ljava/lang/Object;

    if-ne v2, v5, :cond_12

    move v5, v6

    .line 180
    .end local v1    # "isInstanceOfScheduledThreadPoolExecutor":Z
    .end local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    :goto_11
    return v5

    .line 151
    .restart local v1    # "isInstanceOfScheduledThreadPoolExecutor":Z
    .restart local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    :cond_12
    if-nez v2, :cond_33

    .line 152
    invoke-static {p0}, Lrx/internal/schedulers/NewThreadWorker;->findSetRemoveOnCancelPolicyMethod(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 154
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_30

    move-object v5, v3

    :goto_1b
    sput-object v5, Lrx/internal/schedulers/NewThreadWorker;->cachedSetRemoveOnCancelPolicyMethod:Ljava/lang/Object;

    .line 158
    move-object v4, v3

    .line 166
    .end local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .local v4, "methodToCall":Ljava/lang/reflect/Method;
    :goto_1e
    if-eqz v4, :cond_40

    .line 168
    const/4 v5, 0x1

    :try_start_21
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_2e} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_2e} :catch_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_2e} :catch_47

    move v5, v7

    .line 169
    goto :goto_11

    .line 154
    .end local v4    # "methodToCall":Ljava/lang/reflect/Method;
    .restart local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_30
    sget-object v5, Lrx/internal/schedulers/NewThreadWorker;->SET_REMOVE_ON_CANCEL_POLICY_METHOD_NOT_SUPPORTED:Ljava/lang/Object;

    goto :goto_1b

    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_33
    move-object v4, v2

    .line 160
    check-cast v4, Ljava/lang/reflect/Method;

    .restart local v4    # "methodToCall":Ljava/lang/reflect/Method;
    goto :goto_1e

    .line 163
    .end local v2    # "localSetRemoveOnCancelPolicyMethod":Ljava/lang/Object;
    .end local v4    # "methodToCall":Ljava/lang/reflect/Method;
    :cond_37
    invoke-static {p0}, Lrx/internal/schedulers/NewThreadWorker;->findSetRemoveOnCancelPolicyMethod(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v4

    .restart local v4    # "methodToCall":Ljava/lang/reflect/Method;
    goto :goto_1e

    .line 170
    :catch_3c
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "isInstanceOfScheduledThreadPoolExecutor":Z
    .end local v4    # "methodToCall":Ljava/lang/reflect/Method;
    :cond_40
    :goto_40
    move v5, v6

    .line 180
    goto :goto_11

    .line 172
    .restart local v1    # "isInstanceOfScheduledThreadPoolExecutor":Z
    .restart local v4    # "methodToCall":Ljava/lang/reflect/Method;
    :catch_42
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_40

    .line 174
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_47
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_40
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 292
    iget-boolean v0, p0, Lrx/internal/schedulers/NewThreadWorker;->isUnsubscribed:Z

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 5
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 219
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/internal/schedulers/NewThreadWorker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 7
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 224
    iget-boolean v0, p0, Lrx/internal/schedulers/NewThreadWorker;->isUnsubscribed:Z

    if-eqz v0, :cond_9

    .line 225
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    .line 227
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/internal/schedulers/NewThreadWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_8
.end method

.method public scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;
    .registers 11
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 239
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onScheduledAction(Lrx/functions/Action0;)Lrx/functions/Action0;

    move-result-object v0

    .line 240
    .local v0, "decoratedAction":Lrx/functions/Action0;
    new-instance v2, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v2, v0}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/functions/Action0;)V

    .line 242
    .local v2, "run":Lrx/internal/schedulers/ScheduledAction;
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_19

    .line 243
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 247
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_15
    invoke-virtual {v2, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 249
    return-object v2

    .line 245
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_19
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .restart local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_15
.end method

.method public scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;Lrx/internal/util/SubscriptionList;)Lrx/internal/schedulers/ScheduledAction;
    .registers 12
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "parent"    # Lrx/internal/util/SubscriptionList;

    .prologue
    .line 268
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onScheduledAction(Lrx/functions/Action0;)Lrx/functions/Action0;

    move-result-object v0

    .line 269
    .local v0, "decoratedAction":Lrx/functions/Action0;
    new-instance v2, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v2, v0, p5}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/functions/Action0;Lrx/internal/util/SubscriptionList;)V

    .line 270
    .local v2, "run":Lrx/internal/schedulers/ScheduledAction;
    invoke-virtual {p5, v2}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 273
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_1c

    .line 274
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 278
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_18
    invoke-virtual {v2, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 280
    return-object v2

    .line 276
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_1c
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .restart local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_18
.end method

.method public scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;Lrx/subscriptions/CompositeSubscription;)Lrx/internal/schedulers/ScheduledAction;
    .registers 12
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "parent"    # Lrx/subscriptions/CompositeSubscription;

    .prologue
    .line 252
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onScheduledAction(Lrx/functions/Action0;)Lrx/functions/Action0;

    move-result-object v0

    .line 253
    .local v0, "decoratedAction":Lrx/functions/Action0;
    new-instance v2, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v2, v0, p5}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/functions/Action0;Lrx/subscriptions/CompositeSubscription;)V

    .line 254
    .local v2, "run":Lrx/internal/schedulers/ScheduledAction;
    invoke-virtual {p5, v2}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 257
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_1c

    .line 258
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 262
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_18
    invoke-virtual {v2, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V

    .line 264
    return-object v2

    .line 260
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_1c
    iget-object v3, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .restart local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    goto :goto_18
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/schedulers/NewThreadWorker;->isUnsubscribed:Z

    .line 286
    iget-object v0, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 287
    iget-object v0, p0, Lrx/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0}, Lrx/internal/schedulers/NewThreadWorker;->deregisterExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 288
    return-void
.end method
