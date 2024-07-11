.class final Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;
.super Ljava/lang/Object;
.source "DaggerBaseLayerComponent.java"

# interfaces
.implements Landroidx/test/espresso/ViewInteractionComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/DaggerBaseLayerComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewInteractionComponentImpl"
.end annotation


# instance fields
.field private provideNeedsActivityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideRootMatcherProvider:Ljavax/inject/Provider;
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

.field private provideRootViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private rootResultFetcherProvider:Ljavax/inject/Provider;

.field private rootViewPickerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/RootViewPicker;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/test/espresso/DaggerBaseLayerComponent;

.field private final viewInteractionModule:Landroidx/test/espresso/ViewInteractionModule;


# direct methods
.method private constructor <init>(Landroidx/test/espresso/DaggerBaseLayerComponent;Landroidx/test/espresso/ViewInteractionModule;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "module"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->this$0:Landroidx/test/espresso/DaggerBaseLayerComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->viewInteractionModule:Landroidx/test/espresso/ViewInteractionModule;

    .line 219
    invoke-direct {p0, p2}, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->initialize(Landroidx/test/espresso/ViewInteractionModule;)V

    .line 220
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/DaggerBaseLayerComponent;Landroidx/test/espresso/ViewInteractionModule;Landroidx/test/espresso/DaggerBaseLayerComponent$1;)V
    .registers 4

    .line 203
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;-><init>(Landroidx/test/espresso/DaggerBaseLayerComponent;Landroidx/test/espresso/ViewInteractionModule;)V

    return-void
.end method

.method private getViewFinder()Landroidx/test/espresso/ViewFinder;
    .registers 3

    .line 226
    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->viewInteractionModule:Landroidx/test/espresso/ViewInteractionModule;

    invoke-direct {p0}, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->getViewFinderImpl()Landroidx/test/espresso/base/ViewFinderImpl;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/ViewInteractionModule_ProvideViewFinderFactory;->provideViewFinder(Landroidx/test/espresso/ViewInteractionModule;Landroidx/test/espresso/base/ViewFinderImpl;)Landroidx/test/espresso/ViewFinder;

    move-result-object v0

    return-object v0
.end method

