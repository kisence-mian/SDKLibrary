.class public Lrx/plugins/RxJavaSchedulersHook;
.super Ljava/lang/Object;
.source "RxJavaSchedulersHook.java"


# static fields
.field private static final DEFAULT_INSTANCE:Lrx/plugins/RxJavaSchedulersHook;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lrx/plugins/RxJavaSchedulersHook;

    invoke-direct {v0}, Lrx/plugins/RxJavaSchedulersHook;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaSchedulersHook;->DEFAULT_INSTANCE:Lrx/plugins/RxJavaSchedulersHook;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createComputationScheduler()Lrx/Scheduler;
    .registers 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxComputationScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/plugins/RxJavaSchedulersHook;->createComputationScheduler(Ljava/util/concurrent/ThreadFactory;)Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static createComputationScheduler(Ljava/util/concurrent/ThreadFactory;)Lrx/Scheduler;
    .registers 3
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 64
    if-nez p0, :cond_a

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_a
    new-instance v0, Lrx/internal/schedulers/EventLoopsScheduler;

    invoke-direct {v0, p0}, Lrx/internal/schedulers/EventLoopsScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static createIoScheduler()Lrx/Scheduler;
    .registers 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxIoScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/plugins/RxJavaSchedulersHook;->createIoScheduler(Ljava/util/concurrent/ThreadFactory;)Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static createIoScheduler(Ljava/util/concurrent/ThreadFactory;)Lrx/Scheduler;
    .registers 3
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 87
    if-nez p0, :cond_a

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_a
    new-instance v0, Lrx/internal/schedulers/CachedThreadScheduler;

    invoke-direct {v0, p0}, Lrx/internal/schedulers/CachedThreadScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static createNewThreadScheduler()Lrx/Scheduler;
    .registers 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string v1, "RxNewThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/plugins/RxJavaSchedulersHook;->createNewThreadScheduler(Ljava/util/concurrent/ThreadFactory;)Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static createNewThreadScheduler(Ljava/util/concurrent/ThreadFactory;)Lrx/Scheduler;
    .registers 3
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 110
    if-nez p0, :cond_a

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "threadFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_a
    new-instance v0, Lrx/internal/schedulers/NewThreadScheduler;

    invoke-direct {v0, p0}, Lrx/internal/schedulers/NewThreadScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static getDefaultInstance()Lrx/plugins/RxJavaSchedulersHook;
    .registers 1

    .prologue
    .line 159
    sget-object v0, Lrx/plugins/RxJavaSchedulersHook;->DEFAULT_INSTANCE:Lrx/plugins/RxJavaSchedulersHook;

    return-object v0
.end method


# virtual methods
.method public getComputationScheduler()Lrx/Scheduler;
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIOScheduler()Lrx/Scheduler;
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNewThreadScheduler()Lrx/Scheduler;
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSchedule(Lrx/functions/Action0;)Lrx/functions/Action0;
    .registers 2
    .param p1, "action"    # Lrx/functions/Action0;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    return-object p1
.end method
