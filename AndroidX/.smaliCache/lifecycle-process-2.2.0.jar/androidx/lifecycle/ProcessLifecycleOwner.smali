.class public Landroidx/lifecycle/ProcessLifecycleOwner;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# static fields
.field static final TIMEOUT_MS:J = 0x2bcL

.field private static final sInstance:Landroidx/lifecycle/ProcessLifecycleOwner;


# instance fields
.field private mDelayedPauseRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field mInitializationListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

.field private mPauseSent:Z

.field private final mRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field private mResumedCounter:I

.field private mStartedCounter:I

.field private mStopSent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-direct {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;-><init>()V

    sput-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->sInstance:Landroidx/lifecycle/ProcessLifecycleOwner;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 58
    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 61
    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 64
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 66
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$1;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$2;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$2;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mInitializationListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 155
    return-void
.end method

.method public static get()Landroidx/lifecycle/LifecycleOwner;
    .registers 1

    .line 101
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->sInstance:Landroidx/lifecycle/ProcessLifecycleOwner;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 105
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->sInstance:Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->attach(Landroid/content/Context;)V

    .line 106
    return-void
.end method


# virtual methods
.method activityPaused()V
    .registers 5

    .line 129
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 130
    if-nez v0, :cond_11

    .line 131
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    :cond_11
    return-void
.end method

.method activityResumed()V
    .registers 3

    .line 117
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 118
    if-ne v0, v1, :cond_1e

    .line 119
    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    if-eqz v0, :cond_17

    .line 120
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    goto :goto_1e

    .line 123
    :cond_17
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    :cond_1e
    :goto_1e
    return-void
.end method

.method activityStarted()V
    .registers 3

    .line 109
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 110
    if-ne v0, v1, :cond_16

    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    if-eqz v0, :cond_16

    .line 111
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 114
    :cond_16
    return-void
.end method

.method activityStopped()V
    .registers 2

    .line 136
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 137
    invoke-virtual {p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->dispatchStopIfNeeded()V

    .line 138
    return-void
.end method

.method attach(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    .line 159
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 161
    .local v0, "app":Landroid/app/Application;
    new-instance v1, Landroidx/lifecycle/ProcessLifecycleOwner$3;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$3;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 204
    return-void
.end method

.method dispatchPauseIfNeeded()V
    .registers 3

    .line 141
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    if-nez v0, :cond_e

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 143
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 145
    :cond_e
    return-void
.end method

.method dispatchStopIfNeeded()V
    .registers 3

    .line 148
    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    if-eqz v0, :cond_12

    .line 149
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 152
    :cond_12
    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    .line 209
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method
