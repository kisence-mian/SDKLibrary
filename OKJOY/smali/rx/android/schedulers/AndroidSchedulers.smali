.class public final Lrx/android/schedulers/AndroidSchedulers;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# static fields
.field private static final INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/android/schedulers/AndroidSchedulers;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mainThreadScheduler:Lrx/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lrx/android/schedulers/AndroidSchedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lrx/android/plugins/RxAndroidPlugins;->getInstance()Lrx/android/plugins/RxAndroidPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/android/plugins/RxAndroidPlugins;->getSchedulersHook()Lrx/android/plugins/RxAndroidSchedulersHook;

    move-result-object v0

    .line 47
    .local v0, "hook":Lrx/android/plugins/RxAndroidSchedulersHook;
    invoke-virtual {v0}, Lrx/android/plugins/RxAndroidSchedulersHook;->getMainThreadScheduler()Lrx/Scheduler;

    move-result-object v1

    .line 48
    .local v1, "main":Lrx/Scheduler;
    if-eqz v1, :cond_14

    .line 49
    iput-object v1, p0, Lrx/android/schedulers/AndroidSchedulers;->mainThreadScheduler:Lrx/Scheduler;

    .line 53
    :goto_13
    return-void

    .line 51
    :cond_14
    new-instance v2, Lrx/android/schedulers/LooperScheduler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lrx/android/schedulers/LooperScheduler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lrx/android/schedulers/AndroidSchedulers;->mainThreadScheduler:Lrx/Scheduler;

    goto :goto_13
.end method

.method public static from(Landroid/os/Looper;)Lrx/Scheduler;
    .registers 3
    .param p0, "looper"    # Landroid/os/Looper;

    .prologue
    .line 62
    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "looper == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_a
    new-instance v0, Lrx/android/schedulers/LooperScheduler;

    invoke-direct {v0, p0}, Lrx/android/schedulers/LooperScheduler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private static getInstance()Lrx/android/schedulers/AndroidSchedulers;
    .registers 3

    .prologue
    .line 33
    .local v0, "current":Lrx/android/schedulers/AndroidSchedulers;
    :cond_0
    sget-object v1, Lrx/android/schedulers/AndroidSchedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "current":Lrx/android/schedulers/AndroidSchedulers;
    check-cast v0, Lrx/android/schedulers/AndroidSchedulers;

    .line 34
    .restart local v0    # "current":Lrx/android/schedulers/AndroidSchedulers;
    if-eqz v0, :cond_b

    .line 39
    :goto_a
    return-object v0

    .line 37
    :cond_b
    new-instance v0, Lrx/android/schedulers/AndroidSchedulers;

    .end local v0    # "current":Lrx/android/schedulers/AndroidSchedulers;
    invoke-direct {v0}, Lrx/android/schedulers/AndroidSchedulers;-><init>()V

    .line 38
    .restart local v0    # "current":Lrx/android/schedulers/AndroidSchedulers;
    sget-object v1, Lrx/android/schedulers/AndroidSchedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_a
.end method

.method public static mainThread()Lrx/Scheduler;
    .registers 1

    .prologue
    .line 57
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->getInstance()Lrx/android/schedulers/AndroidSchedulers;

    move-result-object v0

    iget-object v0, v0, Lrx/android/schedulers/AndroidSchedulers;->mainThreadScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method public static reset()V
    .registers 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lrx/android/schedulers/AndroidSchedulers;->INSTANCE:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 74
    return-void
.end method
