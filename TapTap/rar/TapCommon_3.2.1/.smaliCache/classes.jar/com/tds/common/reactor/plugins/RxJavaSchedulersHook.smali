.class public Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;
.super Ljava/lang/Object;
.source "RxJavaSchedulersHook.java"


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;

    invoke-direct {v0}, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;->DEFAULT_INSTANCE:Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createComputationScheduler()Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 2

    .line 49
    new-instance v0, Lcom/tds/common/reactor/util/RxThreadFactory;

    const-string v1, "RxComputationScheduler-"

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;->createComputationScheduler(Ljava/util/concurrent/ThreadFactory;)Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static createComputationScheduler(Ljava/util/concurrent/ThreadFactory;)Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 3
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 53
    if-eqz p0, :cond_8

    .line 56
    new-instance v0, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/schedulers/EventLoopsScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0

    .line 54
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createIoScheduler()Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 2

    .line 61
    new-instance v0, Lcom/tds/common/reactor/util/RxThreadFactory;

    const-string v1, "RxIoScheduler-"

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;->createIoScheduler(Ljava/util/concurrent/ThreadFactory;)Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static createIoScheduler(Ljava/util/concurrent/ThreadFactory;)Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 3
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 65
    if-eqz p0, :cond_8

    .line 68
    new-instance v0, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/schedulers/CachedThreadScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0

    .line 66
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createNewThreadScheduler()Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 2

    .line 84
    new-instance v0, Lcom/tds/common/reactor/util/RxThreadFactory;

    const-string v1, "RxNewThreadScheduler-"

    invoke-direct {v0, v1}, Lcom/tds/common/reactor/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;->createNewThreadScheduler(Ljava/util/concurrent/ThreadFactory;)Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static createNewThreadScheduler(Ljava/util/concurrent/ThreadFactory;)Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 3
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 88
    if-eqz p0, :cond_8

    .line 91
    new-instance v0, Lcom/tds/common/reactor/internal/schedulers/NewThreadScheduler;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/internal/schedulers/NewThreadScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0

    .line 89
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultInstance()Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;
    .registers 1

    .line 106
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;->DEFAULT_INSTANCE:Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;

    return-object v0
.end method


# virtual methods
.method public getComputationScheduler()Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 2

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIOScheduler()Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 2

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNewThreadScheduler()Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 2

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSchedule(Lcom/tds/common/reactor/functions/Action0;)Lcom/tds/common/reactor/functions/Action0;
    .registers 2
    .param p1, "action"    # Lcom/tds/common/reactor/functions/Action0;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    return-object p1
.end method
