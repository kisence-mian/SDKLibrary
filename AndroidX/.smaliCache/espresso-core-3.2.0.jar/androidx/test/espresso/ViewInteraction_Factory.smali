.class public final Landroidx/test/espresso/ViewInteraction_Factory;
.super Ljava/lang/Object;
.source "ViewInteraction_Factory.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory<",
        "Landroidx/test/espresso/ViewInteraction;",
        ">;"
    }
.end annotation


# instance fields
.field private final controlledLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
            ">;"
        }
    .end annotation
.end field

.field private final failureHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/FailureHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final needsActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final remoteExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteInteractionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/remote/RemoteInteraction;",
            ">;"
        }
    .end annotation
.end field

.field private final rootMatcherRefProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final uiControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/UiController;",
            ">;"
        }
    .end annotation
.end field

.field private final viewFinderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/ViewFinder;",
            ">;"
        }
    .end annotation
.end field

.field private final viewMatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 11
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
            "uiControllerProvider",
            "viewFinderProvider",
            "mainThreadExecutorProvider",
            "failureHandlerProvider",
            "viewMatcherProvider",
            "rootMatcherRefProvider",
            "needsActivityProvider",
            "remoteInteractionProvider",
            "remoteExecutorProvider",
            "controlledLooperProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/UiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/ViewFinder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/FailureHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/remote/RemoteInteraction;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/test/espresso/ViewInteraction_Factory;->uiControllerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p2, p0, Landroidx/test/espresso/ViewInteraction_Factory;->viewFinderProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Landroidx/test/espresso/ViewInteraction_Factory;->mainThreadExecutorProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Landroidx/test/espresso/ViewInteraction_Factory;->failureHandlerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p5, p0, Landroidx/test/espresso/ViewInteraction_Factory;->viewMatcherProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p6, p0, Landroidx/test/espresso/ViewInteraction_Factory;->rootMatcherRefProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p7, p0, Landroidx/test/espresso/ViewInteraction_Factory;->needsActivityProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p8, p0, Landroidx/test/espresso/ViewInteraction_Factory;->remoteInteractionProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p9, p0, Landroidx/test/espresso/ViewInteraction_Factory;->remoteExecutorProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p10, p0, Landroidx/test/espresso/ViewInteraction_Factory;->controlledLooperProvider:Ljavax/inject/Provider;

    .line 57
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Landroidx/test/espresso/ViewInteraction_Factory;
    .registers 22
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
            "uiControllerProvider",
            "viewFinderProvider",
            "mainThreadExecutorProvider",
            "failureHandlerProvider",
            "viewMatcherProvider",
            "rootMatcherRefProvider",
            "needsActivityProvider",
            "remoteInteractionProvider",
            "remoteExecutorProvider",
            "controlledLooperProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/UiController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/ViewFinder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/FailureHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/remote/RemoteInteraction;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
            ">;)",
            "Landroidx/test/espresso/ViewInteraction_Factory;"
        }
    .end annotation

    .line 72
    new-instance v11, Landroidx/test/espresso/ViewInteraction_Factory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroidx/test/espresso/ViewInteraction_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static newInstance(Landroidx/test/espresso/UiController;Landroidx/test/espresso/ViewFinder;Ljava/util/concurrent/Executor;Landroidx/test/espresso/FailureHandler;Lorg/hamcrest/Matcher;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/test/espresso/remote/RemoteInteraction;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;Landroidx/test/internal/platform/os/ControlledLooper;)Landroidx/test/espresso/ViewInteraction;
    .registers 22
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
            ")",
            "Landroidx/test/espresso/ViewInteraction;"
        }
    .end annotation

    .line 80
    new-instance v11, Landroidx/test/espresso/ViewInteraction;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroidx/test/espresso/ViewInteraction;-><init>(Landroidx/test/espresso/UiController;Landroidx/test/espresso/ViewFinder;Ljava/util/concurrent/Executor;Landroidx/test/espresso/FailureHandler;Lorg/hamcrest/Matcher;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/test/espresso/remote/RemoteInteraction;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;Landroidx/test/internal/platform/os/ControlledLooper;)V

    return-object v11
.end method


# virtual methods
.method public get()Landroidx/test/espresso/ViewInteraction;
    .registers 13

    .line 61
    new-instance v11, Landroidx/test/espresso/ViewInteraction;

    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction_Factory;->uiControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/test/espresso/UiController;

    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction_Factory;->viewFinderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/test/espresso/ViewFinder;

    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction_Factory;->mainThreadExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction_Factory;->failureHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/test/espresso/FailureHandler;

    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction_Factory;->viewMatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/hamcrest/Matcher;

    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction_Factory;->rootMatcherRefProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction_Factory;->needsActivityProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction_Factory;->remoteInteractionProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/test/espresso/remote/RemoteInteraction;

    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction_Factory;->remoteExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;

    iget-object v0, p0, Landroidx/test/espresso/ViewInteraction_Factory;->controlledLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/test/internal/platform/os/ControlledLooper;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroidx/test/espresso/ViewInteraction;-><init>(Landroidx/test/espresso/UiController;Landroidx/test/espresso/ViewFinder;Ljava/util/concurrent/Executor;Landroidx/test/espresso/FailureHandler;Lorg/hamcrest/Matcher;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/test/espresso/remote/RemoteInteraction;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;Landroidx/test/internal/platform/os/ControlledLooper;)V

    return-object v11
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0}, Landroidx/test/espresso/ViewInteraction_Factory;->get()Landroidx/test/espresso/ViewInteraction;

    move-result-object v0

    return-object v0
.end method
