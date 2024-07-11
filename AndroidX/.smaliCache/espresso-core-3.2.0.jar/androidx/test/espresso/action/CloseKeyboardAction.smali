.class public final Landroidx/test/espresso/action/CloseKeyboardAction;
.super Ljava/lang/Object;
.source "CloseKeyboardAction.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;
    }
.end annotation


# static fields
.field private static final NUM_RETRIES:I = 0x3

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const-class v0, Landroidx/test/espresso/action/CloseKeyboardAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/action/CloseKeyboardAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Landroidx/test/espresso/remote/annotation/RemoteMsgConstructor;
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRootActivity(Landroidx/test/espresso/UiController;)Landroid/app/Activity;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uiController"
        }
    .end annotation

    .line 123
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    invoke-interface {v0, v1}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 125
    invoke-interface {p0}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 127
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object p0

    sget-object v0, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    invoke-interface {p0, v0}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object v0

    .line 129
    :cond_1d
    nop

    .line 130
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 129
    :goto_27
    const-string p0, "More than one activity is in RESUMED stage. There may have been an error during the activity creation/startup process, please check your logs."

    invoke-static {v1, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 134
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method private tryToCloseKeyboard(Landroid/view/View;Landroidx/test/espresso/UiController;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "uiController"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 81
    nop

    .line 83
    invoke-static {p2}, Landroidx/test/espresso/action/CloseKeyboardAction;->getRootActivity(Landroidx/test/espresso/UiController;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 85
    new-instance v1, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;

    new-instance v2, Landroid/os/Handler;

    .line 86
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;-><init>(Landroid/os/Handler;Landroidx/test/espresso/action/CloseKeyboardAction$1;)V

    .line 88
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Landroidx/test/espresso/IdlingResource;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v4}, Landroidx/test/espresso/IdlingRegistry;->register([Landroidx/test/espresso/IdlingResource;)Z

    .line 92
    :try_start_29
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 93
    sget-object p1, Landroidx/test/espresso/action/CloseKeyboardAction;->TAG:Ljava/lang/String;

    const-string p2, "Attempting to close soft keyboard, while it is not shown."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_b9

    .line 103
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object p1

    new-array p2, v3, [Landroidx/test/espresso/IdlingResource;

    aput-object v1, p2, v5

    invoke-virtual {p1, p2}, Landroidx/test/espresso/IdlingRegistry;->unregister([Landroidx/test/espresso/IdlingResource;)Z

    .line 94
    return-void

    .line 97
    :cond_46
    const-wide/16 v6, 0x7d0

    :try_start_48
    # invokes: Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->scheduleTimeout(J)V
    invoke-static {v1, v6, v7}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->access$100(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;J)V

    .line 98
    invoke-interface {p2}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 99
    # getter for: Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->timedOut:Z
    invoke-static {v1}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->access$200(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)Z

    move-result p2
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_b9

    if-nez p2, :cond_b1

    .line 103
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object p2

    new-array v0, v3, [Landroidx/test/espresso/IdlingResource;

    aput-object v1, v0, v5

    invoke-virtual {p2, v0}, Landroidx/test/espresso/IdlingRegistry;->unregister([Landroidx/test/espresso/IdlingResource;)Z

    .line 104
    nop

    .line 106
    # getter for: Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->result:I
    invoke-static {v1}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->access$300(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)I

    move-result p2

    if-eq p2, v3, :cond_b0

    .line 107
    # getter for: Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->result:I
    invoke-static {v1}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->access$300(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_6e

    goto :goto_b0

    .line 108
    :cond_6e
    nop

    .line 111
    # getter for: Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->result:I
    invoke-static {v1}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->access$300(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)I

    move-result p2

    const/16 v0, 0x69

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Attempt to close the soft keyboard did not result in soft keyboard to be hidden. resultCode = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 112
    sget-object v0, Landroidx/test/espresso/action/CloseKeyboardAction;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 114
    invoke-virtual {p0}, Landroidx/test/espresso/action/CloseKeyboardAction;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 115
    invoke-static {p1}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, v0}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1

    .line 119
    :cond_b0
    :goto_b0
    return-void

    .line 100
    :cond_b1
    :try_start_b1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Wait on operation result timed out."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b9
    .catchall {:try_start_b1 .. :try_end_b9} :catchall_b9

    .line 103
    :catchall_b9
    move-exception p1

    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object p2

    new-array v0, v3, [Landroidx/test/espresso/IdlingResource;

    aput-object v1, v0, v5

    invoke-virtual {p2, v0}, Landroidx/test/espresso/IdlingRegistry;->unregister([Landroidx/test/espresso/IdlingResource;)Z

    throw p1
.end method


# virtual methods
.method public getConstraints()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 57
    const-class v0, Landroid/view/View;

    invoke-static {v0}, Lorg/hamcrest/Matchers;->any(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 139
    const-string v0, "close keyboard"

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uiController",
            "view"
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_34

    .line 65
    :try_start_4
    invoke-direct {p0, p2, p1}, Landroidx/test/espresso/action/CloseKeyboardAction;->tryToCloseKeyboard(Landroid/view/View;Landroidx/test/espresso/UiController;)V
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_7} :catch_8

    .line 66
    return-void

    .line 67
    :catch_8
    move-exception v1

    .line 68
    sget-object v2, Landroidx/test/espresso/action/CloseKeyboardAction;->TAG:Ljava/lang/String;

    const-string v3, "Caught timeout exception. Retrying."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v2, 0x2

    if-eq v0, v2, :cond_16

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_16
    new-instance p1, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p1}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 71
    invoke-virtual {p0}, Landroidx/test/espresso/action/CloseKeyboardAction;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 72
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 73
    invoke-virtual {p1, v1}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1

    .line 78
    :cond_34
    return-void
.end method
