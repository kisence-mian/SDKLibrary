.class public final Landroidx/test/espresso/base/RootViewPicker;
.super Ljava/lang/Object;
.source "RootViewPicker.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/base/RootViewPicker$RootReadyBackoff;,
        Landroidx/test/espresso/base/RootViewPicker$NoMatchingRootBackoff;,
        Landroidx/test/espresso/base/RootViewPicker$NoActiveRootsBackoff;,
        Landroidx/test/espresso/base/RootViewPicker$BackOff;,
        Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;,
        Landroidx/test/espresso/base/RootViewPicker$RootResults;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final CREATED_WAIT_TIMES:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESUMED_WAIT_TIMES:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activityLifecycleMonitor:Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

.field private final controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

.field private final needsActivity:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final rootResultFetcher:Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

.field private final uiController:Landroidx/test/espresso/UiController;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 54
    const-class v0, Landroidx/test/espresso/base/RootViewPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/RootViewPicker;->TAG:Ljava/lang/String;

    .line 56
    nop

    .line 57
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0x96

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0xfa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/RootViewPicker;->CREATED_WAIT_TIMES:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    .line 58
    nop

    .line 59
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x1f4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x7d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x7530

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/base/RootViewPicker;->RESUMED_WAIT_TIMES:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    .line 58
    return-void
.end method

