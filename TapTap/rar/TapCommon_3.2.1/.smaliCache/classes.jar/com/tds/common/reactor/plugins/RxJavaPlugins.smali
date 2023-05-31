.class public Lcom/tds/common/reactor/plugins/RxJavaPlugins;
.super Ljava/lang/Object;
.source "RxJavaPlugins.java"


# static fields
.field static final DEFAULT_ERROR_HANDLER:Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;

.field private static final INSTANCE:Lcom/tds/common/reactor/plugins/RxJavaPlugins;


# instance fields
.field private final errorHandler:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHook;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;

    invoke-direct {v0}, Lcom/tds/common/reactor/plugins/RxJavaPlugins;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->INSTANCE:Lcom/tds/common/reactor/plugins/RxJavaPlugins;

    .line 13
    new-instance v0, Lcom/tds/common/reactor/plugins/RxJavaPlugins$1;

    invoke-direct {v0}, Lcom/tds/common/reactor/plugins/RxJavaPlugins$1;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->DEFAULT_ERROR_HANDLER:Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static getInstance()Lcom/tds/common/reactor/plugins/RxJavaPlugins;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->INSTANCE:Lcom/tds/common/reactor/plugins/RxJavaPlugins;

    return-object v0
.end method


# virtual methods
.method public getErrorHandler()Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 32
    iget-object v0, p0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    sget-object v2, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->DEFAULT_ERROR_HANDLER:Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    :cond_10
    iget-object v0, p0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/plugins/RxJavaErrorHandler;

    return-object v0
.end method

.method public getObservableExecutionHook()Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHook;
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 39
    iget-object v0, p0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHookDefault;->getInstance()Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHook;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    :cond_12
    iget-object v0, p0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/plugins/RxJavaObservableExecutionHook;

    return-object v0
.end method

.method public getSchedulersHook()Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 46
    iget-object v0, p0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {}, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;->getDefaultInstance()Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    :cond_12
    iget-object v0, p0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/plugins/RxJavaSchedulersHook;

    return-object v0
.end method

.method public reset()V
    .registers 4

    .line 17
    sget-object v0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->INSTANCE:Lcom/tds/common/reactor/plugins/RxJavaPlugins;

    iget-object v1, v0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18
    iget-object v1, v0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 19
    iget-object v0, v0, Lcom/tds/common/reactor/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 20
    return-void
.end method
