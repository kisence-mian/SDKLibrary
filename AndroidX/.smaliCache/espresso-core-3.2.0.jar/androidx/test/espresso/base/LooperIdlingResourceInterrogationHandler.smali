.class Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;
.super Ljava/lang/Object;
.source "LooperIdlingResourceInterrogationHandler.java"

# interfaces
.implements Landroidx/test/espresso/IdlingResource;
.implements Landroidx/test/espresso/base/Interrogator$InterrogationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/IdlingResource;",
        "Landroidx/test/espresso/base/Interrogator$InterrogationHandler<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final insts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile cb:Landroidx/test/espresso/IdlingResource$ResourceCallback;

.field private volatile idle:Z

.field private final name:Ljava/lang/String;

.field private volatile queue:Landroid/os/MessageQueue;

.field private final queueHasNewTasks:Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->insts:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$1;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$1;-><init>(Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;)V

    iput-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->queueHasNewTasks:Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->started:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->queue:Landroid/os/MessageQueue;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->idle:Z

    .line 75
    iput-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->cb:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    .line 78
    iput-object p1, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->name:Ljava/lang/String;

    .line 79
    return-void
.end method

.method static synthetic access$002(Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;Landroid/os/MessageQueue;)Landroid/os/MessageQueue;
    .registers 2

    .line 27
    iput-object p1, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->queue:Landroid/os/MessageQueue;

    return-object p1
.end method

.method static synthetic access$102(Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;Z)Z
    .registers 2

    .line 27
    iput-boolean p1, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->started:Z

    return p1
.end method

.method static forLooper(Landroid/os/Looper;)Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 82
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 86
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 87
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 83
    const-string v2, "LooperIdlingResource-%s-%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;

    invoke-direct {v1, v0}, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;-><init>(Ljava/lang/String;)V

    .line 90
    sget-object v2, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->insts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;

    .line 91
    if-eqz v0, :cond_35

    .line 92
    return-object v0

    .line 94
    :cond_35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$2;

    invoke-direct {p0, v1}, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler$2;-><init>(Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;)V

    .line 95
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-object v1
.end method

.method private transitionToIdle()V
    .registers 2

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->idle:Z

    .line 174
    iget-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->cb:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->cb:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    invoke-interface {v0}, Landroidx/test/espresso/IdlingResource$ResourceCallback;->onTransitionToIdle()V

    .line 177
    :cond_c
    return-void
.end method


# virtual methods
.method public barrierUp()Z
    .registers 2

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->idle:Z

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public beforeTaskDispatch()Z
    .registers 2

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->idle:Z

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0}, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Void;
    .registers 2

    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isIdleNow()Z
    .registers 4

    .line 150
    iget-boolean v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->started:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 151
    return v1

    .line 153
    :cond_6
    iget-boolean v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->idle:Z

    if-eqz v0, :cond_19

    .line 157
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->queue:Landroid/os/MessageQueue;

    iget-object v2, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->queueHasNewTasks:Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;

    invoke-static {v1, v2}, Landroidx/test/espresso/base/Interrogator;->peekAtQueueState(Landroid/os/MessageQueue;Landroidx/test/espresso/base/Interrogator$QueueInterrogationHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 159
    :cond_19
    return v1
.end method

.method public queueEmpty()Z
    .registers 2

    .line 115
    invoke-direct {p0}, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->transitionToIdle()V

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public quitting()V
    .registers 1

    .line 110
    invoke-direct {p0}, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->transitionToIdle()V

    .line 111
    return-void
.end method

.method public registerIdleTransitionCallback(Landroidx/test/espresso/IdlingResource$ResourceCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->cb:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    .line 170
    return-void
.end method

.method public taskDueLong()Z
    .registers 2

    .line 121
    invoke-direct {p0}, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->transitionToIdle()V

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public taskDueSoon()Z
    .registers 2

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/espresso/base/LooperIdlingResourceInterrogationHandler;->idle:Z

    .line 134
    const/4 v0, 0x1

    return v0
.end method
