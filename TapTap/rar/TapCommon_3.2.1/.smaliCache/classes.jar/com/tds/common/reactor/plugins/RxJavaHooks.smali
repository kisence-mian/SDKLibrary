.class public final Lcom/tds/common/reactor/plugins/RxJavaHooks;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"


# static fields
.field static volatile lockdown:Z

.field static volatile onCompletableSubscribeError:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onComputationScheduler:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onError:Lcom/tds/common/reactor/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onGenericScheduledExecutorService:Lcom/tds/common/reactor/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func0<",
            "+",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onIOScheduler:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onNewThreadScheduler:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableCreate:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/Observable$OnSubscribe;",
            "Lcom/tds/common/reactor/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableLift:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/Observable$Operator;",
            "Lcom/tds/common/reactor/Observable$Operator;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableReturn:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/Subscription;",
            "Lcom/tds/common/reactor/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableStart:Lcom/tds/common/reactor/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func2<",
            "Lcom/tds/common/reactor/Observable;",
            "Lcom/tds/common/reactor/Observable$OnSubscribe;",
            "Lcom/tds/common/reactor/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableSubscribeError:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onScheduleAction:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/functions/Action0;",
            "Lcom/tds/common/reactor/functions/Action0;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleReturn:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/Subscription;",
            "Lcom/tds/common/reactor/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleSubscribeError:Lcom/tds/common/reactor/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tds/common/reactor/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 78
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->init()V

    .line 79
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clear()V
    .registers 1

    .line 189
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 190
    return-void

    .line 192
    :cond_5
    const/4 v0, 0x0

    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError:Lcom/tds/common/reactor/functions/Action1;

    .line 194
    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableCreate:Lcom/tds/common/reactor/functions/Func1;

    .line 195
    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableStart:Lcom/tds/common/reactor/functions/Func2;

    .line 196
    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableReturn:Lcom/tds/common/reactor/functions/Func1;

    .line 197
    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableSubscribeError:Lcom/tds/common/reactor/functions/Func1;

    .line 199
    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onComputationScheduler:Lcom/tds/common/reactor/functions/Func1;

    .line 200
    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onIOScheduler:Lcom/tds/common/reactor/functions/Func1;

    .line 201
    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onNewThreadScheduler:Lcom/tds/common/reactor/functions/Func1;

    .line 203
    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onScheduleAction:Lcom/tds/common/reactor/functions/Func1;

    .line 204
    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onGenericScheduledExecutorService:Lcom/tds/common/reactor/functions/Func0;

    .line 205
    return-void
.end method

.method public static clearAssemblyTracking()V
    .registers 1

    .line 733
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 734
    return-void

    .line 736
    :cond_5
    const/4 v0, 0x0

    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableCreate:Lcom/tds/common/reactor/functions/Func1;

    .line 737
    return-void
.end method

.method public static enableAssemblyTracking()V
    .registers 1

    .line 746
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 747
    return-void

    .line 750
    :cond_5
    new-instance v0, Lcom/tds/common/reactor/plugins/RxJavaHooks$8;

    invoke-direct {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks$8;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableCreate:Lcom/tds/common/reactor/functions/Func1;

    .line 756
    return-void
.end method

.method public static getOnCompletableSubscribeError()Lcom/tds/common/reactor/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 583
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onCompletableSubscribeError:Lcom/tds/common/reactor/functions/Func1;

    return-object v0
.end method

.method public static getOnComputationScheduler()Lcom/tds/common/reactor/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            ">;"
        }
    .end annotation

    .line 623
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onComputationScheduler:Lcom/tds/common/reactor/functions/Func1;

    return-object v0
.end method

.method public static getOnError()Lcom/tds/common/reactor/functions/Action1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 635
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError:Lcom/tds/common/reactor/functions/Action1;

    return-object v0
.end method

.method public static getOnGenericScheduledExecutorService()Lcom/tds/common/reactor/functions/Func0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/functions/Func0<",
            "+",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation

    .line 785
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onGenericScheduledExecutorService:Lcom/tds/common/reactor/functions/Func0;

    return-object v0
.end method

.method public static getOnIOScheduler()Lcom/tds/common/reactor/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            ">;"
        }
    .end annotation

    .line 646
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onIOScheduler:Lcom/tds/common/reactor/functions/Func1;

    return-object v0
.end method

.method public static getOnNewThreadScheduler()Lcom/tds/common/reactor/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            ">;"
        }
    .end annotation

    .line 657
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onNewThreadScheduler:Lcom/tds/common/reactor/functions/Func1;

    return-object v0
.end method

