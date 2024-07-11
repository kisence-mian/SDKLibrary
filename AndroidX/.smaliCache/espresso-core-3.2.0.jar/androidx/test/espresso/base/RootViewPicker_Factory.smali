.class public final Landroidx/test/espresso/base/RootViewPicker_Factory;
.super Ljava/lang/Object;
.source "RootViewPicker_Factory.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory<",
        "Landroidx/test/espresso/base/RootViewPicker;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityLifecycleMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final controlledLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
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

.field private final rootResultFetcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;",
            ">;"
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "uiControllerProvider",
            "rootResultFetcherProvider",
            "activityLifecycleMonitorProvider",
            "needsActivityProvider",
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
            "Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->uiControllerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->rootResultFetcherProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->activityLifecycleMonitorProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->needsActivityProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p5, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->controlledLooperProvider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Landroidx/test/espresso/base/RootViewPicker_Factory;
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uiControllerProvider",
            "rootResultFetcherProvider",
            "activityLifecycleMonitorProvider",
            "needsActivityProvider",
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
            "Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
            ">;)",
            "Landroidx/test/espresso/base/RootViewPicker_Factory;"
        }
    .end annotation

    .line 48
    new-instance v6, Landroidx/test/espresso/base/RootViewPicker_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/base/RootViewPicker_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Landroidx/test/espresso/UiController;Ljava/lang/Object;Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/test/internal/platform/os/ControlledLooper;)Landroidx/test/espresso/base/RootViewPicker;
    .registers 12
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
            "Ljava/lang/Object;",
            "Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/test/internal/platform/os/ControlledLooper;",
            ")",
            "Landroidx/test/espresso/base/RootViewPicker;"
        }
    .end annotation

    .line 54
    new-instance v6, Landroidx/test/espresso/base/RootViewPicker;

    move-object v2, p1

    check-cast v2, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/base/RootViewPicker;-><init>(Landroidx/test/espresso/UiController;Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/test/internal/platform/os/ControlledLooper;)V

    return-object v6
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/RootViewPicker;
    .registers 8

    .line 40
    new-instance v6, Landroidx/test/espresso/base/RootViewPicker;

    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->uiControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/test/espresso/UiController;

    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->rootResultFetcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;

    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->activityLifecycleMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->needsActivityProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Landroidx/test/espresso/base/RootViewPicker_Factory;->controlledLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/test/internal/platform/os/ControlledLooper;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/test/espresso/base/RootViewPicker;-><init>(Landroidx/test/espresso/UiController;Landroidx/test/espresso/base/RootViewPicker$RootResultFetcher;Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/test/internal/platform/os/ControlledLooper;)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Landroidx/test/espresso/base/RootViewPicker_Factory;->get()Landroidx/test/espresso/base/RootViewPicker;

    move-result-object v0

    return-object v0
.end method
