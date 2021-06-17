.class Landroidx/test/espresso/action/KeyEventActionBase;
.super Ljava/lang/Object;
.source "KeyEventActionBase.java"

# interfaces
.implements Landroidx/test/espresso/ViewAction;


# static fields
.field public static final BACK_ACTIVITY_TRANSITION_MILLIS_DELAY:I = 0x96

.field public static final CLEAR_TRANSITIONING_ACTIVITIES_ATTEMPTS:I = 0x4

.field public static final CLEAR_TRANSITIONING_ACTIVITIES_MILLIS_DELAY:I = 0x96

.field private static final TAG:Ljava/lang/String; = "KeyEventActionBase"


# instance fields
.field final espressoKey:Landroidx/test/espresso/action/EspressoKey;


# direct methods
.method constructor <init>(Landroidx/test/espresso/action/EspressoKey;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "espressoKey"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/action/EspressoKey;

    iput-object p1, p0, Landroidx/test/espresso/action/KeyEventActionBase;->espressoKey:Landroidx/test/espresso/action/EspressoKey;

    .line 56
    return-void
.end method

.method static getCurrentActivity()Landroid/app/Activity;
    .registers 2

    .line 125
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    invoke-interface {v0, v1}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private static isActivityResumed(Landroid/app/Activity;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 144
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->getLifecycleStageOf(Landroid/app/Activity;)Landroidx/test/runner/lifecycle/Stage;

    move-result-object p0

    sget-object v0, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private sendKeyEvent(Landroidx/test/espresso/UiController;)Z
    .registers 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/espresso/InjectEventSecurityException;
        }
    .end annotation

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 94
    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v14, 0x0

    :goto_b
    const/4 v3, 0x4

    if-nez v2, :cond_2d

    if-ge v14, v3, :cond_2d

    .line 95
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    iget-object v2, v0, Landroidx/test/espresso/action/KeyEventActionBase;->espressoKey:Landroidx/test/espresso/action/EspressoKey;

    .line 101
    invoke-virtual {v2}, Landroidx/test/espresso/action/EspressoKey;->getKeyCode()I

    move-result v8

    const/4 v9, 0x0

    iget-object v2, v0, Landroidx/test/espresso/action/KeyEventActionBase;->espressoKey:Landroidx/test/espresso/action/EspressoKey;

    .line 103
    invoke-virtual {v2}, Landroidx/test/espresso/action/EspressoKey;->getMetaState()I

    move-result v10

    move-object v2, v15

    move-wide v3, v11

    move-wide v5, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 96
    invoke-interface {v1, v15}, Landroidx/test/espresso/UiController;->injectKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 94
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 106
    :cond_2d
    if-nez v2, :cond_30

    .line 108
    return v13

    .line 111
    :cond_30
    nop

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 113
    const/4 v2, 0x0

    :goto_36
    if-nez v13, :cond_55

    if-ge v2, v3, :cond_55

    .line 114
    new-instance v6, Landroid/view/KeyEvent;

    const/16 v20, 0x1

    iget-object v7, v0, Landroidx/test/espresso/action/KeyEventActionBase;->espressoKey:Landroidx/test/espresso/action/EspressoKey;

    .line 117
    invoke-virtual {v7}, Landroidx/test/espresso/action/EspressoKey;->getKeyCode()I

    move-result v21

    const/16 v22, 0x0

    move-object v15, v6

    move-wide/from16 v16, v4

    move-wide/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 115
    invoke-interface {v1, v6}, Landroidx/test/espresso/UiController;->injectKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v13

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 120
    :cond_55
    return v13
.end method

.method static waitForPendingForegroundActivities(Landroidx/test/espresso/UiController;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controller",
            "conditional"
        }
    .end annotation

    .line 150
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    .line 151
    nop

    .line 152
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1b

    .line 153
    invoke-interface {p0}, Landroidx/test/espresso/UiController;->loopMainThreadUntilIdle()V

    .line 154
    invoke-static {v0}, Landroidx/test/espresso/util/ActivityLifecycles;->hasTransitioningActivities(Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;)Z

    move-result v2

    .line 155
    if-eqz v2, :cond_1b

    .line 156
    const-wide/16 v3, 0x96

    invoke-interface {p0, v3, v4}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 163
    :cond_1b
    invoke-static {v0}, Landroidx/test/espresso/util/ActivityLifecycles;->hasForegroundActivities(Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;)Z

    move-result p0

    const-string v0, "KeyEventActionBase"

    if-nez p0, :cond_33

    .line 164
    if-nez p1, :cond_2b

    .line 167
    const-string p0, "Pressed back and hopped to a different process or potentially killed the app"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 165
    :cond_2b
    new-instance p0, Landroidx/test/espresso/NoActivityResumedException;

    const-string p1, "Pressed back and killed the app"

    invoke-direct {p0, p1}, Landroidx/test/espresso/NoActivityResumedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 170
    :cond_33
    :goto_33
    if-eqz v2, :cond_3a

    .line 171
    const-string p0, "Back was pressed and left the application in an inconsistent state even after 600ms."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_3a
    return-void
.end method

.method static waitForStageChangeInitialActivity(Landroidx/test/espresso/UiController;Landroid/app/Activity;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controller",
            "initialActivity"
        }
    .end annotation

    .line 130
    invoke-static {p1}, Landroidx/test/espresso/action/KeyEventActionBase;->isActivityResumed(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 132
    const-wide/16 v0, 0x96

    invoke-interface {p0, v0, v1}, Landroidx/test/espresso/UiController;->loopMainThreadForAtLeast(J)V

    .line 133
    invoke-static {p1}, Landroidx/test/espresso/action/KeyEventActionBase;->isActivityResumed(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 134
    const-string p0, "KeyEventActionBase"

    const-string p1, "Back was pressed but there was no Activity stage transition in 150ms, possibly due to a delay calling super.onBackPressed() from your Activity."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_18
    return-void
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

    .line 60
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayed()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 5

    .line 65
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroidx/test/espresso/action/KeyEventActionBase;->espressoKey:Landroidx/test/espresso/action/EspressoKey;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "send %s key event"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V
    .registers 9
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

    .line 71
    const-string v0, "Failed to inject espressoKey event: "

    const-string v1, "KeyEventActionBase"

    :try_start_4
    invoke-direct {p0, p1}, Landroidx/test/espresso/action/KeyEventActionBase;->sendKeyEvent(Landroidx/test/espresso/UiController;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 87
    nop

    .line 88
    return-void

    .line 72
    :cond_c
    iget-object p1, p0, Landroidx/test/espresso/action/KeyEventActionBase;->espressoKey:Landroidx/test/espresso/action/EspressoKey;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance p1, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {p1}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 74
    invoke-virtual {p0}, Landroidx/test/espresso/action/KeyEventActionBase;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 75
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v3, p0, Landroidx/test/espresso/action/KeyEventActionBase;->espressoKey:Landroidx/test/espresso/action/EspressoKey;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to inject espressoKey event "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, v2}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1
    :try_end_76
    .catch Landroidx/test/espresso/InjectEventSecurityException; {:try_start_4 .. :try_end_76} :catch_76

    .line 80
    :catch_76
    move-exception p1

    .line 81
    iget-object v2, p0, Landroidx/test/espresso/action/KeyEventActionBase;->espressoKey:Landroidx/test/espresso/action/EspressoKey;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 83
    invoke-virtual {p0}, Landroidx/test/espresso/action/KeyEventActionBase;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object v0

    .line 84
    invoke-static {p2}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p2

    .line 85
    invoke-virtual {p2, p1}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1
.end method
