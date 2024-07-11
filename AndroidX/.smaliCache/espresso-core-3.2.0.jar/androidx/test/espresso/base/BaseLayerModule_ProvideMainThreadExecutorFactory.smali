.class public final Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;
.super Ljava/lang/Object;
.source "BaseLayerModule_ProvideMainThreadExecutorFactory.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mainLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Landroidx/test/espresso/base/BaseLayerModule;


# direct methods
.method public constructor <init>(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "mainLooperProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/BaseLayerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    .line 22
    iput-object p2, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;->mainLooperProvider:Ljavax/inject/Provider;

    .line 23
    return-void
.end method

.method public static create(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "mainLooperProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/BaseLayerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;-><init>(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideMainThreadExecutor(Landroidx/test/espresso/base/BaseLayerModule;Landroid/os/Looper;)Ljava/util/concurrent/Executor;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "mainLooper"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Landroidx/test/espresso/base/BaseLayerModule;->provideMainThreadExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-virtual {p0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;->get()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/Executor;
    .registers 3

    .line 27
    iget-object v0, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    iget-object v1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;->mainLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-static {v0, v1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideMainThreadExecutorFactory;->provideMainThreadExecutor(Landroidx/test/espresso/base/BaseLayerModule;Landroid/os/Looper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method