.method private getViewFinderImpl()Landroidx/test/espresso/base/ViewFinderImpl;
    .registers 3

    .line 223
    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->viewInteractionModule:Landroidx/test/espresso/ViewInteractionModule;

    invoke-static {v0}, Landroidx/test/espresso/ViewInteractionModule_ProvideViewMatcherFactory;->provideViewMatcher(Landroidx/test/espresso/ViewInteractionModule;)Lorg/hamcrest/Matcher;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->provideRootViewProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Landroidx/test/espresso/base/ViewFinderImpl_Factory;->newInstance(Lorg/hamcrest/Matcher;Ljavax/inject/Provider;)Landroidx/test/espresso/base/ViewFinderImpl;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Landroidx/test/espresso/ViewInteractionModule;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "module"
        }
    .end annotation

    .line 230
    invoke-static {p1}, Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;->create(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->provideRootMatcherProvider:Ljavax/inject/Provider;

    .line 231
    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->this$0:Landroidx/test/espresso/DaggerBaseLayerComponent;

    # getter for: Landroidx/test/espresso/DaggerBaseLayerComponent;->provideActiveRootListerProvider:Ljavax/inject/Provider;
    invoke-static {v0}, Landroidx/test/espresso/DaggerBaseLayerComponent;->access$300(Landroidx/test/espresso/DaggerBaseLayerComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->provideRootMatcherProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->rootResultFetcherProvider:Ljavax/inject/Provider;

    .line 232
    invoke-static {p1}, Landroidx/test/espresso/ViewInteractionModule_ProvideNeedsActivityFactory;->create(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/ViewInteractionModule_ProvideNeedsActivityFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->provideNeedsActivityProvider:Ljavax/inject/Provider;

    .line 233
    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->this$0:Landroidx/test/espresso/DaggerBaseLayerComponent;

    # getter for: Landroidx/test/espresso/DaggerBaseLayerComponent;->provideUiControllerProvider:Ljavax/inject/Provider;
    invoke-static {v0}, Landroidx/test/espresso/DaggerBaseLayerComponent;->access$400(Landroidx/test/espresso/DaggerBaseLayerComponent;)Ljavax/inject/Provider;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->rootResultFetcherProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->this$0:Landroidx/test/espresso/DaggerBaseLayerComponent;

    # getter for: Landroidx/test/espresso/DaggerBaseLayerComponent;->provideLifecycleMonitorProvider:Ljavax/inject/Provider;
    invoke-static {v2}, Landroidx/test/espresso/DaggerBaseLayerComponent;->access$500(Landroidx/test/espresso/DaggerBaseLayerComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v3, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->provideNeedsActivityProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->this$0:Landroidx/test/espresso/DaggerBaseLayerComponent;

    # getter for: Landroidx/test/espresso/DaggerBaseLayerComponent;->provideControlledLooperProvider:Ljavax/inject/Provider;
    invoke-static {v4}, Landroidx/test/espresso/DaggerBaseLayerComponent;->access$600(Landroidx/test/espresso/DaggerBaseLayerComponent;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/test/espresso/base/RootViewPicker_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Landroidx/test/espresso/base/RootViewPicker_Factory;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->rootViewPickerProvider:Ljavax/inject/Provider;

    .line 234
    invoke-static {p1, v0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRootViewFactory;->create(Landroidx/test/espresso/ViewInteractionModule;Ljavax/inject/Provider;)Landroidx/test/espresso/ViewInteractionModule_ProvideRootViewFactory;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->provideRootViewProvider:Ljavax/inject/Provider;

    .line 235
    return-void
.end method


# virtual methods
.method public viewInteraction()Landroidx/test/espresso/ViewInteraction;
    .registers 13

    .line 239
    new-instance v11, Landroidx/test/espresso/ViewInteraction;

    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->this$0:Landroidx/test/espresso/DaggerBaseLayerComponent;

    # getter for: Landroidx/test/espresso/DaggerBaseLayerComponent;->provideUiControllerProvider:Ljavax/inject/Provider;
    invoke-static {v0}, Landroidx/test/espresso/DaggerBaseLayerComponent;->access$400(Landroidx/test/espresso/DaggerBaseLayerComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/test/espresso/UiController;

    invoke-direct {p0}, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->getViewFinder()Landroidx/test/espresso/ViewFinder;

    move-result-object v2

    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->this$0:Landroidx/test/espresso/DaggerBaseLayerComponent;

    # getter for: Landroidx/test/espresso/DaggerBaseLayerComponent;->provideMainThreadExecutorProvider:Ljavax/inject/Provider;
    invoke-static {v0}, Landroidx/test/espresso/DaggerBaseLayerComponent;->access$700(Landroidx/test/espresso/DaggerBaseLayerComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->this$0:Landroidx/test/espresso/DaggerBaseLayerComponent;

    invoke-virtual {v0}, Landroidx/test/espresso/DaggerBaseLayerComponent;->failureHandler()Landroidx/test/espresso/FailureHandler;

    move-result-object v4

    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->viewInteractionModule:Landroidx/test/espresso/ViewInteractionModule;

    invoke-static {v0}, Landroidx/test/espresso/ViewInteractionModule_ProvideViewMatcherFactory;->provideViewMatcher(Landroidx/test/espresso/ViewInteractionModule;)Lorg/hamcrest/Matcher;

    move-result-object v5

    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->viewInteractionModule:Landroidx/test/espresso/ViewInteractionModule;

    invoke-static {v0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;->provideRootMatcher(Landroidx/test/espresso/ViewInteractionModule;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->viewInteractionModule:Landroidx/test/espresso/ViewInteractionModule;

    invoke-static {v0}, Landroidx/test/espresso/ViewInteractionModule_ProvideNeedsActivityFactory;->provideNeedsActivity(Landroidx/test/espresso/ViewInteractionModule;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->viewInteractionModule:Landroidx/test/espresso/ViewInteractionModule;

    invoke-static {v0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;->provideRemoteInteraction(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/remote/RemoteInteraction;

    move-result-object v8

    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->this$0:Landroidx/test/espresso/DaggerBaseLayerComponent;

    # getter for: Landroidx/test/espresso/DaggerBaseLayerComponent;->provideRemoteExecutorProvider:Ljavax/inject/Provider;
    invoke-static {v0}, Landroidx/test/espresso/DaggerBaseLayerComponent;->access$800(Landroidx/test/espresso/DaggerBaseLayerComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;

    iget-object v0, p0, Landroidx/test/espresso/DaggerBaseLayerComponent$ViewInteractionComponentImpl;->this$0:Landroidx/test/espresso/DaggerBaseLayerComponent;

    # getter for: Landroidx/test/espresso/DaggerBaseLayerComponent;->provideControlledLooperProvider:Ljavax/inject/Provider;
    invoke-static {v0}, Landroidx/test/espresso/DaggerBaseLayerComponent;->access$600(Landroidx/test/espresso/DaggerBaseLayerComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/test/internal/platform/os/ControlledLooper;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroidx/test/espresso/ViewInteraction;-><init>(Landroidx/test/espresso/UiController;Landroidx/test/espresso/ViewFinder;Ljava/util/concurrent/Executor;Landroidx/test/espresso/FailureHandler;Lorg/hamcrest/Matcher;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/test/espresso/remote/RemoteInteraction;Landroidx/test/espresso/core/internal/deps/guava/util/concurrent/ListeningExecutorService;Landroidx/test/internal/platform/os/ControlledLooper;)V

    return-object v11
.end method
