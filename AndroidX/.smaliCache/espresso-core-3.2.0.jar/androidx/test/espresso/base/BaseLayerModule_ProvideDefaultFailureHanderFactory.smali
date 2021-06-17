.class public final Landroidx/test/espresso/base/BaseLayerModule_ProvideDefaultFailureHanderFactory;
.super Ljava/lang/Object;
.source "BaseLayerModule_ProvideDefaultFailureHanderFactory.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory<",
        "Landroidx/test/espresso/base/DefaultFailureHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/BaseLayerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideDefaultFailureHanderFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    .line 21
    iput-object p2, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideDefaultFailureHanderFactory;->contextProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method

.method public static create(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_ProvideDefaultFailureHanderFactory;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/BaseLayerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Landroidx/test/espresso/base/BaseLayerModule_ProvideDefaultFailureHanderFactory;"
        }
    .end annotation

    .line 31
    new-instance v0, Landroidx/test/espresso/base/BaseLayerModule_ProvideDefaultFailureHanderFactory;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideDefaultFailureHanderFactory;-><init>(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDefaultFailureHander(Landroidx/test/espresso/base/BaseLayerModule;Landroid/content/Context;)Landroidx/test/espresso/base/DefaultFailureHandler;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "context"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Landroidx/test/espresso/base/BaseLayerModule;->provideDefaultFailureHander(Landroid/content/Context;)Landroidx/test/espresso/base/DefaultFailureHandler;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/base/DefaultFailureHandler;

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/DefaultFailureHandler;
    .registers 3

    .line 26
    iget-object v0, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideDefaultFailureHanderFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    iget-object v1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideDefaultFailureHanderFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideDefaultFailureHanderFactory;->provideDefaultFailureHander(Landroidx/test/espresso/base/BaseLayerModule;Landroid/content/Context;)Landroidx/test/espresso/base/DefaultFailureHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 9
    invoke-virtual {p0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideDefaultFailureHanderFactory;->get()Landroidx/test/espresso/base/DefaultFailureHandler;

    move-result-object v0

    return-object v0
.end method
