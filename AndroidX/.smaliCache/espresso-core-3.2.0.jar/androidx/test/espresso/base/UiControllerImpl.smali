.class final Landroidx/test/espresso/base/UiControllerImpl;
.super Ljava/lang/Object;
.source "UiControllerImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroidx/test/espresso/base/IdlingUiController;
.implements Landroidx/test/espresso/base/InterruptableUiController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;,
        Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;,
        Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;,
        Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;
    }
.end annotation


# static fields
.field private static final NO_OP:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private asyncIdle:Landroidx/test/espresso/base/IdleNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private compatIdle:Landroidx/test/espresso/base/IdleNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final conditionSet:Ljava/util/BitSet;

.field private controllerHandler:Landroid/os/Handler;

.field private dynamicIdleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final eventInjector:Landroidx/test/espresso/base/EventInjector;

.field private generation:I

.field private final idlingResourceRegistry:Landroidx/test/espresso/base/IdlingResourceRegistry;

.field private interrogation:Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;

.field private final keyEventExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    const-class v0, Landroidx/test/espresso/base/UiControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/UiControllerImpl;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Landroidx/test/espresso/base/UiControllerImpl$1;

    invoke-direct {v0}, Landroidx/test/espresso/base/UiControllerImpl$1;-><init>()V

    sput-object v0, Landroidx/test/espresso/base/UiControllerImpl;->NO_OP:Ljava/util/concurrent/Callable;

    return-void
.end method

.method constructor <init>(Landroidx/test/espresso/base/EventInjector;Landroidx/test/espresso/base/IdleNotifier;Landroidx/test/espresso/base/IdleNotifier;Ljavax/inject/Provider;Landroid/os/Looper;Landroidx/test/espresso/base/IdlingResourceRegistry;)V
    .registers 9
    .param p2    # Landroidx/test/espresso/base/IdleNotifier;
        .annotation runtime Landroidx/test/espresso/base/SdkAsyncTask;
        .end annotation
    .end param
    .param p3    # Landroidx/test/espresso/base/IdleNotifier;
        .annotation runtime Landroidx/test/espresso/base/CompatAsyncTask;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventInjector",
            "asyncIdle",
            "compatIdle",
            "dynamicIdle",
            "mainLooper",
            "idlingResourceRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/EventInjector;",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Ljava/lang/Runnable;",
            ">;",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
            ">;>;",
            "Landroid/os/Looper;",
            "Landroidx/test/espresso/base/IdlingResourceRegistry;",
            ")V"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder;-><init>()V

    .line 149
    const-string v1, "Espresso Key Event #%d"

    invoke-virtual {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 148
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->keyEventExecutor:Ljava/util/concurrent/ExecutorService;

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    .line 170
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/base/EventInjector;

    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl;->eventInjector:Landroidx/test/espresso/base/EventInjector;

    .line 171
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/base/IdleNotifier;

    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl;->asyncIdle:Landroidx/test/espresso/base/IdleNotifier;

    .line 172
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/base/IdleNotifier;

    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl;->compatIdle:Landroidx/test/espresso/base/IdleNotifier;

    .line 173
    invoke-static {}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->createConditionSet()Ljava/util/BitSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl;->conditionSet:Ljava/util/BitSet;

    .line 174
    invoke-static {p4}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl;->dynamicIdleProvider:Ljavax/inject/Provider;

    .line 175
    invoke-static {p5}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl;->mainLooper:Landroid/os/Looper;

    .line 176
    invoke-static {p6}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/base/IdlingResourceRegistry;

    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl;->idlingResourceRegistry:Landroidx/test/espresso/base/IdlingResourceRegistry;

    .line 177
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 61
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/test/espresso/base/UiControllerImpl;)Landroidx/test/espresso/base/EventInjector;
    .registers 1

    .line 61
    iget-object p0, p0, Landroidx/test/espresso/base/UiControllerImpl;->eventInjector:Landroidx/test/espresso/base/EventInjector;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/test/espresso/base/UiControllerImpl;)Landroid/os/Handler;
    .registers 1

    .line 61
    iget-object p0, p0, Landroidx/test/espresso/base/UiControllerImpl;->controllerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/test/espresso/base/UiControllerImpl;)Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;
    .registers 1

    .line 61
    iget-object p0, p0, Landroidx/test/espresso/base/UiControllerImpl;->interrogation:Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/test/espresso/base/UiControllerImpl;)I
    .registers 1

    .line 61
    iget p0, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    return p0
