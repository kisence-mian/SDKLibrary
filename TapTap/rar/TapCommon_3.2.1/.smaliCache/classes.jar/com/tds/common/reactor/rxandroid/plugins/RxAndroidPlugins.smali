.class public Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;
.super Ljava/lang/Object;
.source "RxAndroidPlugins.java"


# static fields
.field private static final INSTANCE:Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;


# instance fields
.field private final schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    new-instance v0, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;

    invoke-direct {v0}, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;->INSTANCE:Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;
    .registers 1

    .line 9
    sget-object v0, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;->INSTANCE:Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;

    return-object v0
.end method


# virtual methods
.method public getSchedulersHook()Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 36
    iget-object v0, p0, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {}, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;->getDefaultInstance()Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    :cond_12
    iget-object v0, p0, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;

    return-object v0
.end method

.method public registerSchedulersHook(Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;)V
    .registers 5
    .param p1, "impl"    # Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidSchedulersHook;

    .line 51
    iget-object v0, p0, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 55
    return-void

    .line 52
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another strategy was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/tds/common/reactor/rxandroid/plugins/RxAndroidPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 24
    return-void
.end method
