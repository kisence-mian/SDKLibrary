.class public final Landroidx/test/espresso/ViewInteraction;
.super Ljava/lang/Object;
.source "ViewInteraction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;,
        Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

.field private volatile failureHandler:Landroidx/test/espresso/FailureHandler;

.field private hasRootMatcher:Z

.field private final mainThreadExecutor:Ljava/util/concurrent/Executor;

.field private final needsActivity:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteExecutor:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;

.field private final remoteInteraction:Landroidx/test/espresso/remote/RemoteInteraction;

.field private final rootMatcherRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;"
        }
    .end annotation
.end field

.field private final uiController:Landroidx/test/espresso/base/InterruptableUiController;

.field private final viewFinder:Landroidx/test/espresso/ViewFinder;

.field private final viewMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    const-class v0, Landroidx/test/espresso/ViewInteraction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/ViewInteraction;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/test/espresso/UiController;Landroidx/test/espresso/ViewFinder;Ljava/util/concurrent/Executor;Landroidx/test/espresso/FailureHandler;Lorg/hamcrest/Matcher;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/test/espresso/remote/RemoteInteraction;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;Landroidx/test/internal/platform/os/ControlledLooper;)V
    .registers 12
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation runtime Landroidx/test/espresso/base/MainThread;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uiController",
            "viewFinder",
            "mainThreadExecutor",
            "failureHandler",
            "viewMatcher",
            "rootMatcherRef",
            "needsActivity",
            "remoteInteraction",
            "remoteExecutor",
            "controlledLooper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/UiController;",
            "Landroidx/test/espresso/ViewFinder;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/test/espresso/FailureHandler;",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/test/espresso/remote/RemoteInteraction;",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/espresso/ViewInteraction;->hasRootMatcher:Z

    .line 94
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/test/espresso/ViewFinder;

    iput-object p2, p0, Landroidx/test/espresso/ViewInteraction;->viewFinder:Landroidx/test/espresso/ViewFinder;

    .line 95
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/base/InterruptableUiController;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->uiController:Landroidx/test/espresso/base/InterruptableUiController;

    .line 96
    invoke-static {p4}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/FailureHandler;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->failureHandler:Landroidx/test/espresso/FailureHandler;

    .line 97
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 98
    invoke-static {p5}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 99
    invoke-static {p6}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->rootMatcherRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 100
    invoke-static {p7}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->needsActivity:Ljava/util/concurrent/atomic/AtomicReference;

    .line 101
    invoke-static {p8}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/remote/RemoteInteraction;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->remoteInteraction:Landroidx/test/espresso/remote/RemoteInteraction;

    .line 102
    invoke-static {p9}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->remoteExecutor:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;

    .line 103
    invoke-static {p10}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/internal/platform/os/ControlledLooper;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    .line 104
    return-void
.end method

.method static synthetic access$100(Landroidx/test/espresso/ViewInteraction;Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Landroidx/test/espresso/ViewInteraction;->doPerform(Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/test/espresso/ViewInteraction;)Landroidx/test/espresso/base/InterruptableUiController;
    .registers 1

    .line 65
    iget-object p0, p0, Landroidx/test/espresso/ViewInteraction;->uiController:Landroidx/test/espresso/base/InterruptableUiController;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/test/espresso/ViewInteraction;)Landroidx/test/espresso/ViewFinder;
    .registers 1

    .line 65
    iget-object p0, p0, Landroidx/test/espresso/ViewInteraction;->viewFinder:Landroidx/test/espresso/ViewFinder;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 65
    sget-object v0, Landroidx/test/espresso/ViewInteraction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/test/espresso/ViewInteraction;)Lorg/hamcrest/Matcher;
    .registers 1

    .line 65
    iget-object p0, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    return-object p0
.end method

