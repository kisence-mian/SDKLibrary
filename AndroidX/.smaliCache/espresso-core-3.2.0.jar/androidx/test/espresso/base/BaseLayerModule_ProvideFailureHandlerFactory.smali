.class public final Landroidx/test/espresso/base/BaseLayerModule_ProvideFailureHandlerFactory;
.super Ljava/lang/Object;
.source "BaseLayerModule_ProvideFailureHandlerFactory.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory<",
        "Landroidx/test/espresso/FailureHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final holderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;",
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
            "holderProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/BaseLayerModule;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideFailureHandlerFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    .line 21
    iput-object p2, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideFailureHandlerFactory;->holderProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method

.method public static create(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_ProvideFailureHandlerFactory;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "holderProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/BaseLayerModule;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;",
            ">;)",
            "Landroidx/test/espresso/base/BaseLayerModule_ProvideFailureHandlerFactory;"
        }
    .end annotation

    .line 31
    new-instance v0, Landroidx/test/espresso/base/BaseLayerModule_ProvideFailureHandlerFactory;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideFailureHandlerFactory;-><init>(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideFailureHandler(Landroidx/test/espresso/base/BaseLayerModule;Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;)Landroidx/test/espresso/FailureHandler;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "holder"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Landroidx/test/espresso/base/BaseLayerModule;->provideFailureHandler(Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;)Landroidx/test/espresso/FailureHandler;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/FailureHandler;

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/FailureHandler;
    .registers 3

    .line 26
    iget-object v0, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideFailureHandlerFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    iget-object v1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideFailureHandlerFactory;->holderProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;

    invoke-static {v0, v1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideFailureHandlerFactory;->provideFailureHandler(Landroidx/test/espresso/base/BaseLayerModule;Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;)Landroidx/test/espresso/FailureHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 9
    invoke-virtual {p0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideFailureHandlerFactory;->get()Landroidx/test/espresso/FailureHandler;

    move-result-object v0

    return-object v0
.end method
