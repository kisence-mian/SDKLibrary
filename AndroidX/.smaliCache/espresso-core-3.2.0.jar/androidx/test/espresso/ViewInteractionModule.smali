.class Landroidx/test/espresso/ViewInteractionModule;
.super Ljava/lang/Object;
.source "ViewInteractionModule.java"


# instance fields
.field private final needsActivity:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final rootMatcher:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;"
        }
    .end annotation
.end field

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
.method constructor <init>(Lorg/hamcrest/Matcher;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Landroidx/test/espresso/matcher/RootMatchers;->DEFAULT:Lorg/hamcrest/Matcher;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/test/espresso/ViewInteractionModule;->rootMatcher:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/test/espresso/ViewInteractionModule;->needsActivity:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/hamcrest/Matcher;

    iput-object p1, p0, Landroidx/test/espresso/ViewInteractionModule;->viewMatcher:Lorg/hamcrest/Matcher;

    .line 47
    return-void
.end method


# virtual methods
.method provideNeedsActivity()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Landroidx/test/espresso/ViewInteractionModule;->needsActivity:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method provideRemoteInteraction()Landroidx/test/espresso/remote/RemoteInteraction;
    .registers 2

    .line 51
    invoke-static {}, Landroidx/test/espresso/remote/RemoteInteractionRegistry;->getInstance()Landroidx/test/espresso/remote/RemoteInteraction;

    move-result-object v0

    return-object v0
.end method

.method provideRootMatcher()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Landroidx/test/espresso/ViewInteractionModule;->rootMatcher:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public provideRootView(Landroidx/test/espresso/base/RootViewPicker;)Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootViewPicker"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Landroidx/test/espresso/base/RootViewPicker;->get()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method provideViewFinder(Landroidx/test/espresso/base/ViewFinderImpl;)Landroidx/test/espresso/ViewFinder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 71
    return-object p1
.end method

.method provideViewMatcher()Lorg/hamcrest/Matcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroidx/test/espresso/ViewInteractionModule;->viewMatcher:Lorg/hamcrest/Matcher;

    return-object v0
.end method
