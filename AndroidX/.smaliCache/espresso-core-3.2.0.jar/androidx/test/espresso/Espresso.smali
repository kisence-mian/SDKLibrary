.class public final Landroidx/test/espresso/Espresso;
.super Ljava/lang/Object;
.source "Espresso.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/Espresso$TransitionBridgingViewAction;
    }
.end annotation


# static fields
.field private static final BASE:Landroidx/test/espresso/BaseLayerComponent;

.field private static final OVERFLOW_BUTTON_MATCHER:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_SECONDS:I = 0x5

.field private static final baseRegistry:Landroidx/test/espresso/base/IdlingResourceRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 61
    const-class v0, Landroidx/test/espresso/Espresso;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/Espresso;->TAG:Ljava/lang/String;

    .line 62
    invoke-static {}, Landroidx/test/espresso/GraphHolder;->baseLayer()Landroidx/test/espresso/BaseLayerComponent;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/Espresso;->BASE:Landroidx/test/espresso/BaseLayerComponent;

    .line 63
    invoke-interface {v0}, Landroidx/test/espresso/BaseLayerComponent;->idlingResourceRegistry()Landroidx/test/espresso/base/IdlingResourceRegistry;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/Espresso;->baseRegistry:Landroidx/test/espresso/base/IdlingResourceRegistry;

    .line 196
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayed()Lorg/hamcrest/Matcher;

    move-result-object v0

    const-string v1, "More options"

    invoke-static {v1}, Landroidx/test/espresso/matcher/ViewMatchers;->withContentDescription(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 197
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isDisplayed()Lorg/hamcrest/Matcher;

    move-result-object v1

    const-string v2, "OverflowMenuButton"

    invoke-static {v2}, Lorg/hamcrest/Matchers;->endsWith(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/espresso/matcher/ViewMatchers;->withClassName(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v1

    .line 195
    invoke-static {v0, v1}, Lorg/hamcrest/Matchers;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/Espresso;->OVERFLOW_BUTTON_MATCHER:Lorg/hamcrest/Matcher;

    .line 194
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroidx/test/espresso/BaseLayerComponent;
    .registers 1

    .line 59
    sget-object v0, Landroidx/test/espresso/Espresso;->BASE:Landroidx/test/espresso/BaseLayerComponent;

    return-object v0
.end method

.method static synthetic access$200()Lorg/hamcrest/Matcher;
    .registers 1

    .line 59
    sget-object v0, Landroidx/test/espresso/Espresso;->OVERFLOW_BUTTON_MATCHER:Lorg/hamcrest/Matcher;

    return-object v0
.end method

.method public static closeSoftKeyboard()V
    .registers 4

    .line 201
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isRoot()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->closeSoftKeyboard()Landroidx/test/espresso/ViewAction;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 202
    return-void
.end method

.method public static getIdlingResources()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/test/espresso/IdlingResource;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    sget-object v0, Landroidx/test/espresso/Espresso;->baseRegistry:Landroidx/test/espresso/base/IdlingResourceRegistry;

    invoke-virtual {v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->getResources()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static hasVirtualOverflowButton(Landroid/content/Context;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 372
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-ge v0, v2, :cond_10

    .line 373
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p0, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1

    .line 375
    :cond_10
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method static final synthetic lambda$waitUntilNextFrame$0$Espresso(Ljava/util/concurrent/CountDownLatch;J)V
    .registers 3

    .line 296
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method static final synthetic lambda$waitUntilNextFrame$1$Espresso(Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 295
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Landroidx/test/espresso/Espresso$$Lambda$1;

    invoke-direct {v1, p0}, Landroidx/test/espresso/Espresso$$Lambda$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 296
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 295
    return-void
.end method

.method public static onData(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/DataInteraction;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/test/espresso/DataInteraction;"
        }
    .end annotation

    .line 101
    new-instance v0, Landroidx/test/espresso/DataInteraction;

    invoke-direct {v0, p0}, Landroidx/test/espresso/DataInteraction;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public static onIdle(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
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

    .line 318
    sget-object v0, Landroidx/test/espresso/Espresso;->BASE:Landroidx/test/espresso/BaseLayerComponent;

    invoke-interface {v0}, Landroidx/test/espresso/BaseLayerComponent;->mainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 319
    new-instance v2, Landroidx/test/espresso/Espresso$1;

    invoke-direct {v2}, Landroidx/test/espresso/Espresso$1;-><init>()V

    .line 320
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;->create(Ljava/lang/Runnable;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;

    move-result-object v2

    .line 328
    new-instance v3, Ljava/util/concurrent/FutureTask;

    invoke-direct {v3, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 329
    invoke-virtual {v2, v3, v1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 330
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 331
    invoke-interface {v0}, Landroidx/test/espresso/BaseLayerComponent;->controlledLooper()Landroidx/test/internal/platform/os/ControlledLooper;

    move-result-object p0

    invoke-interface {p0}, Landroidx/test/internal/platform/os/ControlledLooper;->drainMainThreadUntilIdle()V

    .line 334
    :try_start_22
    invoke-virtual {v2}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;->get()Ljava/lang/Object;

    .line 335
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_29} :catch_40
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_22 .. :try_end_29} :catch_2a

    return-object p0

    .line 338
    :catch_2a
    move-exception p0

    .line 339
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroidx/test/espresso/AppNotIdleException;

    if-eqz v0, :cond_3a

    .line 340
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/AppNotIdleException;

    throw p0

    .line 342
    :cond_3a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 336
    :catch_40
    move-exception p0

    .line 337
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static onIdle()V
    .registers 1

    .line 361
    new-instance v0, Landroidx/test/espresso/Espresso$2;

    invoke-direct {v0}, Landroidx/test/espresso/Espresso$2;-><init>()V

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onIdle(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 369
    return-void
.end method

.method public static onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "viewMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;)",
            "Landroidx/test/espresso/ViewInteraction;"
        }
    .end annotation

    .line 84
    sget-object v0, Landroidx/test/espresso/Espresso;->BASE:Landroidx/test/espresso/BaseLayerComponent;

    new-instance v1, Landroidx/test/espresso/ViewInteractionModule;

    invoke-direct {v1, p0}, Landroidx/test/espresso/ViewInteractionModule;-><init>(Lorg/hamcrest/Matcher;)V

    invoke-interface {v0, v1}, Landroidx/test/espresso/BaseLayerComponent;->plus(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/ViewInteractionComponent;

    move-result-object p0

    invoke-interface {p0}, Landroidx/test/espresso/ViewInteractionComponent;->viewInteraction()Landroidx/test/espresso/ViewInteraction;

    move-result-object p0

    return-object p0
.end method

.method public static openActionBarOverflowOrOptionsMenu(Landroid/content/Context;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 255
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->waitUntilNextFrame(I)V

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xb

    if-ge v1, v4, :cond_24

    .line 261
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isRoot()Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object p0

    new-array v1, v3, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->pressMenuKey()Landroidx/test/espresso/ViewAction;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    goto :goto_64

    .line 262
    :cond_24
    invoke-static {p0}, Landroidx/test/espresso/Espresso;->hasVirtualOverflowButton(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_51

    .line 266
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isRoot()Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object p0

    new-array v1, v3, [Landroidx/test/espresso/ViewAction;

    new-instance v4, Landroidx/test/espresso/Espresso$TransitionBridgingViewAction;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroidx/test/espresso/Espresso$TransitionBridgingViewAction;-><init>(Landroidx/test/espresso/Espresso$1;)V

    aput-object v4, v1, v2

    invoke-virtual {p0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 268
    sget-object p0, Landroidx/test/espresso/Espresso;->OVERFLOW_BUTTON_MATCHER:Lorg/hamcrest/Matcher;

    invoke-static {p0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object p0

    new-array v1, v3, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->click()Landroidx/test/espresso/ViewAction;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    goto :goto_64

    .line 271
    :cond_51
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isRoot()Lorg/hamcrest/Matcher;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object p0

    new-array v1, v3, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->pressMenuKey()Landroidx/test/espresso/ViewAction;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 281
    :goto_64
    invoke-static {v0}, Landroidx/test/espresso/Espresso;->waitUntilNextFrame(I)V

    .line 282
    return-void
.end method

.method public static openContextualActionModeOverflowMenu()V
    .registers 5

    .line 215
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isRoot()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroidx/test/espresso/ViewAction;

    new-instance v3, Landroidx/test/espresso/Espresso$TransitionBridgingViewAction;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/test/espresso/Espresso$TransitionBridgingViewAction;-><init>(Landroidx/test/espresso/Espresso$1;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 219
    sget-object v0, Landroidx/test/espresso/Espresso;->OVERFLOW_BUTTON_MATCHER:Lorg/hamcrest/Matcher;

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    new-array v1, v1, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->pressBack()Landroidx/test/espresso/ViewAction;

    move-result-object v2

    invoke-static {v2}, Landroidx/test/espresso/action/ViewActions;->click(Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewAction;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 220
    return-void
.end method

.method public static pressBack()V
    .registers 4

    .line 229
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isRoot()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->pressBack()Landroidx/test/espresso/ViewAction;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 230
    return-void
.end method

.method public static pressBackUnconditionally()V
    .registers 4

    .line 237
    invoke-static {}, Landroidx/test/espresso/matcher/ViewMatchers;->isRoot()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/Espresso;->onView(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/espresso/ViewAction;

    invoke-static {}, Landroidx/test/espresso/action/ViewActions;->pressBackUnconditionally()Landroidx/test/espresso/ViewAction;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/test/espresso/ViewInteraction;->perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;

    .line 238
    return-void
.end method

.method public static varargs registerIdlingResources([Landroidx/test/espresso/IdlingResource;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/test/espresso/IdlingRegistry;->register([Landroidx/test/espresso/IdlingResource;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 147
    sget-object p0, Landroidx/test/espresso/Espresso;->baseRegistry:Landroidx/test/espresso/base/IdlingResourceRegistry;

    .line 148
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/IdlingRegistry;->getResources()Ljava/util/Collection;

    move-result-object v0

    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/test/espresso/IdlingRegistry;->getLoopers()Ljava/util/Collection;

    move-result-object v2

    .line 147
    invoke-virtual {p0, v0, v2}, Landroidx/test/espresso/base/IdlingResourceRegistry;->sync(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 149
    return v1

    .line 151
    :cond_21
    array-length p0, p0

    if-nez p0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1
.end method

.method public static registerLooperAsIdlingResource(Landroid/os/Looper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "looper"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/test/espresso/Espresso;->registerLooperAsIdlingResource(Landroid/os/Looper;Z)V

    .line 114
    return-void
.end method

.method public static registerLooperAsIdlingResource(Landroid/os/Looper;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "looper",
            "considerWaitIdle"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/test/espresso/IdlingRegistry;->registerLooperAsIdlingResource(Landroid/os/Looper;)V

    .line 131
    sget-object p0, Landroidx/test/espresso/Espresso;->baseRegistry:Landroidx/test/espresso/base/IdlingResourceRegistry;

    .line 132
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/test/espresso/IdlingRegistry;->getResources()Ljava/util/Collection;

    move-result-object p1

    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/IdlingRegistry;->getLoopers()Ljava/util/Collection;

    move-result-object v0

    .line 131
    invoke-virtual {p0, p1, v0}, Landroidx/test/espresso/base/IdlingResourceRegistry;->sync(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 133
    return-void
.end method

.method public static setFailureHandler(Landroidx/test/espresso/FailureHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failureHandler"
        }
    .end annotation

    .line 183
    sget-object v0, Landroidx/test/espresso/Espresso;->BASE:Landroidx/test/espresso/BaseLayerComponent;

    invoke-interface {v0}, Landroidx/test/espresso/BaseLayerComponent;->failureHolder()Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;

    move-result-object v0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/FailureHandler;

    invoke-virtual {v0, p0}, Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;->update(Landroidx/test/espresso/FailureHandler;)V

    .line 184
    return-void
.end method

.method public static varargs unregisterIdlingResources([Landroidx/test/espresso/IdlingResource;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/test/espresso/IdlingRegistry;->unregister([Landroidx/test/espresso/IdlingResource;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 164
    sget-object p0, Landroidx/test/espresso/Espresso;->baseRegistry:Landroidx/test/espresso/base/IdlingResourceRegistry;

    .line 165
    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/IdlingRegistry;->getResources()Ljava/util/Collection;

    move-result-object v0

    invoke-static {}, Landroidx/test/espresso/IdlingRegistry;->getInstance()Landroidx/test/espresso/IdlingRegistry;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/test/espresso/IdlingRegistry;->getLoopers()Ljava/util/Collection;

    move-result-object v2

    .line 164
    invoke-virtual {p0, v0, v2}, Landroidx/test/espresso/base/IdlingResourceRegistry;->sync(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 166
    return v1

    .line 168
    :cond_21
    array-length p0, p0

    if-nez p0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1
.end method

.method private static waitUntilNextFrame(I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "times"
        }
    .end annotation

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_7

    .line 287
    return-void

    .line 290
    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-ge v0, p0, :cond_39

    .line 291
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 292
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    new-instance v3, Landroidx/test/espresso/Espresso$$Lambda$0;

    invoke-direct {v3, v1}, Landroidx/test/espresso/Espresso$$Lambda$0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 293
    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 297
    sget-object v2, Landroidx/test/espresso/Espresso;->BASE:Landroidx/test/espresso/BaseLayerComponent;

    invoke-interface {v2}, Landroidx/test/espresso/BaseLayerComponent;->controlledLooper()Landroidx/test/internal/platform/os/ControlledLooper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/test/internal/platform/os/ControlledLooper;->drainMainThreadUntilIdle()V

    .line 299
    const-wide/16 v2, 0x5

    :try_start_27
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2c} :catch_30

    .line 303
    nop

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 300
    :catch_30
    move-exception p0

    .line 301
    sget-object p0, Landroidx/test/espresso/Espresso;->TAG:Ljava/lang/String;

    const-string v0, "Waited for the next frame to start but never happened."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    .line 305
    :cond_39
    return-void
.end method
