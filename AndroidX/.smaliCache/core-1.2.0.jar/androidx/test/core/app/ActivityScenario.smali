.class public final Landroidx/test/core/app/ActivityScenario;
.super Ljava/lang/Object;
.source "ActivityScenario.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/core/app/ActivityScenario$ActivityAction;,
        Landroidx/test/core/app/ActivityScenario$ActivityState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroid/app/Activity;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final STEADY_STATES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/test/runner/lifecycle/Stage;",
            "Landroidx/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIMEOUT_MILLISECONDS:J = 0xafc8L


# instance fields
.field private final activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

.field private final activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

.field private final controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

.field private currentActivity:Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final startActivityIntent:Landroid/content/Intent;

.field private final stateChangedCondition:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 120
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroidx/test/runner/lifecycle/Stage;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    .line 123
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->STOPPED:Landroidx/test/runner/lifecycle/Stage;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->DESTROYED:Landroidx/test/runner/lifecycle/Stage;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;)V
    .registers 4
    .param p1, "startActivityIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startActivityIntent"
        }
    .end annotation

    .line 163
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    .line 139
    const-class v0, Landroidx/test/internal/platform/app/ActivityInvoker;

    sget-object v1, Landroidx/test/core/app/ActivityScenario$$Lambda$0;->$instance:Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;

    .line 140
    invoke-static {v0, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/app/ActivityInvoker;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 143
    const-class v0, Landroidx/test/internal/platform/os/ControlledLooper;

    sget-object v1, Landroidx/test/core/app/ActivityScenario$$Lambda$1;->$instance:Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;

    .line 144
    invoke-static {v0, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/os/ControlledLooper;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    .line 151
    sget-object v0, Landroidx/test/runner/lifecycle/Stage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/Stage;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 317
    new-instance v0, Landroidx/test/core/app/ActivityScenario$1;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario$1;-><init>(Landroidx/test/core/app/ActivityScenario;)V

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 164
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    .line 165
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TA;>;)V"
        }
    .end annotation

    .line 168
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    .line 139
    const-class v0, Landroidx/test/internal/platform/app/ActivityInvoker;

    sget-object v1, Landroidx/test/core/app/ActivityScenario$$Lambda$2;->$instance:Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;

    .line 140
    invoke-static {v0, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/app/ActivityInvoker;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 143
    const-class v1, Landroidx/test/internal/platform/os/ControlledLooper;

    sget-object v2, Landroidx/test/core/app/ActivityScenario$$Lambda$3;->$instance:Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;

    .line 144
    invoke-static {v1, v2}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/internal/platform/os/ControlledLooper;

    iput-object v1, p0, Landroidx/test/core/app/ActivityScenario;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    .line 151
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/Stage;

    iput-object v1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 317
    new-instance v1, Landroidx/test/core/app/ActivityScenario$1;

    invoke-direct {v1, p0}, Landroidx/test/core/app/ActivityScenario$1;-><init>(Landroidx/test/core/app/ActivityScenario;)V

    iput-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 169
    nop

    .line 170
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {v0, v1}, Landroidx/test/internal/platform/app/ActivityInvoker;->getIntentForActivity(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    .line 171
    return-void
.end method

.method static synthetic access$000(Landroidx/test/core/app/ActivityScenario;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Landroidx/test/core/app/ActivityScenario;

    .line 109
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .param p0, "x0"    # Landroidx/test/core/app/ActivityScenario;

    .line 109
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/test/core/app/ActivityScenario;)Landroidx/test/runner/lifecycle/Stage;
    .registers 2
    .param p0, "x0"    # Landroidx/test/core/app/ActivityScenario;

    .line 109
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    return-object v0
.end method

.method static synthetic access$202(Landroidx/test/core/app/ActivityScenario;Landroidx/test/runner/lifecycle/Stage;)Landroidx/test/runner/lifecycle/Stage;
    .registers 2
    .param p0, "x0"    # Landroidx/test/core/app/ActivityScenario;
    .param p1, "x1"    # Landroidx/test/runner/lifecycle/Stage;

    .line 109
    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    return-object p1
.end method

.method static synthetic access$300(Landroidx/test/core/app/ActivityScenario;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Landroidx/test/core/app/ActivityScenario;

    .line 109
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$302(Landroidx/test/core/app/ActivityScenario;Landroid/app/Activity;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Landroidx/test/core/app/ActivityScenario;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 109
    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$400(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/Condition;
    .registers 2
    .param p0, "x0"    # Landroidx/test/core/app/ActivityScenario;

    .line 109
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method private getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/core/app/ActivityScenario$ActivityState<",
            "TA;>;"
        }
    .end annotation

    .line 379
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 380
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 382
    :try_start_c
    new-instance v0, Landroidx/test/core/app/ActivityScenario$ActivityState;

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    sget-object v2, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 383
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/Lifecycle$State;

    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/core/app/ActivityScenario$ActivityState;-><init>(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$State;Landroidx/test/runner/lifecycle/Stage;)V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_25

    .line 385
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 382
    return-object v0

    .line 385
    :catchall_25
    move-exception v0

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static final synthetic lambda$new$0$ActivityScenario()Landroidx/test/internal/platform/app/ActivityInvoker;
    .registers 1

    .line 141
    new-instance v0, Landroidx/test/core/app/InstrumentationActivityInvoker;

    invoke-direct {v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;-><init>()V

    return-object v0
.end method

.method static final synthetic lambda$new$1$ActivityScenario()Landroidx/test/internal/platform/os/ControlledLooper;
    .registers 1

    .line 145
    sget-object v0, Landroidx/test/internal/platform/os/ControlledLooper;->NO_OP_CONTROLLED_LOOPER:Landroidx/test/internal/platform/os/ControlledLooper;

    return-object v0
.end method

.method public static launch(Landroid/content/Intent;)Landroidx/test/core/app/ActivityScenario;
    .registers 3
    .param p0, "startActivityIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startActivityIntent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Landroid/content/Intent;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 208
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroidx/test/core/app/ActivityScenario;-><init>(Landroid/content/Intent;)V

    .line 209
    .local v0, "scenario":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    invoke-direct {v0}, Landroidx/test/core/app/ActivityScenario;->launchInternal()V

    .line 210
    return-object v0
.end method

.method public static launch(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 189
    .local p0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, Landroidx/test/core/app/ActivityScenario;-><init>(Ljava/lang/Class;)V

    .line 190
    .local v0, "scenario":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    invoke-direct {v0}, Landroidx/test/core/app/ActivityScenario;->launchInternal()V

    .line 191
    return-object v0
.end method

.method private launchInternal()V
    .registers 4

    .line 220
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 219
    const-string v1, "always_finish_activities"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 218
    :goto_18
    const-string v1, "\"Don\'t keep activities\" developer options must be disabled for ActivityScenario"

    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 226
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkNotMainThread()V

    .line 227
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 229
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    invoke-interface {v0, v1}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->addLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V

    .line 231
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroidx/test/internal/platform/app/ActivityInvoker;->startActivity(Landroid/content/Intent;)V

    .line 235
    sget-object v0, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/Lifecycle$State;

    invoke-direct {p0, v0}, Landroidx/test/core/app/ActivityScenario;->waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V

    .line 236
    return-void
.end method

.method private varargs waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V
    .registers 15
    .param p1, "expectedStates"    # [Landroidx/lifecycle/Lifecycle$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedStates"
        }
    .end annotation

    .line 282
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    const-string v0, "Activity never becomes requested state \"%s\" (last lifecycle transition = \"%s\")"

    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 284
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 285
    .local v1, "expectedStateSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/lifecycle/Lifecycle$State;>;"
    iget-object v2, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 287
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_1a
    sget-object v5, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    iget-object v6, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_26} :catch_80
    .catchall {:try_start_1a .. :try_end_26} :catchall_7e

    if-eqz v5, :cond_2e

    .line 312
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 288
    return-void

    .line 291
    :cond_2e
    :try_start_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 292
    .local v5, "now":J
    const-wide/32 v7, 0xafc8

    add-long/2addr v7, v5

    .line 293
    .local v7, "deadline":J
    :goto_36
    cmp-long v9, v5, v7

    if-gez v9, :cond_57

    sget-object v9, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    iget-object v10, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 294
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_57

    .line 295
    iget-object v9, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    sub-long v10, v7, v5

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v9, v10, v11, v12}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-wide v5, v9

    goto :goto_36

    .line 299
    :cond_57
    sget-object v9, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    iget-object v10, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_63
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_63} :catch_80
    .catchall {:try_start_2e .. :try_end_63} :catchall_7e

    if-eqz v9, :cond_6c

    .line 312
    .end local v5    # "now":J
    .end local v7    # "deadline":J
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 313
    nop

    .line 314
    return-void

    .line 300
    .restart local v5    # "now":J
    .restart local v7    # "deadline":J
    :cond_6c
    :try_start_6c
    new-instance v9, Ljava/lang/AssertionError;

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v1, v10, v3

    iget-object v11, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    aput-object v11, v10, v2

    .line 301
    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v1    # "expectedStateSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/lifecycle/Lifecycle$State;>;"
    .end local p1    # "expectedStates":[Landroidx/lifecycle/Lifecycle$State;
    throw v9
    :try_end_7e
    .catch Ljava/lang/InterruptedException; {:try_start_6c .. :try_end_7e} :catch_80
    .catchall {:try_start_6c .. :try_end_7e} :catchall_7e

    .line 312
    .end local v5    # "now":J
    .end local v7    # "deadline":J
    .restart local v1    # "expectedStateSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/lifecycle/Lifecycle$State;>;"
    .restart local p1    # "expectedStates":[Landroidx/lifecycle/Lifecycle$State;
    :catchall_7e
    move-exception v0

    goto :goto_93

    .line 306
    :catch_80
    move-exception v5

    .line 307
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_81
    new-instance v6, Ljava/lang/AssertionError;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    aput-object v3, v4, v2

    .line 308
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v1    # "expectedStateSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/lifecycle/Lifecycle$State;>;"
    .end local p1    # "expectedStates":[Landroidx/lifecycle/Lifecycle$State;
    throw v6
    :try_end_93
    .catchall {:try_start_81 .. :try_end_93} :catchall_7e

    .line 312
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "expectedStateSet":Ljava/util/Set;, "Ljava/util/Set<Landroidx/lifecycle/Lifecycle$State;>;"
    .restart local p1    # "expectedStates":[Landroidx/lifecycle/Lifecycle$State;
    :goto_93
    iget-object v2, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_9a

    :goto_99
    throw v0

    :goto_9a
    goto :goto_99
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 271
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    .line 272
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 273
    invoke-interface {v0, v1}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->removeLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V

    .line 274
    return-void
.end method

.method public getResult()Landroid/app/Instrumentation$ActivityResult;
    .registers 2

    .line 587
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    invoke-interface {v0}, Landroidx/test/internal/platform/app/ActivityInvoker;->getActivityResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public getState()Landroidx/lifecycle/Lifecycle$State;
    .registers 3

    .line 597
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    nop

    .line 598
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    move-result-object v0

    iget-object v0, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 597
    const-string v1, "Could not get current state due to the transition is incomplete."

    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method final synthetic lambda$onActivity$2$ActivityScenario(Landroidx/test/core/app/ActivityScenario$ActivityAction;)V
    .registers 4
    .param p1, "action"    # Landroidx/test/core/app/ActivityScenario$ActivityAction;

    .line 545
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkMainThread()V

    .line 547
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 549
    :try_start_8
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    const-string v1, "Cannot run onActivity since Activity has been destroyed already"

    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    invoke-interface {p1, v0}, Landroidx/test/core/app/ActivityScenario$ActivityAction;->perform(Landroid/app/Activity;)V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_1b

    .line 553
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 554
    nop

    .line 555
    return-void

    .line 553
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;
    .registers 8
    .param p1, "newState"    # Landroidx/lifecycle/Lifecycle$State;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle$State;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 410
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkNotMainThread()V

    .line 411
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 413
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    move-result-object v0

    .line 414
    .local v0, "currentState":Landroidx/test/core/app/ActivityScenario$ActivityState;, "Landroidx/test/core/app/ActivityScenario$ActivityState<TA;>;"
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->stage:Landroidx/test/runner/lifecycle/Stage;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 416
    const-string v4, "Current state was null unexpectedly. Last stage = %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 414
    invoke-static {v1, v3}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, p1, :cond_26

    .line 418
    return-object p0

    .line 420
    :cond_26
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v1, v3, :cond_32

    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v5

    .line 422
    const-string v4, "Cannot move to state \"%s\" since the Activity has been destroyed already"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 420
    invoke-static {v1, v3}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 425
    sget-object v1, Landroidx/test/core/app/ActivityScenario$2;->$SwitchMap$android$arch$lifecycle$Lifecycle$State:[I

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_88

    .line 442
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 443
    const-string v3, "A requested state \"%s\" is not supported"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 439
    :pswitch_5b
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v3, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-interface {v1, v3}, Landroidx/test/internal/platform/app/ActivityInvoker;->finishActivity(Landroid/app/Activity;)V

    .line 440
    goto :goto_80

    .line 436
    :pswitch_63
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v3, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-interface {v1, v3}, Landroidx/test/internal/platform/app/ActivityInvoker;->resumeActivity(Landroid/app/Activity;)V

    .line 437
    goto :goto_80

    .line 432
    :pswitch_6b
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v1}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    .line 433
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v3, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-interface {v1, v3}, Landroidx/test/internal/platform/app/ActivityInvoker;->pauseActivity(Landroid/app/Activity;)V

    .line 434
    goto :goto_80

    .line 427
    :pswitch_78
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v3, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-interface {v1, v3}, Landroidx/test/internal/platform/app/ActivityInvoker;->stopActivity(Landroid/app/Activity;)V

    .line 428
    nop

    .line 446
    :goto_80
    new-array v1, v2, [Landroidx/lifecycle/Lifecycle$State;

    aput-object p1, v1, v5

    invoke-direct {p0, v1}, Landroidx/test/core/app/ActivityScenario;->waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V

    .line 447
    return-object p0

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_78
        :pswitch_6b
        :pswitch_63
        :pswitch_5b
    .end packed-switch
.end method

.method public onActivity(Landroidx/test/core/app/ActivityScenario$ActivityAction;)Landroidx/test/core/app/ActivityScenario;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/core/app/ActivityScenario$ActivityAction<",
            "TA;>;)",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 543
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    .local p1, "action":Landroidx/test/core/app/ActivityScenario$ActivityAction;, "Landroidx/test/core/app/ActivityScenario$ActivityAction<TA;>;"
    new-instance v0, Landroidx/test/core/app/ActivityScenario$$Lambda$4;

    invoke-direct {v0, p0, p1}, Landroidx/test/core/app/ActivityScenario$$Lambda$4;-><init>(Landroidx/test/core/app/ActivityScenario;Landroidx/test/core/app/ActivityScenario$ActivityAction;)V

    .line 557
    .local v0, "runnableAction":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_18

    .line 560
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    invoke-interface {v1}, Landroidx/test/internal/platform/os/ControlledLooper;->drainMainThreadUntilIdle()V

    .line 561
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_26

    .line 563
    :cond_18
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 564
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 567
    :goto_26
    return-object p0
.end method

.method public recreate()Landroidx/test/core/app/ActivityScenario;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 464
    .local p0, "this":Landroidx/test/core/app/ActivityScenario;, "Landroidx/test/core/app/ActivityScenario<TA;>;"
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkNotMainThread()V

    .line 465
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 467
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    move-result-object v0

    .line 468
    .local v0, "prevActivityState":Landroidx/test/core/app/ActivityScenario$ActivityState;, "Landroidx/test/core/app/ActivityScenario$ActivityState<TA;>;"
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v1}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    .line 476
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v2, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Landroidx/test/internal/platform/app/ActivityInvoker;->recreateActivity(Landroid/app/Activity;)V

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 480
    .local v1, "now":J
    const-wide/32 v3, 0xafc8

    add-long/2addr v3, v1

    .line 482
    .local v3, "deadline":J
    :cond_2c
    const/4 v5, 0x1

    new-array v5, v5, [Landroidx/lifecycle/Lifecycle$State;

    const/4 v6, 0x0

    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    aput-object v7, v5, v6

    invoke-direct {p0, v5}, Landroidx/test/core/app/ActivityScenario;->waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 484
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    move-result-object v5

    .line 485
    .local v5, "activityState":Landroidx/test/core/app/ActivityScenario$ActivityState;, "Landroidx/test/core/app/ActivityScenario$ActivityState<TA;>;"
    cmp-long v6, v1, v3

    if-gez v6, :cond_49

    iget-object v6, v5, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    iget-object v7, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    if-eq v6, v7, :cond_2c

    .line 486
    :cond_49
    iget-object v6, v5, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    iget-object v7, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    if-eq v6, v7, :cond_55

    .line 490
    iget-object v6, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v6}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    .line 492
    return-object p0

    .line 487
    :cond_55
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Requested a re-creation of Activity but didn\'t happen"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5e

    :goto_5d
    throw v6

    :goto_5e
    goto :goto_5d
.end method