.method public static getOnObservableCreate()Lcom/tds/common/reactor/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/Observable$OnSubscribe;",
            "Lcom/tds/common/reactor/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation

    .line 669
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableCreate:Lcom/tds/common/reactor/functions/Func1;

    return-object v0
.end method

.method public static getOnObservableReturn()Lcom/tds/common/reactor/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/Subscription;",
            "Lcom/tds/common/reactor/Subscription;",
            ">;"
        }
    .end annotation

    .line 703
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableReturn:Lcom/tds/common/reactor/functions/Func1;

    return-object v0
.end method

.method public static getOnObservableStart()Lcom/tds/common/reactor/functions/Func2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/functions/Func2<",
            "Lcom/tds/common/reactor/Observable;",
            "Lcom/tds/common/reactor/Observable$OnSubscribe;",
            "Lcom/tds/common/reactor/Observable$OnSubscribe;",
            ">;"
        }
    .end annotation

    .line 692
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableStart:Lcom/tds/common/reactor/functions/Func2;

    return-object v0
.end method

.method public static getOnObservableSubscribeError()Lcom/tds/common/reactor/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 612
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableSubscribeError:Lcom/tds/common/reactor/functions/Func1;

    return-object v0
.end method

.method public static getOnScheduleAction()Lcom/tds/common/reactor/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/functions/Action0;",
            "Lcom/tds/common/reactor/functions/Action0;",
            ">;"
        }
    .end annotation

    .line 680
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onScheduleAction:Lcom/tds/common/reactor/functions/Func1;

    return-object v0
.end method

.method public static getOnSingleReturn()Lcom/tds/common/reactor/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/Subscription;",
            "Lcom/tds/common/reactor/Subscription;",
            ">;"
        }
    .end annotation

    .line 714
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onSingleReturn:Lcom/tds/common/reactor/functions/Func1;

    return-object v0
.end method

.method public static getOnSingleSubscribeError()Lcom/tds/common/reactor/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 554
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onSingleSubscribeError:Lcom/tds/common/reactor/functions/Func1;

    return-object v0
.end method

