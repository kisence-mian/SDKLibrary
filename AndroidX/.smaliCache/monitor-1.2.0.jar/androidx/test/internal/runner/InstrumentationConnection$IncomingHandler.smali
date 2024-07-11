.class Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;
.super Landroid/os/Handler;
.source "InstrumentationConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/InstrumentationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncomingHandler"
.end annotation


# instance fields
.field private final latches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field messengerHandler:Landroid/os/Messenger;

.field otherInstrumentations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field typedClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/os/Messenger;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "looper"
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 309
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->messengerHandler:Landroid/os/Messenger;

    .line 314
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->otherInstrumentations:Ljava/util/Set;

    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->latches:Ljava/util/Map;

    .line 329
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq v0, p1, :cond_2c

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq v0, p1, :cond_2c

    .line 334
    return-void

    .line 330
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This handler should not be using the main thread looper nor the instrumentation thread looper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;)V
    .registers 1
    .param p0, "x0"    # Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 307
    invoke-direct {p0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->doDie()V

    return-void
.end method

.method static synthetic access$100(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;
    .param p1, "x1"    # Ljava/util/concurrent/Callable;

    .line 307
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->runSyncTask(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .param p0, "x0"    # Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Ljava/util/concurrent/CountDownLatch;

    .line 307
    invoke-direct {p0, p1, p2}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->associateLatch(Ljava/util/UUID;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;)V
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;
    .param p1, "x1"    # Ljava/util/UUID;

    .line 307
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->disassociateLatch(Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .param p0, "x0"    # Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 307
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->getClientsForType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    .line 307
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->latches:Ljava/util/Map;

    return-object v0
.end method

.method private associateLatch(Ljava/util/UUID;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .param p1, "latchId"    # Ljava/util/UUID;
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "latchId",
            "latch"
        }
    .end annotation

    .line 454
    new-instance v0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$1;

    invoke-direct {v0, p0, p1, p2}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$1;-><init>(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->runSyncTask(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 462
    return-void
.end method

.method private clientsRegistrationFromBundle(Landroid/os/Bundle;Z)V
    .registers 12
    .param p1, "clientsBundle"    # Landroid/os/Bundle;
    .param p2, "shouldRegister"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clientsBundle",
            "shouldRegister"
        }
    .end annotation

    .line 587
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InstrConnection"

    const-string v3, "clientsRegistrationFromBundle called"

    invoke-static {v2, v3, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    if-nez p1, :cond_12

    .line 590
    const-string v0, "The client bundle is null, ignoring..."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void

    .line 594
    :cond_12
    const-string v1, "instr_clients"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 596
    .local v1, "clientTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_20

    .line 597
    const-string v0, "No clients found in the given bundle"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void

    .line 601
    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 602
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 603
    .local v4, "clientArray":[Landroid/os/Parcelable;
    if-eqz v4, :cond_52

    .line 604
    array-length v5, v4

    const/4 v6, 0x0

    :goto_3c
    if-ge v6, v5, :cond_52

    aget-object v7, v4, v6

    .line 605
    .local v7, "client":Landroid/os/Parcelable;
    if-eqz p2, :cond_49

    .line 606
    move-object v8, v7

    check-cast v8, Landroid/os/Messenger;

    invoke-direct {p0, v3, v8}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->registerClient(Ljava/lang/String;Landroid/os/Messenger;)V

    goto :goto_4f

    .line 608
    :cond_49
    move-object v8, v7

    check-cast v8, Landroid/os/Messenger;

    invoke-direct {p0, v3, v8}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->unregisterClient(Ljava/lang/String;Landroid/os/Messenger;)V

    .line 604
    .end local v7    # "client":Landroid/os/Parcelable;
    :goto_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 612
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "clientArray":[Landroid/os/Parcelable;
    :cond_52
    goto :goto_24

    .line 613
    :cond_53
    return-void
.end method

.method private disassociateLatch(Ljava/util/UUID;)V
    .registers 3
    .param p1, "latchId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "latchId"
        }
    .end annotation

    .line 465
    new-instance v0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$2;

    invoke-direct {v0, p0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$2;-><init>(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/util/UUID;)V

    invoke-direct {p0, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->runSyncTask(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 473
    return-void
.end method

.method private doDie()V
    .registers 6

    .line 489
    const-string v0, "InstrConnection"

    const-string v1, "terminating process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageToOtherInstr(ILandroid/os/Bundle;)V

    .line 492
    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->otherInstrumentations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 493
    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 494
    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "quitting looper..."

    invoke-static {v0, v4, v3}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    invoke-virtual {p0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 496
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "finishing instrumentation..."

    invoke-static {v0, v4, v3}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    # getter for: Landroidx/test/internal/runner/InstrumentationConnection;->instrumentation:Landroid/app/Instrumentation;
    invoke-static {}, Landroidx/test/internal/runner/InstrumentationConnection;->access$600()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->finish(ILandroid/os/Bundle;)V

    .line 498
    # setter for: Landroidx/test/internal/runner/InstrumentationConnection;->instrumentation:Landroid/app/Instrumentation;
    invoke-static {v2}, Landroidx/test/internal/runner/InstrumentationConnection;->access$602(Landroid/app/Instrumentation;)Landroid/app/Instrumentation;

    .line 499
    # setter for: Landroidx/test/internal/runner/InstrumentationConnection;->activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;
    invoke-static {v2}, Landroidx/test/internal/runner/InstrumentationConnection;->access$502(Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;)Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    .line 500
    return-void
.end method

.method private getClientsForType(Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation

    .line 503
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$3;

    invoke-direct {v1, p0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler$3;-><init>(Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 511
    .local v0, "associationTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/util/Set<Landroid/os/Messenger;>;>;"
    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->post(Ljava/lang/Runnable;)Z

    .line 514
    :try_start_d
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_13} :catch_1f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_13} :catch_14

    return-object v1

    .line 518
    :catch_14
    move-exception v1

    .line 520
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 515
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1f
    move-exception v1

    .line 517
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private instrBinderDied(Landroid/os/Messenger;)V
    .registers 3
    .param p1, "instrMessenger"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instrMessenger"
        }
    .end annotation

    .line 666
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 667
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 668
    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 669
    return-void
.end method

.method private notifyLatch(Ljava/util/UUID;)V
    .registers 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uuid"
        }
    .end annotation

    .line 446
    if-eqz p1, :cond_16

    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->latches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 447
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->latches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_3c

    .line 449
    :cond_16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Latch not found "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstrConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_3c
    return-void
.end method

.method private registerClient(Ljava/lang/String;Landroid/os/Messenger;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "client"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "client"
        }
    .end annotation

    .line 616
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "InstrConnection"

    const-string v2, "registerClient called with type = [%s] client = [%s]"

    invoke-static {v1, v2, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    const-string v0, "type cannot be null!"

    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string v0, "client cannot be null!"

    invoke-static {p2, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 623
    .local v0, "clientSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Messenger;>;"
    if-nez v0, :cond_33

    .line 625
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 626
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    return-void

    .line 632
    :cond_33
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 633
    return-void
.end method

.method private runSyncTask(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 6
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

    .line 476
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 477
    .local v0, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->post(Ljava/lang/Runnable;)Z

    .line 480
    :try_start_8
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_c} :catch_18
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    .line 483
    :catch_d
    move-exception v1

    .line 484
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 481
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_18
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private sendMessageToOtherInstr(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "what",
            "data"
        }
    .end annotation

    .line 572
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 573
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 572
    const-string v1, "InstrConnection"

    const-string v2, "sendMessageToOtherInstr() called with: what = [%s], data = [%s]"

    invoke-static {v1, v2, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->otherInstrumentations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 575
    .local v1, "otherInstr":Landroid/os/Messenger;
    invoke-direct {p0, v1, p1, p2}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageWithReply(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 576
    .end local v1    # "otherInstr":Landroid/os/Messenger;
    goto :goto_1a

    .line 577
    :cond_2a
    return-void
.end method

.method private sendMessageWithReply(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    .registers 13
    .param p1, "toMessenger"    # Landroid/os/Messenger;
    .param p2, "what"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "toMessenger",
            "what",
            "data"
        }
    .end annotation

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "sendMessageWithReply type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "InstrConnection"

    invoke-static {v2, v0, v1}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    invoke-virtual {p0, p2}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 538
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->messengerHandler:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 539
    if-eqz p3, :cond_30

    .line 540
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 544
    :cond_30
    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8a

    .line 545
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 547
    .local v1, "clientsBundle":Landroid/os/Bundle;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 548
    .local v3, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "instr_clients"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 549
    iget-object v4, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 550
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/os/Messenger;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 551
    .local v6, "clientType":Ljava/lang/String;
    nop

    .line 552
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    new-array v8, v8, [Landroid/os/Messenger;

    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/Messenger;

    .line 553
    .local v7, "clientArray":[Landroid/os/Messenger;
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 554
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/os/Messenger;>;>;"
    .end local v6    # "clientType":Ljava/lang/String;
    .end local v7    # "clientArray":[Landroid/os/Messenger;
    goto :goto_56

    .line 555
    :cond_87
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 560
    .end local v1    # "clientsBundle":Landroid/os/Bundle;
    .end local v3    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8a
    :try_start_8a
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_8d} :catch_8e

    .line 568
    goto :goto_97

    .line 561
    :catch_8e
    move-exception v1

    .line 565
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "The remote process is terminated unexpectedly"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    invoke-direct {p0, p1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->instrBinderDied(Landroid/os/Messenger;)V

    .line 569
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_97
    return-void
.end method

.method private unregisterClient(Ljava/lang/String;Landroid/os/Messenger;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "client"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "client"
        }
    .end annotation

    .line 636
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "InstrConnection"

    const-string v2, "unregisterClient called with type = [%s] client = [%s]"

    invoke-static {v1, v2, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    const-string v0, "type cannot be null!"

    invoke-static {p1, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    const-string v0, "client cannot be null!"

    invoke-static {p2, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 642
    const-string v0, "There are no registered clients for type: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    :cond_33
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_39
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    return-void

    .line 646
    :cond_3d
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 648
    .local v0, "clientSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/Messenger;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 649
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not unregister client for type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it doesn\'t seem to be registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void

    .line 658
    :cond_72
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 660
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 661
    iget-object v1, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 338
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x1

    const-string v4, "instr_client_msgr"

    const-string v5, "instr_client_type"

    const/4 v6, 0x0

    const-string v7, "InstrConnection"

    packed-switch v0, :pswitch_data_19c

    .line 440
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message code received: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_19b

    .line 436
    :pswitch_2f
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "handleMessage(MSG_PERFORM_CLEANUP_FINISHED)"

    invoke-static {v7, v1, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "instr_uuid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->notifyLatch(Ljava/util/UUID;)V

    .line 438
    goto/16 :goto_19b

    .line 431
    :pswitch_47
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "handleMessage(MSG_PERFORM_CLEANUP)"

    invoke-static {v7, v1, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    # getter for: Landroidx/test/internal/runner/InstrumentationConnection;->instrumentation:Landroid/app/Instrumentation;
    invoke-static {}, Landroidx/test/internal/runner/InstrumentationConnection;->access$600()Landroid/app/Instrumentation;

    move-result-object v0

    # getter for: Landroidx/test/internal/runner/InstrumentationConnection;->activityFinisher:Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;
    invoke-static {}, Landroidx/test/internal/runner/InstrumentationConnection;->access$500()Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 433
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageWithReply(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 434
    goto/16 :goto_19b

    .line 421
    :pswitch_64
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "handleMessage(MSG_REMOTE_CLEANUP_REQUEST)"

    invoke-static {v7, v1, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->otherInstrumentations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 423
    invoke-virtual {p0, v2}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 424
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 425
    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 426
    goto/16 :goto_19b

    .line 428
    .end local v0    # "m":Landroid/os/Message;
    :cond_83
    const/16 v0, 0xb

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageToOtherInstr(ILandroid/os/Bundle;)V

    .line 429
    goto/16 :goto_19b

    .line 408
    :pswitch_8e
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "handleMessage(MSG_UN_REG_CLIENT)"

    invoke-static {v7, v1, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    nop

    .line 412
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 411
    invoke-direct {p0, v0, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->unregisterClient(Ljava/lang/String;Landroid/os/Messenger;)V

    .line 414
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageToOtherInstr(ILandroid/os/Bundle;)V

    .line 415
    goto/16 :goto_19b

    .line 393
    :pswitch_b4
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "handleMessage(MSG_REG_CLIENT)"

    invoke-static {v7, v1, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    nop

    .line 397
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 396
    invoke-direct {p0, v0, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->registerClient(Ljava/lang/String;Landroid/os/Messenger;)V

    .line 399
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageToOtherInstr(ILandroid/os/Bundle;)V

    .line 400
    goto/16 :goto_19b

    .line 387
    :pswitch_da
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "handleMessage(MSG_REMOVE_CLIENTS_IN_BUNDLE)"

    invoke-static {v7, v1, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->clientsRegistrationFromBundle(Landroid/os/Bundle;Z)V

    .line 391
    goto/16 :goto_19b

    .line 380
    :pswitch_ea
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "handleMessage(MSG_ADD_CLIENTS_IN_BUNDLE)"

    invoke-static {v7, v1, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->clientsRegistrationFromBundle(Landroid/os/Bundle;Z)V

    .line 385
    goto/16 :goto_19b

    .line 372
    :pswitch_fa
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "handleMessage(MSG_REMOVE_INSTRUMENTATION)"

    invoke-static {v7, v1, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->otherInstrumentations:Ljava/util/Set;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19b

    .line 376
    const-string v0, "Attempting to remove a non-existent binder!"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19b

    .line 355
    :pswitch_112
    new-array v0, v6, [Ljava/lang/Object;

    const-string v2, "handleMessage(MSG_ADD_INSTRUMENTATION)"

    invoke-static {v7, v2, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->otherInstrumentations:Ljava/util/Set;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 362
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->typedClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_131

    .line 363
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v2, 0x6

    invoke-direct {p0, v0, v2, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageWithReply(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    .line 366
    :cond_131
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->clientsRegistrationFromBundle(Landroid/os/Bundle;Z)V

    goto :goto_19b

    .line 368
    :cond_139
    const-string v0, "Message with existing binder was received, ignoring it.."

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    goto :goto_19b

    .line 344
    :pswitch_13f
    new-array v0, v6, [Ljava/lang/Object;

    const-string v2, "handleMessage(MSG_HANDLE_INSTRUMENTATION_FROM_BROADCAST)"

    invoke-static {v7, v2, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->otherInstrumentations:Ljava/util/Set;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 349
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessageWithReply(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    goto :goto_19b

    .line 351
    :cond_157
    const-string v0, "Broadcast with existing binder was received, ignoring it.."

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    goto :goto_19b

    .line 340
    :pswitch_15d
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "handleMessage(MSG_TERMINATE)"

    invoke-static {v7, v1, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    invoke-direct {p0}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->doDie()V

    .line 342
    goto :goto_19b

    .line 417
    :pswitch_168
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "handleMessage(MSG_REMOTE_REMOVE_CLIENT)"

    invoke-static {v7, v1, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v0, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->unregisterClient(Ljava/lang/String;Landroid/os/Messenger;)V

    .line 419
    goto :goto_19b

    .line 402
    :pswitch_17d
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "handleMessage(MSG_REMOTE_ADD_CLIENT)"

    invoke-static {v7, v1, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    nop

    .line 404
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 403
    invoke-direct {p0, v0, v1}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->registerClient(Ljava/lang/String;Landroid/os/Messenger;)V

    .line 406
    nop

    .line 443
    :cond_19b
    :goto_19b
    return-void

    :pswitch_data_19c
    .packed-switch 0x0
        :pswitch_17d
        :pswitch_168
        :pswitch_15d
        :pswitch_13f
        :pswitch_112
        :pswitch_fa
        :pswitch_ea
        :pswitch_da
        :pswitch_b4
        :pswitch_8e
        :pswitch_64
        :pswitch_47
        :pswitch_2f
    .end packed-switch
.end method