.end method

.method public static getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .registers 2

    .line 383
    nop

    .line 387
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_d

    .line 388
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    goto :goto_12

    .line 390
    :cond_d
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 392
    :goto_12
    return-object v0
.end method

.method private initialize()V
    .registers 2

    .line 668
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->controllerHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 669
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->controllerHandler:Landroid/os/Handler;

    .line 671
    :cond_b
    return-void
.end method

.method private loopUntil(Ljava/util/EnumSet;Landroidx/test/espresso/base/IdleNotifier;)Landroidx/test/espresso/base/IdleNotifier;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "conditions",
            "dynamicIdle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;",
            ">;",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
            ">;)",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
            ">;"
        }
    .end annotation

    .line 518
    const-string v0, "Espresso interrogation of the main thread is interrupted"

    invoke-static {}, Landroidx/test/espresso/IdlingPolicies;->getMasterIdlingPolicy()Landroidx/test/espresso/IdlingPolicy;

    move-result-object v1

    .line 520
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 521
    nop

    .line 522
    invoke-virtual {v1}, Landroidx/test/espresso/IdlingPolicy;->getIdleTimeoutUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v6

    invoke-virtual {v1}, Landroidx/test/espresso/IdlingPolicy;->getIdleTimeout()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 523
    new-instance v6, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;

    iget-object v7, p0, Landroidx/test/espresso/base/UiControllerImpl;->conditionSet:Ljava/util/BitSet;

    invoke-direct {v6, p1, v7, v4, v5}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;-><init>(Ljava/util/EnumSet;Ljava/util/BitSet;J)V

    iput-object v6, p0, Landroidx/test/espresso/base/UiControllerImpl;->interrogation:Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;

    .line 525
    invoke-static {v6}, Landroidx/test/espresso/base/Interrogator;->loopAndInterrogate(Landroidx/test/espresso/base/Interrogator$InterrogationHandler;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    .line 526
    sget-object v5, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_ce

    if-ne v5, v4, :cond_4c

    .line 528
    nop

    .line 550
    iget v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    .line 551
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 552
    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->conditionSet:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->reset(Ljava/util/BitSet;)V

    .line 553
    goto :goto_37

    .line 554
    :cond_49
    iput-object v2, p0, Landroidx/test/espresso/base/UiControllerImpl;->interrogation:Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;

    .line 528
    return-object p2

    .line 529
    :cond_4c
    :try_start_4c
    sget-object v5, Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;->INTERRUPTED:Landroidx/test/espresso/base/UiControllerImpl$InterrogationStatus;

    if-eq v5, v4, :cond_c3

    .line 535
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 536
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 537
    iget-object v6, p0, Landroidx/test/espresso/base/UiControllerImpl;->conditionSet:Ljava/util/BitSet;

    invoke-virtual {v5, v6}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->isSignaled(Ljava/util/BitSet;)Z

    move-result v6

    if-nez v6, :cond_73

    .line 538
    invoke-virtual {v5}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_73
    goto :goto_58

    .line 541
    :cond_74
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "Looped for %s iterations over %s %s."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroidx/test/espresso/base/UiControllerImpl;->interrogation:Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;

    .line 546
    # getter for: Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->execCount:I
    invoke-static {v8}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->access$300(Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 547
    invoke-virtual {v1}, Landroidx/test/espresso/IdlingPolicy;->getIdleTimeout()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x2

    .line 548
    invoke-virtual {v1}, Landroidx/test/espresso/IdlingPolicy;->getIdleTimeoutUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/TimeUnit;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 543
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 541
    invoke-virtual {v1, v0, v4}, Landroidx/test/espresso/IdlingPolicy;->handleTimeout(Ljava/util/List;Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_4c .. :try_end_a4} :catchall_ce

    .line 550
    iget v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    .line 551
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ad
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 552
    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->conditionSet:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->reset(Ljava/util/BitSet;)V

    .line 553
    goto :goto_ad

    .line 554
    :cond_bf
    iput-object v2, p0, Landroidx/test/espresso/base/UiControllerImpl;->interrogation:Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;

    .line 555
    nop

    .line 556
    return-object p2

    .line 530
    :cond_c3
    :try_start_c3
    sget-object p2, Landroidx/test/espresso/base/UiControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_ce
    .catchall {:try_start_c3 .. :try_end_ce} :catchall_ce

    .line 550
    :catchall_ce
    move-exception p2

    iget v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    .line 551
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ea

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 552
    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->conditionSet:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->reset(Ljava/util/BitSet;)V

    .line 553
    goto :goto_d8

    .line 554
    :cond_ea
    iput-object v2, p0, Landroidx/test/espresso/base/UiControllerImpl;->interrogation:Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;

    goto :goto_ee

    :goto_ed
    throw p2

    :goto_ee
    goto :goto_ed
.end method

.method private loopUntil(Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;Landroidx/test/espresso/base/IdleNotifier;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "condition",
            "dynamicIdle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;",
            "Landroidx/test/espresso/base/IdleNotifier<",
            "Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;",
            ">;)V"
        }
    .end annotation

    .line 484
    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/base/UiControllerImpl;->loopUntil(Ljava/util/EnumSet;Landroidx/test/espresso/base/IdleNotifier;)Landroidx/test/espresso/base/IdleNotifier;

    .line 485
    return-void
.end method


# virtual methods
.method public getIdlingResourceRegistry()Landroidx/test/espresso/base/IdlingResourceRegistry;
    .registers 2

    .line 397
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->idlingResourceRegistry:Landroidx/test/espresso/base/IdlingResourceRegistry;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->conditionSet:Ljava/util/BitSet;

    iget v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    invoke-static {p1, v0, v1}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->handleMessage(Landroid/os/Message;Ljava/util/BitSet;I)Z

    move-result v0

    if-nez v0, :cond_32

    .line 475
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 p1, 0x0

    return p1

    .line 478
    :cond_32
    const/4 p1, 0x1

    return p1
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 182
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->mainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "Expecting to be on main thread!"

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 184
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl;->initialize()V

    .line 185
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl;->loopMainThreadUntilIdle()V

    .line 187
    new-instance v0, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;

    new-instance v1, Landroidx/test/espresso/base/UiControllerImpl$2;

    invoke-direct {v1, p0, p1}, Landroidx/test/espresso/base/UiControllerImpl$2;-><init>(Landroidx/test/espresso/base/UiControllerImpl;Landroid/view/KeyEvent;)V

    sget-object p1, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->KEY_INJECT_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    iget v2, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;-><init>(Landroidx/test/espresso/base/UiControllerImpl;Ljava/util/concurrent/Callable;Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;I)V

    .line 200
    iget-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl;->keyEventExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 202
    sget-object p1, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->KEY_INJECT_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->dynamicIdleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/base/IdleNotifier;

    invoke-direct {p0, p1, v1}, Landroidx/test/espresso/base/UiControllerImpl;->loopUntil(Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;Landroidx/test/espresso/base/IdleNotifier;)V

    .line 205
    :try_start_39
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result p1

    const-string v1, "Key injection was signaled - but it wasnt done."

    invoke-static {p1, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 206
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_4c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_39 .. :try_end_4c} :catch_56
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_4c} :catch_4d

    return p1

    .line 213
    :catch_4d
    move-exception p1

    .line 216
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "impossible."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 207
    :catch_56
    move-exception p1

    .line 208
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroidx/test/espresso/InjectEventSecurityException;

    if-eqz v0, :cond_66

    .line 209
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/InjectEventSecurityException;

    throw p1

    .line 211
    :cond_66
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public injectMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 222
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->mainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "Expecting to be on main thread!"

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 224
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl;->initialize()V

    .line 225
    new-instance v0, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;

    new-instance v1, Landroidx/test/espresso/base/UiControllerImpl$3;

    invoke-direct {v1, p0, p1}, Landroidx/test/espresso/base/UiControllerImpl$3;-><init>(Landroidx/test/espresso/base/UiControllerImpl;Landroid/view/MotionEvent;)V

    sget-object p1, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->MOTION_INJECTION_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    iget v2, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;-><init>(Landroidx/test/espresso/base/UiControllerImpl;Ljava/util/concurrent/Callable;Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;I)V

    .line 235
    iget-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl;->keyEventExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 236
    sget-object p1, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->MOTION_INJECTION_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->dynamicIdleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/base/IdleNotifier;

    invoke-direct {p0, p1, v1}, Landroidx/test/espresso/base/UiControllerImpl;->loopUntil(Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;Landroidx/test/espresso/base/IdleNotifier;)V

    .line 238
    :try_start_36
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result p1

    const-string v1, "Motion event injection was signaled - but it wasnt done."

    invoke-static {p1, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 239
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_49
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_36 .. :try_end_49} :catch_56
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_49} :catch_4f
    .catchall {:try_start_36 .. :try_end_49} :catchall_4d

    .line 252
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl;->loopMainThreadUntilIdle()V

    .line 239
    return p1

    .line 252
    :catchall_4d
    move-exception p1

    goto :goto_85

    .line 247
    :catch_4f
    move-exception p1

    .line 250
    :try_start_50
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 240
    :catch_56
    move-exception p1

    .line 241
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroidx/test/espresso/InjectEventSecurityException;

    if-nez v0, :cond_7e

    .line 244
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_6b

    :cond_6a
    move-object v0, p1

    :goto_6b
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 245
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_7a

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :cond_7a
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 242
    :cond_7e
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/InjectEventSecurityException;

    throw p1
    :try_end_85
    .catchall {:try_start_50 .. :try_end_85} :catchall_4d

    .line 252
    :goto_85
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl;->loopMainThreadUntilIdle()V

    throw p1
