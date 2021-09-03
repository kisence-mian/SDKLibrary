.class public Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# static fields
.field private static final INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mainThreadScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;->getInstance()Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;->getSchedulersHook()Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;

    move-result-object v0

    .line 32
    .local v0, "hook":Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;
    invoke-virtual {v0}, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;->getMainThreadScheduler()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v1

    .line 33
    .local v1, "main":Lcom/tds/common/reactor/schedulers/Scheduler;
    if-eqz v1, :cond_14

    .line 34
    iput-object v1, p0, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->mainThreadScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    goto :goto_1f

    .line 36
    :cond_14
    new-instance v2, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->mainThreadScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    .line 38
    :goto_1f
    return-void
.end method

.method public static from(Landroid/os/Looper;)Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 3
    .param p0, "looper"    # Landroid/os/Looper;

    .line 47
    if-eqz p0, :cond_8

    .line 48
    new-instance v0, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler;

    invoke-direct {v0, p0}, Lcom/tds/common/reactor/rxandroid/schedulers/LooperScheduler;-><init>(Landroid/os/Looper;)V

    return-object v0

    .line 47
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "looper == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInstance()Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;
    .registers 3

    .line 18
    :goto_0
    sget-object v0, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;

    .line 19
    .local v1, "current":Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;
    if-eqz v1, :cond_b

    .line 20
    return-object v1

    .line 22
    :cond_b
    new-instance v2, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;

    invoke-direct {v2}, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;-><init>()V

    move-object v1, v2

    .line 23
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 24
    return-object v1

    .line 26
    .end local v1    # "current":Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;
    :cond_19
    goto :goto_0
.end method

.method public static mainThread()Lcom/tds/common/reactor/schedulers/Scheduler;
    .registers 1

    .line 42
    invoke-static {}, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->getInstance()Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;

    move-result-object v0

    iget-object v0, v0, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->mainThreadScheduler:Lcom/tds/common/reactor/schedulers/Scheduler;

    return-object v0
.end method

.method public static reset()V
    .registers 2

    .line 57
    sget-object v0, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 58
    return-void
.end method