.method static init()V
    .registers 1

    .line 92
    new-instance v0, Lcom/tds/common/reactor/plugins/RxJavaHooks$1;

    invoke-direct {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks$1;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError:Lcom/tds/common/reactor/functions/Action1;

    .line 99
    new-instance v0, Lcom/tds/common/reactor/plugins/RxJavaHooks$2;

    invoke-direct {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks$2;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableStart:Lcom/tds/common/reactor/functions/Func2;

    .line 106
    new-instance v0, Lcom/tds/common/reactor/plugins/RxJavaHooks$3;

    invoke-direct {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks$3;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableReturn:Lcom/tds/common/reactor/functions/Func1;

    .line 113
    new-instance v0, Lcom/tds/common/reactor/plugins/RxJavaHooks$4;

    invoke-direct {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks$4;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onScheduleAction:Lcom/tds/common/reactor/functions/Func1;

    .line 120
    new-instance v0, Lcom/tds/common/reactor/plugins/RxJavaHooks$5;

    invoke-direct {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks$5;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableSubscribeError:Lcom/tds/common/reactor/functions/Func1;

    .line 127
    new-instance v0, Lcom/tds/common/reactor/plugins/RxJavaHooks$6;

    invoke-direct {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks$6;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableLift:Lcom/tds/common/reactor/functions/Func1;

    .line 135
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->initCreate()V

    .line 136
    return-void
.end method

.method static initCreate()V
    .registers 1

    .line 140
    new-instance v0, Lcom/tds/common/reactor/plugins/RxJavaHooks$7;

    invoke-direct {v0}, Lcom/tds/common/reactor/plugins/RxJavaHooks$7;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableCreate:Lcom/tds/common/reactor/functions/Func1;

    .line 146
    return-void
.end method

.method public static isLockdown()Z
    .registers 1

    .line 219
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    return v0
.end method

.method public static lockdown()V
    .registers 1

    .line 211
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    .line 212
    return-void
.end method

.method public static onComputationScheduler(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 3
    .param p0, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;

    .line 273
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onComputationScheduler:Lcom/tds/common/reactor/functions/Func1;

    .line 274
    .local v0, "f":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/schedulers/Scheduler;Lcom/tds/common/reactor/schedulers/Scheduler;>;"
    if-eqz v0, :cond_b

    .line 275
    invoke-interface {v0, p0}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/reactor/schedulers/Scheduler;

    return-object v1

    .line 277
    :cond_b
    return-object p0
.end method

.method public static onCreate(Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable$OnSubscribe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;)",
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;"
        }
    .end annotation

    .line 260
    .local p0, "onSubscribe":Lcom/tds/common/reactor/Observable$OnSubscribe;, "Lcom/tds/common/reactor/Observable$OnSubscribe<TT;>;"
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableCreate:Lcom/tds/common/reactor/functions/Func1;

    .line 261
    .local v0, "f":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/Observable$OnSubscribe;Lcom/tds/common/reactor/Observable$OnSubscribe;>;"
    if-eqz v0, :cond_b

    .line 262
    invoke-interface {v0, p0}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/reactor/Observable$OnSubscribe;

    return-object v1

    .line 264
    :cond_b
    return-object p0
.end method

.method public static onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 226
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError:Lcom/tds/common/reactor/functions/Action1;

    .line 227
    .local v0, "f":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_2b

    .line 229
    :try_start_4
    invoke-interface {v0, p0}, Lcom/tds/common/reactor/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 230
    return-void

    .line 231
    :catchall_8
    move-exception v1

    .line 237
    .local v1, "pluginException":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The onError handler threw an Exception. It shouldn\'t. => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 240
    invoke-static {v1}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->signalUncaught(Ljava/lang/Throwable;)V

    .line 243
    .end local v1    # "pluginException":Ljava/lang/Throwable;
    :cond_2b
    invoke-static {p0}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->signalUncaught(Ljava/lang/Throwable;)V

    .line 244
    return-void
.end method

.method public static onIOScheduler(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 3
    .param p0, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;

    .line 286
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onIOScheduler:Lcom/tds/common/reactor/functions/Func1;

    .line 287
    .local v0, "f":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/schedulers/Scheduler;Lcom/tds/common/reactor/schedulers/Scheduler;>;"
    if-eqz v0, :cond_b

    .line 288
    invoke-interface {v0, p0}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/reactor/schedulers/Scheduler;

    return-object v1

    .line 290
    :cond_b
    return-object p0
.end method

.method public static onNewThreadScheduler(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 3
    .param p0, "scheduler"    # Lcom/tds/common/reactor/schedulers/Scheduler;

    .line 299
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onNewThreadScheduler:Lcom/tds/common/reactor/functions/Func1;

    .line 300
    .local v0, "f":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/schedulers/Scheduler;Lcom/tds/common/reactor/schedulers/Scheduler;>;"
    if-eqz v0, :cond_b

    .line 301
    invoke-interface {v0, p0}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/reactor/schedulers/Scheduler;

    return-object v1

    .line 303
    :cond_b
    return-object p0
.end method

.method public static onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3
    .param p0, "error"    # Ljava/lang/Throwable;

    .line 355
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableSubscribeError:Lcom/tds/common/reactor/functions/Func1;

    .line 356
    .local v0, "f":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_b

    .line 357
    invoke-interface {v0, p0}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    .line 359
    :cond_b
    return-object p0
.end method

.method public static onObservableLift(Lcom/tds/common/reactor/Observable$Operator;)Lcom/tds/common/reactor/Observable$Operator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Observable$Operator<",
            "TR;TT;>;)",
            "Lcom/tds/common/reactor/Observable$Operator<",
            "TR;TT;>;"
        }
    .end annotation

    .line 174
    .local p0, "operator":Lcom/tds/common/reactor/Observable$Operator;, "Lcom/tds/common/reactor/Observable$Operator<TR;TT;>;"
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableLift:Lcom/tds/common/reactor/functions/Func1;

    .line 175
    .local v0, "f":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/Observable$Operator;Lcom/tds/common/reactor/Observable$Operator;>;"
    if-eqz v0, :cond_b

    .line 176
    invoke-interface {v0, p0}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/reactor/Observable$Operator;

    return-object v1

    .line 178
    :cond_b
    return-object p0
.end method

.method public static onObservableReturn(Lcom/tds/common/reactor/Subscription;)Lcom/tds/common/reactor/Subscription;
    .registers 3
    .param p0, "subscription"    # Lcom/tds/common/reactor/Subscription;

    .line 342
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableReturn:Lcom/tds/common/reactor/functions/Func1;

    .line 343
    .local v0, "f":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/Subscription;Lcom/tds/common/reactor/Subscription;>;"
    if-eqz v0, :cond_b

    .line 344
    invoke-interface {v0, p0}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/reactor/Subscription;

    return-object v1

    .line 346
    :cond_b
    return-object p0
.end method

.method public static onObservableStart(Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/Observable$OnSubscribe;)Lcom/tds/common/reactor/Observable$OnSubscribe;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tds/common/reactor/Observable<",
            "TT;>;",
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;)",
            "Lcom/tds/common/reactor/Observable$OnSubscribe<",
            "TT;>;"
        }
    .end annotation

    .line 329
    .local p0, "instance":Lcom/tds/common/reactor/Observable;, "Lcom/tds/common/reactor/Observable<TT;>;"
    .local p1, "onSubscribe":Lcom/tds/common/reactor/Observable$OnSubscribe;, "Lcom/tds/common/reactor/Observable$OnSubscribe<TT;>;"
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableStart:Lcom/tds/common/reactor/functions/Func2;

    .line 330
    .local v0, "f":Lcom/tds/common/reactor/functions/Func2;, "Lcom/tds/common/reactor/functions/Func2<Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/Observable$OnSubscribe;Lcom/tds/common/reactor/Observable$OnSubscribe;>;"
    if-eqz v0, :cond_b

    .line 331
    invoke-interface {v0, p0, p1}, Lcom/tds/common/reactor/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/reactor/Observable$OnSubscribe;

    return-object v1

    .line 333
    :cond_b
    return-object p1
.end method

.method public static onScheduledAction(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/functions/Action0;
    .registers 3
    .param p0, "action"    # Lcom/tds/common/reactor/functions/Action0;

    .line 313
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onScheduleAction:Lcom/tds/common/reactor/functions/Func1;

    .line 314
    .local v0, "f":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/functions/Action0;>;"
    if-eqz v0, :cond_b

    .line 315
    invoke-interface {v0, p0}, Lcom/tds/common/reactor/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/reactor/functions/Action0;

    return-object v1

    .line 317
    :cond_b
    return-object p0
.end method

.method public static reset()V
    .registers 1

    .line 154
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 155
    return-void

    .line 157
    :cond_5
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->init()V

    .line 159
    const/4 v0, 0x0

    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onComputationScheduler:Lcom/tds/common/reactor/functions/Func1;

    .line 160
    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onIOScheduler:Lcom/tds/common/reactor/functions/Func1;

    .line 161
    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onNewThreadScheduler:Lcom/tds/common/reactor/functions/Func1;

    .line 162
    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onGenericScheduledExecutorService:Lcom/tds/common/reactor/functions/Func0;

    .line 163
    return-void
.end method

.method public static resetAssemblyTracking()V
    .registers 1

    .line 722
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 723
    return-void

    .line 726
    :cond_5
    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaHooks;->initCreate()V

    .line 727
    return-void
.end method

.method public static setOnCompletableSubscribeError(Lcom/tds/common/reactor/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 569
    .local p0, "onCompletableSubscribeError":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 570
    return-void

    .line 572
    :cond_5
    sput-object p0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onCompletableSubscribeError:Lcom/tds/common/reactor/functions/Func1;

    .line 573
    return-void
.end method

.method public static setOnComputationScheduler(Lcom/tds/common/reactor/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 409
    .local p0, "onComputationScheduler":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/schedulers/Scheduler;Lcom/tds/common/reactor/schedulers/Scheduler;>;"
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 410
    return-void

    .line 412
    :cond_5
    sput-object p0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onComputationScheduler:Lcom/tds/common/reactor/functions/Func1;

    .line 413
    return-void
.end method

.method public static setOnError(Lcom/tds/common/reactor/functions/Action1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 372
    .local p0, "onError":Lcom/tds/common/reactor/functions/Action1;, "Lcom/tds/common/reactor/functions/Action1<Ljava/lang/Throwable;>;"
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 373
    return-void

    .line 375
    :cond_5
    sput-object p0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onError:Lcom/tds/common/reactor/functions/Action1;

    .line 376
    return-void
.end method

.method public static setOnGenericScheduledExecutorService(Lcom/tds/common/reactor/functions/Func0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func0<",
            "+",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 771
    .local p0, "factory":Lcom/tds/common/reactor/functions/Func0;, "Lcom/tds/common/reactor/functions/Func0<+Ljava/util/concurrent/ScheduledExecutorService;>;"
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 772
    return-void

    .line 774
    :cond_5
    sput-object p0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onGenericScheduledExecutorService:Lcom/tds/common/reactor/functions/Func0;

    .line 775
    return-void
.end method

.method public static setOnIOScheduler(Lcom/tds/common/reactor/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 427
    .local p0, "onIOScheduler":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/schedulers/Scheduler;Lcom/tds/common/reactor/schedulers/Scheduler;>;"
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 428
    return-void

    .line 430
    :cond_5
    sput-object p0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onIOScheduler:Lcom/tds/common/reactor/functions/Func1;

    .line 431
    return-void
.end method

.method public static setOnNewThreadScheduler(Lcom/tds/common/reactor/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            "Lcom/tds/common/reactor/schedulers/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 445
    .local p0, "onNewThreadScheduler":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/schedulers/Scheduler;Lcom/tds/common/reactor/schedulers/Scheduler;>;"
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 446
    return-void

    .line 448
    :cond_5
    sput-object p0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onNewThreadScheduler:Lcom/tds/common/reactor/functions/Func1;

    .line 449
    return-void
.end method

.method public static setOnObservableCreate(Lcom/tds/common/reactor/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/Observable$OnSubscribe;",
            "Lcom/tds/common/reactor/Observable$OnSubscribe;",
            ">;)V"
        }
    .end annotation

    .line 391
    .local p0, "onObservableCreate":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/Observable$OnSubscribe;Lcom/tds/common/reactor/Observable$OnSubscribe;>;"
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 392
    return-void

    .line 394
    :cond_5
    sput-object p0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableCreate:Lcom/tds/common/reactor/functions/Func1;

    .line 395
    return-void
.end method

.method public static setOnObservableReturn(Lcom/tds/common/reactor/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/Subscription;",
            "Lcom/tds/common/reactor/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 503
    .local p0, "onObservableReturn":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/Subscription;Lcom/tds/common/reactor/Subscription;>;"
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 504
    return-void

    .line 506
    :cond_5
    sput-object p0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableReturn:Lcom/tds/common/reactor/functions/Func1;

    .line 507
    return-void
.end method

.method public static setOnObservableStart(Lcom/tds/common/reactor/functions/Func2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func2<",
            "Lcom/tds/common/reactor/Observable;",
            "Lcom/tds/common/reactor/Observable$OnSubscribe;",
            "Lcom/tds/common/reactor/Observable$OnSubscribe;",
            ">;)V"
        }
    .end annotation

    .line 484
    .local p0, "onObservableStart":Lcom/tds/common/reactor/functions/Func2;, "Lcom/tds/common/reactor/functions/Func2<Lcom/tds/common/reactor/Observable;Lcom/tds/common/reactor/Observable$OnSubscribe;Lcom/tds/common/reactor/Observable$OnSubscribe;>;"
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 485
    return-void

    .line 487
    :cond_5
    sput-object p0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableStart:Lcom/tds/common/reactor/functions/Func2;

    .line 488
    return-void
.end method

.method public static setOnObservableSubscribeError(Lcom/tds/common/reactor/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 598
    .local p0, "onObservableSubscribeError":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 599
    return-void

    .line 601
    :cond_5
    sput-object p0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onObservableSubscribeError:Lcom/tds/common/reactor/functions/Func1;

    .line 602
    return-void
.end method

.method public static setOnScheduleAction(Lcom/tds/common/reactor/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/functions/Action0;",
            "Lcom/tds/common/reactor/functions/Action0;",
            ">;)V"
        }
    .end annotation

    .line 463
    .local p0, "onScheduleAction":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/functions/Action0;Lcom/tds/common/reactor/functions/Action0;>;"
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 464
    return-void

    .line 466
    :cond_5
    sput-object p0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onScheduleAction:Lcom/tds/common/reactor/functions/Func1;

    .line 467
    return-void
.end method

.method public static setOnSingleReturn(Lcom/tds/common/reactor/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Lcom/tds/common/reactor/Subscription;",
            "Lcom/tds/common/reactor/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 522
    .local p0, "onSingleReturn":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Lcom/tds/common/reactor/Subscription;Lcom/tds/common/reactor/Subscription;>;"
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 523
    return-void

    .line 525
    :cond_5
    sput-object p0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onSingleReturn:Lcom/tds/common/reactor/functions/Func1;

    .line 526
    return-void
.end method

.method public static setOnSingleSubscribeError(Lcom/tds/common/reactor/functions/Func1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/reactor/functions/Func1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 540
    .local p0, "onSingleSubscribeError":Lcom/tds/common/reactor/functions/Func1;, "Lcom/tds/common/reactor/functions/Func1<Ljava/lang/Throwable;Ljava/lang/Throwable;>;"
    sget-boolean v0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->lockdown:Z

    if-eqz v0, :cond_5

    .line 541
    return-void

    .line 543
    :cond_5
    sput-object p0, Lcom/tds/common/reactor/plugins/RxJavaHooks;->onSingleSubscribeError:Lcom/tds/common/reactor/functions/Func1;

    .line 544
    return-void
.end method

.method static signalUncaught(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 247
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 248
    .local v0, "current":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 249
    .local v1, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 250
    return-void
.end method