.end method

.method public injectMotionEventSequence(Ljava/lang/Iterable;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "events"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/view/MotionEvent;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 259
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Expecting non-empty events to inject"

    invoke-static {v0, v2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 261
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Landroidx/test/espresso/base/UiControllerImpl;->mainLooper:Landroid/os/Looper;

    if-ne v0, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    const-string v0, "Expecting to be on main thread!"

    invoke-static {v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 262
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl;->initialize()V

    .line 263
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 264
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 266
    new-instance p1, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;

    new-instance v1, Landroidx/test/espresso/base/UiControllerImpl$4;

    invoke-direct {v1, p0, v0, v3, v4}, Landroidx/test/espresso/base/UiControllerImpl$4;-><init>(Landroidx/test/espresso/base/UiControllerImpl;Ljava/util/Iterator;J)V

    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->MOTION_INJECTION_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    iget v2, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    invoke-direct {p1, p0, v1, v0, v2}, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;-><init>(Landroidx/test/espresso/base/UiControllerImpl;Ljava/util/concurrent/Callable;Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;I)V

    .line 291
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->keyEventExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 292
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->MOTION_INJECTION_HAS_COMPLETED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->dynamicIdleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/base/IdleNotifier;

    invoke-direct {p0, v0, v1}, Landroidx/test/espresso/base/UiControllerImpl;->loopUntil(Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;Landroidx/test/espresso/base/IdleNotifier;)V

    .line 294
    :try_start_54
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    const-string v1, "MotionEvents injection was signaled - but it wasnt done."

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 295
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_67
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_54 .. :try_end_67} :catch_74
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_67} :catch_6d
    .catchall {:try_start_54 .. :try_end_67} :catchall_6b

    .line 308
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl;->loopMainThreadUntilIdle()V

    .line 295
    return p1

    .line 308
    :catchall_6b
    move-exception p1

    goto :goto_a3

    .line 303
    :catch_6d
    move-exception p1

    .line 306
    :try_start_6e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 296
    :catch_74
    move-exception p1

    .line 297
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroidx/test/espresso/InjectEventSecurityException;

    if-nez v0, :cond_9c

    .line 300
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_88

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_89

    :cond_88
    move-object v0, p1

    :goto_89
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 301
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_98

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :cond_98
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 298
    :cond_9c
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/InjectEventSecurityException;

    throw p1
    :try_end_a3
    .catchall {:try_start_6e .. :try_end_a3} :catchall_6b

    .line 308
    :goto_a3
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl;->loopMainThreadUntilIdle()V

    throw p1
.end method

.method public injectString(Ljava/lang/String;)Z
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 314
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->mainLooper:Landroid/os/Looper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "Expecting to be on main thread!"

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 316
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl;->initialize()V

    .line 319
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 320
    sget-object p1, Landroidx/test/espresso/base/UiControllerImpl;->TAG:Ljava/lang/String;

    const-string v0, "Supplied string is empty resulting in no-op (nothing is typed)."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return v2

    .line 324
    :cond_26
    nop

    .line 325
    invoke-static {}, Landroidx/test/espresso/base/UiControllerImpl;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_b1

    .line 342
    sget-object v1, Landroidx/test/espresso/base/UiControllerImpl;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v3

    const-string p1, "Injecting string: \"%s\""

    invoke-static {v4, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    array-length p1, v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_49
    if-ge v1, p1, :cond_b0

    aget-object v4, v0, v1

    .line 345
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    .line 350
    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 351
    invoke-virtual {v4}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 347
    const-string v8, "Failed to get event for character (%c) with key code (%s)"

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-static {v4, v5}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    nop

    .line 354
    move-object v5, v4

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_73
    if-nez v4, :cond_87

    const/4 v8, 0x4

    if-ge v7, v8, :cond_87

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v5, v8, v9, v3}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v5

    .line 361
    invoke-virtual {p0, v5}, Landroidx/test/espresso/base/UiControllerImpl;->injectKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 354
    add-int/lit8 v7, v7, 0x1

    goto :goto_73

    .line 364
    :cond_87
    if-nez v4, :cond_ad

    .line 365
    sget-object p1, Landroidx/test/espresso/base/UiControllerImpl;->TAG:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v1, v6, [Ljava/lang/Object;

    .line 370
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v3

    .line 371
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 367
    const-string v2, "Failed to inject event for character (%c) with key code (%s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    goto :goto_b0

    .line 344
    :cond_ad
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 376
    :cond_b0
    :goto_b0
    return v4

    .line 333
    :cond_b1
    new-instance v0, Ljava/lang/RuntimeException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 334
    const-string p1, "Failed to get key events for string %s (i.e. current IME does not understand how to translate the string into key events). As a workaround, you can use replaceText action to set the text directly in the EditText field."

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_c4

    :goto_c3
    throw v0

    :goto_c4
    goto :goto_c3
.end method

.method public interruptEspressoTasks()V
    .registers 3

    .line 561
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl;->initialize()V

    .line 562
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->controllerHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/test/espresso/base/UiControllerImpl$6;

    invoke-direct {v1, p0}, Landroidx/test/espresso/base/UiControllerImpl$6;-><init>(Landroidx/test/espresso/base/UiControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    return-void
.end method

.method public loopMainThreadForAtLeast(J)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisDelay"
        }
    .end annotation

    .line 458
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl;->initialize()V

    .line 460
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->mainLooper:Landroid/os/Looper;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "Expecting to be on main thread!"

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 461
    sget-object v0, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->DELAY_HAS_PAST:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->conditionSet:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->isSignaled(Ljava/util/BitSet;)Z

    move-result v0

    xor-int/2addr v0, v3

    const-string v1, "recursion detected!"

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 462
    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-lez v4, :cond_2a

    const/4 v2, 0x1

    :cond_2a
    invoke-static {v2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(Z)V

    .line 464
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->controllerHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;

    sget-object v2, Landroidx/test/espresso/base/UiControllerImpl;->NO_OP:Ljava/util/concurrent/Callable;

    sget-object v3, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->DELAY_HAS_PAST:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    iget v4, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    invoke-direct {v1, p0, v2, v3, v4}, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;-><init>(Landroidx/test/espresso/base/UiControllerImpl;Ljava/util/concurrent/Callable;Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;I)V

    iget v2, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    .line 466
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 467
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p1

    .line 464
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 468
    sget-object p1, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->DELAY_HAS_PAST:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    iget-object p2, p0, Landroidx/test/espresso/base/UiControllerImpl;->dynamicIdleProvider:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/test/espresso/base/IdleNotifier;

    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/base/UiControllerImpl;->loopUntil(Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;Landroidx/test/espresso/base/IdleNotifier;)V

    .line 469
    invoke-virtual {p0}, Landroidx/test/espresso/base/UiControllerImpl;->loopMainThreadUntilIdle()V

    .line 470
    return-void
.end method

.method public loopMainThreadUntilIdle()V
    .registers 9

    .line 402
    invoke-direct {p0}, Landroidx/test/espresso/base/UiControllerImpl;->initialize()V

    .line 403
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->mainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "Expecting to be on main thread!"

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 404
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl;->dynamicIdleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/base/IdleNotifier;

    .line 406
    :cond_1b
    const-class v1, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 407
    iget-object v2, p0, Landroidx/test/espresso/base/UiControllerImpl;->asyncIdle:Landroidx/test/espresso/base/IdleNotifier;

    invoke-interface {v2}, Landroidx/test/espresso/base/IdleNotifier;->isIdleNow()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 408
    iget-object v2, p0, Landroidx/test/espresso/base/UiControllerImpl;->asyncIdle:Landroidx/test/espresso/base/IdleNotifier;

    new-instance v3, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;

    sget-object v4, Landroidx/test/espresso/base/UiControllerImpl;->NO_OP:Ljava/util/concurrent/Callable;

    sget-object v5, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->ASYNC_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    iget v6, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    invoke-direct {v3, p0, v4, v5, v6}, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;-><init>(Landroidx/test/espresso/base/UiControllerImpl;Ljava/util/concurrent/Callable;Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;I)V

    invoke-interface {v2, v3}, Landroidx/test/espresso/base/IdleNotifier;->registerNotificationCallback(Ljava/lang/Object;)V

    .line 411
    sget-object v2, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->ASYNC_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_3e
    iget-object v2, p0, Landroidx/test/espresso/base/UiControllerImpl;->compatIdle:Landroidx/test/espresso/base/IdleNotifier;

    invoke-interface {v2}, Landroidx/test/espresso/base/IdleNotifier;->isIdleNow()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 415
    iget-object v2, p0, Landroidx/test/espresso/base/UiControllerImpl;->compatIdle:Landroidx/test/espresso/base/IdleNotifier;

    new-instance v3, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;

    sget-object v4, Landroidx/test/espresso/base/UiControllerImpl;->NO_OP:Ljava/util/concurrent/Callable;

    sget-object v5, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->COMPAT_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    iget v6, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    invoke-direct {v3, p0, v4, v5, v6}, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;-><init>(Landroidx/test/espresso/base/UiControllerImpl;Ljava/util/concurrent/Callable;Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;I)V

    invoke-interface {v2, v3}, Landroidx/test/espresso/base/IdleNotifier;->registerNotificationCallback(Ljava/lang/Object;)V

    .line 417
    sget-object v2, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->COMPAT_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_5b
    invoke-interface {v0}, Landroidx/test/espresso/base/IdleNotifier;->isIdleNow()Z

    move-result v2

    if-nez v2, :cond_81

    .line 421
    invoke-static {}, Landroidx/test/espresso/IdlingPolicies;->getDynamicIdlingResourceWarningPolicy()Landroidx/test/espresso/IdlingPolicy;

    move-result-object v2

    .line 422
    invoke-static {}, Landroidx/test/espresso/IdlingPolicies;->getDynamicIdlingResourceErrorPolicy()Landroidx/test/espresso/IdlingPolicy;

    move-result-object v3

    .line 423
    new-instance v4, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;

    sget-object v5, Landroidx/test/espresso/base/UiControllerImpl;->NO_OP:Ljava/util/concurrent/Callable;

    sget-object v6, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->DYNAMIC_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    iget v7, p0, Landroidx/test/espresso/base/UiControllerImpl;->generation:I

    invoke-direct {v4, p0, v5, v6, v7}, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;-><init>(Landroidx/test/espresso/base/UiControllerImpl;Ljava/util/concurrent/Callable;Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;I)V

    .line 425
    new-instance v5, Landroidx/test/espresso/base/UiControllerImpl$5;

    invoke-direct {v5, p0, v2, v3, v4}, Landroidx/test/espresso/base/UiControllerImpl$5;-><init>(Landroidx/test/espresso/base/UiControllerImpl;Landroidx/test/espresso/IdlingPolicy;Landroidx/test/espresso/IdlingPolicy;Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;)V

    invoke-interface {v0, v5}, Landroidx/test/espresso/base/IdleNotifier;->registerNotificationCallback(Ljava/lang/Object;)V

    .line 443
    sget-object v2, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->DYNAMIC_TASKS_HAVE_IDLED:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_81
    :try_start_81
    invoke-direct {p0, v1, v0}, Landroidx/test/espresso/base/UiControllerImpl;->loopUntil(Ljava/util/EnumSet;Landroidx/test/espresso/base/IdleNotifier;)Landroidx/test/espresso/base/IdleNotifier;

    move-result-object v0
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_aa

    .line 449
    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->asyncIdle:Landroidx/test/espresso/base/IdleNotifier;

    invoke-interface {v1}, Landroidx/test/espresso/base/IdleNotifier;->cancelCallback()V

    .line 450
    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->compatIdle:Landroidx/test/espresso/base/IdleNotifier;

    invoke-interface {v1}, Landroidx/test/espresso/base/IdleNotifier;->cancelCallback()V

    .line 451
    invoke-interface {v0}, Landroidx/test/espresso/base/IdleNotifier;->cancelCallback()V

    .line 452
    nop

    .line 453
    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->asyncIdle:Landroidx/test/espresso/base/IdleNotifier;

    invoke-interface {v1}, Landroidx/test/espresso/base/IdleNotifier;->isIdleNow()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl;->compatIdle:Landroidx/test/espresso/base/IdleNotifier;

    invoke-interface {v1}, Landroidx/test/espresso/base/IdleNotifier;->isIdleNow()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Landroidx/test/espresso/base/IdleNotifier;->isIdleNow()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 454
    return-void

    .line 449
    :catchall_aa
    move-exception v1

    iget-object v2, p0, Landroidx/test/espresso/base/UiControllerImpl;->asyncIdle:Landroidx/test/espresso/base/IdleNotifier;

    invoke-interface {v2}, Landroidx/test/espresso/base/IdleNotifier;->cancelCallback()V

    .line 450
    iget-object v2, p0, Landroidx/test/espresso/base/UiControllerImpl;->compatIdle:Landroidx/test/espresso/base/IdleNotifier;

    invoke-interface {v2}, Landroidx/test/espresso/base/IdleNotifier;->cancelCallback()V

    .line 451
    invoke-interface {v0}, Landroidx/test/espresso/base/IdleNotifier;->cancelCallback()V

    goto :goto_ba

    :goto_b9
    throw v1

    :goto_ba
    goto :goto_b9
.end method