.method constructor <init>(Landroidx/test/espresso/UiController;Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/test/internal/platform/os/ControlledLooper;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uiController",
            "rootResultFetcher",
            "activityLifecycleMonitor",
            "needsActivity",
            "controlledLooper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/UiController;",
            "Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;",
            "Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroidx/test/espresso/base/RootViewPicker;->uiController:Landroidx/test/espresso/UiController;

    .line 75
    iput-object p2, p0, Landroidx/test/espresso/base/RootViewPicker;->rootResultFetcher:Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

    .line 76
    iput-object p3, p0, Landroidx/test/espresso/base/RootViewPicker;->activityLifecycleMonitor:Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    .line 77
    iput-object p4, p0, Landroidx/test/espresso/base/RootViewPicker;->needsActivity:Ljava/util/concurrent/atomic/AtomicReference;

    .line 78
    iput-object p5, p0, Landroidx/test/espresso/base/RootViewPicker;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    .line 79
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 53
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private pickARoot()Landroidx/test/espresso/Root;
    .registers 9

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 122
    iget-object v2, p0, Landroidx/test/espresso/base/RootViewPicker;->rootResultFetcher:Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

    invoke-virtual {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;->fetch()Landroidx/test/espresso/base/RootViewPicker$RootResults;

    move-result-object v2

    .line 123
    new-instance v3, Landroidx/test/espresso/base/RootViewPicker$NoActiveRootsBackoff;

    invoke-direct {v3}, Landroidx/test/espresso/base/RootViewPicker$NoActiveRootsBackoff;-><init>()V

    .line 124
    new-instance v4, Landroidx/test/espresso/base/RootViewPicker$NoMatchingRootBackoff;

    invoke-direct {v4}, Landroidx/test/espresso/base/RootViewPicker$NoMatchingRootBackoff;-><init>()V

    .line 125
    :goto_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-gtz v7, :cond_55

    .line 126
    sget-object v5, Landroidx/test/espresso/base/RootViewPicker$1;->$SwitchMap$androidx$test$espresso$base$RootViewPicker$RootResults$State:[I

    invoke-virtual {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults;->getState()Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_72

    goto :goto_4e

    .line 135
    :pswitch_35
    iget-object v2, p0, Landroidx/test/espresso/base/RootViewPicker;->uiController:Landroidx/test/espresso/UiController;

    invoke-virtual {v4}, Landroidx/test/espresso/base/RootViewPicker$BackOff;->getNextBackoffInMillis()J

    move-result-wide v5

    invoke-interface {v2, v5, v6}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    goto :goto_4e

    .line 131
    :pswitch_3f
    iget-object v2, p0, Landroidx/test/espresso/base/RootViewPicker;->uiController:Landroidx/test/espresso/UiController;

    invoke-virtual {v3}, Landroidx/test/espresso/base/RootViewPicker$BackOff;->getNextBackoffInMillis()J

    move-result-wide v5

    invoke-interface {v2, v5, v6}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 132
    goto :goto_4e

    .line 128
    :pswitch_49
    invoke-virtual {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults;->getPickedRoot()Landroidx/test/espresso/Root;

    move-result-object v0

    return-object v0

    .line 138
    :goto_4e
    iget-object v2, p0, Landroidx/test/espresso/base/RootViewPicker;->rootResultFetcher:Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

    invoke-virtual {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;->fetch()Landroidx/test/espresso/base/RootViewPicker$RootResults;

    move-result-object v2

    goto :goto_1d

    .line 141
    :cond_55
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker$RootResults$State;->ROOTS_PICKED:Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    invoke-virtual {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults;->getState()Landroidx/test/espresso/base/RootViewPicker$RootResults$State;

    move-result-object v1

    if-ne v0, v1, :cond_62

    .line 142
    invoke-virtual {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults;->getPickedRoot()Landroidx/test/espresso/Root;

    move-result-object v0

    return-object v0

    .line 145
    :cond_62
    # getter for: Landroidx/test/espresso/base/RootViewPicker$RootResults;->rootSelector:Lorg/hamcrest/Matcher;
    invoke-static {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults;->access$000(Landroidx/test/espresso/base/RootViewPicker$RootResults;)Lorg/hamcrest/Matcher;

    move-result-object v0

    # getter for: Landroidx/test/espresso/base/RootViewPicker$RootResults;->allRoots:Ljava/util/List;
    invoke-static {v2}, Landroidx/test/espresso/base/RootViewPicker$RootResults;->access$100(Landroidx/test/espresso/base/RootViewPicker$RootResults;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/NoMatchingRootException;->create(Lorg/hamcrest/Matcher;Ljava/util/List;)Landroidx/test/espresso/NoMatchingRootException;

    move-result-object v0

    goto :goto_70

    :goto_6f
    throw v0

    :goto_70
    goto :goto_6f

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_49
        :pswitch_3f
        :pswitch_35
    .end packed-switch
.end method

.method private pickRootView()Landroid/view/View;
    .registers 2

    .line 149
    invoke-direct {p0}, Landroidx/test/espresso/base/RootViewPicker;->pickARoot()Landroidx/test/espresso/Root;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/test/espresso/base/RootViewPicker;->waitForRootToBeReady(Landroidx/test/espresso/Root;)Landroidx/test/espresso/Root;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/Root;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private waitForAtLeastOneActivityToBeResumed()V
    .registers 9

    .line 153
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker;->activityLifecycleMonitor:Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    .line 154
    invoke-interface {v0, v1}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 156
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker;->uiController:Landroidx/test/espresso/UiController;

    invoke-interface {v0}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 157
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker;->activityLifecycleMonitor:Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    invoke-interface {v0, v1}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object v0

    .line 159
    :cond_1b
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 160
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 161
    sget-object v1, Landroidx/test/espresso/base/RootViewPicker;->CREATED_WAIT_TIMES:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "ms for one to appear."

    if-eqz v2, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    .line 164
    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/Stage;

    sget-object v6, Landroidx/test/runner/lifecycle/Stage;->RESTARTED:Landroidx/test/runner/lifecycle/Stage;

    invoke-static {v2, v6}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/test/runner/lifecycle/Stage;

    .line 165
    iget-object v7, p0, Landroidx/test/espresso/base/RootViewPicker;->activityLifecycleMonitor:Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    invoke-interface {v7, v6}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    goto :goto_4a

    .line 167
    :cond_60
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_67

    .line 169
    goto :goto_8b

    .line 171
    :cond_67
    sget-object v2, Landroidx/test/espresso/base/RootViewPicker;->TAG:Ljava/lang/String;

    const/16 v6, 0x48

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "No activities found - waiting: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v2, p0, Landroidx/test/espresso/base/RootViewPicker;->uiController:Landroidx/test/espresso/UiController;

    invoke-interface {v2, v4, v5}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 173
    goto :goto_2b

    .line 175
    :cond_8b
    :goto_8b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e3

    .line 182
    sget-object v0, Landroidx/test/espresso/base/RootViewPicker;->RESUMED_WAIT_TIMES:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_97
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_db

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    .line 183
    sget-object v4, Landroidx/test/espresso/base/RootViewPicker;->TAG:Ljava/lang/String;

    const/16 v5, 0x52

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "No activity currently resumed - waiting: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v4, p0, Landroidx/test/espresso/base/RootViewPicker;->uiController:Landroidx/test/espresso/UiController;

    invoke-interface {v4, v1, v2}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 186
    iget-object v1, p0, Landroidx/test/espresso/base/RootViewPicker;->activityLifecycleMonitor:Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    sget-object v2, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    invoke-interface {v1, v2}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object v1

    .line 187
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_da

    .line 188
    return-void

    .line 190
    :cond_da
    goto :goto_97

    .line 191
    :cond_db
    new-instance v0, Landroidx/test/espresso/NoActivityResumedException;

    const-string v1, "No activities in stage RESUMED. Did you forget to launch the activity. (test.getActivity() or similar)?"

    invoke-direct {v0, v1}, Landroidx/test/espresso/NoActivityResumedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_e3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No activities found. Did you forget to launch the activity by calling getActivity() or startActivitySync or similar?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_eb
    return-void
.end method

.method private waitForRootToBeReady(Landroidx/test/espresso/Root;)Landroidx/test/espresso/Root;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pickedRoot"
        }
    .end annotation

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 100
    new-instance v2, Landroidx/test/espresso/base/RootViewPicker$RootReadyBackoff;

    invoke-direct {v2}, Landroidx/test/espresso/base/RootViewPicker$RootReadyBackoff;-><init>()V

    .line 101
    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gtz v5, :cond_34

    .line 102
    invoke-virtual {p1}, Landroidx/test/espresso/Root;->isReady()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 103
    return-object p1

    .line 105
    :cond_21
    iget-object v3, p0, Landroidx/test/espresso/base/RootViewPicker;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    invoke-virtual {p1}, Landroidx/test/espresso/Root;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/test/internal/platform/os/ControlledLooper;->simulateWindowFocus(Landroid/view/View;)V

    .line 106
    iget-object v3, p0, Landroidx/test/espresso/base/RootViewPicker;->uiController:Landroidx/test/espresso/UiController;

    invoke-virtual {v2}, Landroidx/test/espresso/base/RootViewPicker$BackOff;->getNextBackoffInMillis()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    goto :goto_12

    .line 110
    :cond_34
    new-instance v0, Ljava/lang/RuntimeException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 111
    const-string p1, "Waited for the root of the view hierarchy to have window focus and not request layout for 10 seconds. If you specified a non default root matcher, it may be picking a root that never takes focus. Root:\n%s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :goto_48
    throw v0

    :goto_49
    goto :goto_48
.end method


# virtual methods
.method public get()Landroid/view/View;
    .registers 3

    .line 83
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "must be called on main thread."

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker;->needsActivity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 88
    invoke-direct {p0}, Landroidx/test/espresso/base/RootViewPicker;->waitForAtLeastOneActivityToBeResumed()V

    .line 91
    :cond_22
    invoke-direct {p0}, Landroidx/test/espresso/base/RootViewPicker;->pickRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 52
    invoke-virtual {p0}, Landroidx/test/espresso/base/RootViewPicker;->get()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
