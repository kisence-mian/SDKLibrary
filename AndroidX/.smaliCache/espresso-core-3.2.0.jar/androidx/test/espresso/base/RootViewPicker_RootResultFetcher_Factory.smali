.class public final Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;
.super Ljava/lang/Object;
.source "RootViewPicker_RootResultFetcher_Factory.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory<",
        "Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final activeRootListerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/ActiveRootLister;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activeRootListerProvider",
            "rootMatcherRefProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/ActiveRootLister;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;->activeRootListerProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;->rootMatcherRefProvider:Ljavax/inject/Provider;

    .line 24
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activeRootListerProvider",
            "rootMatcherRefProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/ActiveRootLister;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;>;)",
            "Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;"
        }
    .end annotation

    .line 34
    new-instance v0, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/test/espresso/base/ActiveRootLister;Ljava/util/concurrent/atomic/AtomicReference;)Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activeRootLister",
            "rootMatcherRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/ActiveRootLister;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;)",
            "Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;"
        }
    .end annotation

    .line 39
    new-instance v0, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;-><init>(Landroidx/test/espresso/base/ActiveRootLister;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;
    .registers 4

    .line 28
    new-instance v0, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

    iget-object v1, p0, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;->activeRootListerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/base/ActiveRootLister;

    iget-object v2, p0, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;->rootMatcherRefProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;-><init>(Landroidx/test/espresso/base/ActiveRootLister;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0}, Landroidx/test/espresso/base/RootViewPicker_RootResultFetcher_Factory;->get()Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

    move-result-object v0

    return-object v0
.end method