.method private desugaredPerform(Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "va"
        }
    .end annotation

    .line 154
    new-instance v0, Landroidx/test/espresso/ViewInteraction$1;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/ViewInteraction$1;-><init>(Landroidx/test/espresso/ViewInteraction;Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V

    .line 163
    invoke-virtual {p1}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;->getInnerViewAction()Landroidx/test/espresso/ViewAction;

    move-result-object v1

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-direct {p0, v0}, Landroidx/test/espresso/ViewInteraction;->postAsynchronouslyOnUiThread(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->remoteInteraction:Landroidx/test/espresso/remote/RemoteInteraction;

    invoke-interface {v0}, Landroidx/test/espresso/remote/RemoteInteraction;->isRemoteProcess()Z

    move-result v0

    if-nez v0, :cond_47

    .line 169
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->remoteExecutor:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;

    iget-object v3, p0, Landroidx/test/espresso/ViewInteraction;->remoteInteraction:Landroidx/test/espresso/remote/RemoteInteraction;

    iget-object v4, p0, Landroidx/test/espresso/ViewInteraction;->rootMatcherRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 172
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/hamcrest/Matcher;

    iget-object v5, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/test/espresso/ViewAction;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 p1, 0x1

    aput-object v1, v6, p1

    .line 174
    invoke-static {v6}, Landroidx/test/espresso/ViewInteraction;->getIBindersFromViewActions([Landroidx/test/espresso/ViewAction;)Ljava/util/Map;

    move-result-object v6

    new-array p1, p1, [Landroidx/test/espresso/ViewAction;

    aput-object v1, p1, v7

    .line 171
    invoke-interface {v3, v4, v5, v6, p1}, Landroidx/test/espresso/remote/RemoteInteraction;->createRemotePerformCallable(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Ljava/util/Map;[Landroidx/test/espresso/ViewAction;)Ljava/util/concurrent/Callable;

    move-result-object p1

    .line 170
    invoke-interface {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 169
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_47
    invoke-direct {p0, v2}, Landroidx/test/espresso/ViewInteraction;->waitForAndHandleInteractionResults(Ljava/util/List;)V

    .line 179
    return-void
.end method

.method private doPerform(Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "viewAction"
        }
    .end annotation

    .line 220
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {p1}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;->getConstraints()Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hamcrest/Matcher;

    .line 222
    iget-object v1, p0, Landroidx/test/espresso/ViewInteraction;->uiController:Landroidx/test/espresso/base/InterruptableUiController;

    invoke-interface {v1}, Landroidx/test/espresso/base/InterruptableUiController;->loopMainThreadUntilIdle()V

    .line 223
    iget-object v1, p0, Landroidx/test/espresso/ViewInteraction;->viewFinder:Landroidx/test/espresso/ViewFinder;

    invoke-interface {v1}, Landroidx/test/espresso/ViewFinder;->getView()Landroid/view/View;

    move-result-object v1

    .line 224
    sget-object v2, Landroidx/test/espresso/ViewInteraction;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 229
    invoke-virtual {p1}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;->getDescription()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 226
    const-string v5, "Performing \'%s\' action on view %s"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-interface {v0, v1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    .line 233
    new-instance v2, Lorg/hamcrest/StringDescription;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Action will not be performed because the target view does not match one or more of the following constraints:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/hamcrest/StringDescription;-><init>(Ljava/lang/Appendable;)V

    .line 238
    invoke-interface {v0, v2}, Lorg/hamcrest/Matcher;->describeTo(Lorg/hamcrest/Description;)V

    .line 239
    nop

    .line 240
    const-string v0, "\nTarget view: "

    invoke-virtual {v2, v0}, Lorg/hamcrest/StringDescription;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    .line 241
    invoke-static {v1}, Landroidx/test/espresso/util/HumanReadables;->describe(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 243
    invoke-virtual {p1}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;->getInnerViewAction()Landroidx/test/espresso/ViewAction;

    move-result-object v0

    instance-of v0, v0, Landroidx/test/espresso/action/ScrollToAction;

    if-eqz v0, :cond_74

    const-class v0, Landroid/widget/AdapterView;

    .line 244
    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isAssignableFrom(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/matcher/ViewMatchers;->isDescendantOfA(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 245
    const-string v0, "\nFurther Info: ScrollToAction on a view inside an AdapterView will not work. Use Espresso.onData to load the view."

    invoke-virtual {v2, v0}, Lorg/hamcrest/StringDescription;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 249
    :cond_74
    new-instance v0, Landroidx/test/espresso/PerformException$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/PerformException$Builder;-><init>()V

    .line 250
    invoke-virtual {p1}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/test/espresso/PerformException$Builder;->withActionDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 251
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/test/espresso/PerformException$Builder;->withViewDescription(Ljava/lang/String;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/RuntimeException;

    .line 252
    invoke-virtual {v2}, Lorg/hamcrest/StringDescription;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/test/espresso/PerformException$Builder;->withCause(Ljava/lang/Throwable;)Landroidx/test/espresso/PerformException$Builder;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Landroidx/test/espresso/PerformException$Builder;->build()Landroidx/test/espresso/PerformException;

    move-result-object p1

    throw p1

    .line 255
    :cond_9d
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->uiController:Landroidx/test/espresso/base/InterruptableUiController;

    invoke-virtual {p1, v0, v1}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;->perform(Landroidx/test/espresso/UiController;Landroid/view/View;)V

    .line 257
    return-void
.end method

.method private static varargs getBindables([Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroidx/test/espresso/remote/Bindable;",
            ">;"
        }
    .end annotation

    .line 135
    array-length v0, p0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 136
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_17

    aget-object v3, p0, v2

    .line 137
    instance-of v4, v3, Landroidx/test/espresso/remote/Bindable;

    if-eqz v4, :cond_14

    .line 138
    check-cast v3, Landroidx/test/espresso/remote/Bindable;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 141
    :cond_17
    return-object v0
.end method

.method private static getIBindersFromBindables(Ljava/util/List;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bindables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/test/espresso/remote/Bindable;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/remote/Bindable;

    .line 127
    nop

    .line 128
    invoke-interface {v1}, Landroidx/test/espresso/remote/Bindable;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bindable id cannot be null!"

    invoke-static {v2, v3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    invoke-interface {v1}, Landroidx/test/espresso/remote/Bindable;->getIBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v3, "Bindable binder cannot be null!"

    invoke-static {v1, v3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 127
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    goto :goto_9

    .line 131
    :cond_32
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method private static varargs getIBindersFromViewActions([Landroidx/test/espresso/ViewAction;)Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewActions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/test/espresso/ViewAction;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 145
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Landroidx/test/espresso/ViewInteraction;->getBindables([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/ViewInteraction;->getIBindersFromBindables(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static varargs getIBindersFromViewAssertions([Landroidx/test/espresso/ViewAssertion;)Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewAssertions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/test/espresso/ViewAssertion;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 150
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Landroidx/test/espresso/ViewInteraction;->getBindables([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/ViewInteraction;->getIBindersFromBindables(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private postAsynchronouslyOnUiThread(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interaction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 311
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFutureTask;

    move-result-object p1

    .line 312
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 313
    return-object p1
.end method

.method private waitForAndHandleInteractionResults(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interactions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 318
    :try_start_0
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    invoke-interface {v0}, Landroidx/test/internal/platform/os/ControlledLooper;->drainMainThreadUntilIdle()V

    .line 320
    invoke-static {p1}, Landroidx/test/espresso/InteractionResultsHandler;->gatherAnyResult(Ljava/util/List;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_19
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_8} :catch_10
    .catchall {:try_start_0 .. :try_end_8} :catchall_e

    .line 326
    :goto_8
    iget-object p1, p0, Landroidx/test/espresso/ViewInteraction;->uiController:Landroidx/test/espresso/base/InterruptableUiController;

    invoke-interface {p1}, Landroidx/test/espresso/base/InterruptableUiController;->interruptEspressoTasks()V

    .line 327
    goto :goto_22

    .line 326
    :catchall_e
    move-exception p1

    goto :goto_23

    .line 323
    :catch_10
    move-exception p1

    .line 324
    :try_start_11
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->failureHandler:Landroidx/test/espresso/FailureHandler;

    iget-object v1, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1, v1}, Landroidx/test/espresso/FailureHandler;->handle(Ljava/lang/Throwable;Lorg/hamcrest/Matcher;)V

    goto :goto_8

    .line 321
    :catch_19
    move-exception p1

    .line 322
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->failureHandler:Landroidx/test/espresso/FailureHandler;

    iget-object v1, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1, v1}, Landroidx/test/espresso/FailureHandler;->handle(Ljava/lang/Throwable;Lorg/hamcrest/Matcher;)V
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_e

    goto :goto_8

    .line 328
    :goto_22
    return-void

    .line 326
    :goto_23
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->uiController:Landroidx/test/espresso/base/InterruptableUiController;

    invoke-interface {v0}, Landroidx/test/espresso/base/InterruptableUiController;->interruptEspressoTasks()V

    goto :goto_2a

    :goto_29
    throw p1

    :goto_2a
    goto :goto_29
.end method


# virtual methods
.method public check(Landroidx/test/espresso/ViewAssertion;)Landroidx/test/espresso/ViewInteraction;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "viewAssert"
        }
    .end annotation

    .line 266
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v0, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;-><init>(Landroidx/test/espresso/ViewAssertion;Landroidx/test/espresso/ViewInteraction$1;)V

    .line 271
    new-instance v1, Landroidx/test/espresso/ViewInteraction$2;

    invoke-direct {v1, p0, p1, v0}, Landroidx/test/espresso/ViewInteraction$2;-><init>(Landroidx/test/espresso/ViewInteraction;Landroidx/test/espresso/ViewAssertion;Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAssertion;)V

    .line 293
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 294
    invoke-direct {p0, v1}, Landroidx/test/espresso/ViewInteraction;->postAsynchronouslyOnUiThread(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v1, p0, Landroidx/test/espresso/ViewInteraction;->remoteInteraction:Landroidx/test/espresso/remote/RemoteInteraction;

    invoke-interface {v1}, Landroidx/test/espresso/remote/RemoteInteraction;->isRemoteProcess()Z

    move-result v1

    if-nez v1, :cond_48

    .line 297
    iget-object v1, p0, Landroidx/test/espresso/ViewInteraction;->remoteExecutor:Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;

    iget-object v3, p0, Landroidx/test/espresso/ViewInteraction;->remoteInteraction:Landroidx/test/espresso/remote/RemoteInteraction;

    iget-object v4, p0, Landroidx/test/espresso/ViewInteraction;->rootMatcherRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 300
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/hamcrest/Matcher;

    iget-object v5, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    const/4 v6, 0x2

    new-array v6, v6, [Landroidx/test/espresso/ViewAssertion;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object p1, v6, v0

    .line 302
    invoke-static {v6}, Landroidx/test/espresso/ViewInteraction;->getIBindersFromViewAssertions([Landroidx/test/espresso/ViewAssertion;)Ljava/util/Map;

    move-result-object v0

    .line 299
    invoke-interface {v3, v4, v5, v0, p1}, Landroidx/test/espresso/remote/RemoteInteraction;->createRemoteCheckCallable(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Ljava/util/Map;Landroidx/test/espresso/ViewAssertion;)Ljava/util/concurrent/Callable;

    move-result-object p1

    .line 298
    invoke-interface {v1, p1}, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 297
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_48
    invoke-direct {p0, v2}, Landroidx/test/espresso/ViewInteraction;->waitForAndHandleInteractionResults(Ljava/util/List;)V

    .line 307
    return-object p0
.end method

.method public inRoot(Lorg/hamcrest/Matcher;)Landroidx/test/espresso/ViewInteraction;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootMatcher"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;)",
            "Landroidx/test/espresso/ViewInteraction;"
        }
    .end annotation

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/espresso/ViewInteraction;->hasRootMatcher:Z

    .line 196
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->rootMatcherRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 197
    return-object p0
.end method

.method public noActivity()Landroidx/test/espresso/ViewInteraction;
    .registers 5

    .line 202
    iget-boolean v0, p0, Landroidx/test/espresso/ViewInteraction;->hasRootMatcher:Z

    if-nez v0, :cond_1b

    .line 203
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->rootMatcherRef:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Landroidx/test/espresso/matcher/RootMatchers;->DEFAULT:Lorg/hamcrest/Matcher;

    .line 207
    invoke-static {}, Landroidx/test/espresso/matcher/RootMatchers;->hasWindowLayoutParams()Lorg/hamcrest/Matcher;

    move-result-object v2

    invoke-static {}, Landroidx/test/espresso/matcher/RootMatchers;->isSystemAlertWindow()Lorg/hamcrest/Matcher;

    move-result-object v3

    .line 206
    invoke-static {v2, v3}, Lorg/hamcrest/Matchers;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v2

    .line 204
    invoke-static {v1, v2}, Lorg/hamcrest/Matchers;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 209
    :cond_1b
    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction;->needsActivity:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 210
    return-object p0
.end method

.method public varargs perform([Landroidx/test/espresso/ViewAction;)Landroidx/test/espresso/ViewInteraction;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "viewActions"
        }
    .end annotation

    .line 115
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    .line 117
    new-instance v3, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;

    iget-object v4, p0, Landroidx/test/espresso/ViewInteraction;->viewMatcher:Lorg/hamcrest/Matcher;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;-><init>(Landroidx/test/espresso/ViewAction;Lorg/hamcrest/Matcher;Landroidx/test/espresso/ViewInteraction$1;)V

    .line 119
    invoke-direct {p0, v3}, Landroidx/test/espresso/ViewInteraction;->desugaredPerform(Landroidx/test/espresso/ViewInteraction$SingleExecutionViewAction;)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 121
    :cond_17
    return-object p0
.end method

.method public withFailureHandler(Landroidx/test/espresso/FailureHandler;)Landroidx/test/espresso/ViewInteraction;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failureHandler"
        }
    .end annotation

    .line 189
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/FailureHandler;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction;->failureHandler:Landroidx/test/espresso/FailureHandler;

    .line 190
    return-object p0
.end method
