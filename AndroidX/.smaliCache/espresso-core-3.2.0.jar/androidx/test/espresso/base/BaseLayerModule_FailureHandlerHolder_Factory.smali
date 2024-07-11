.class public final Landroidx/test/espresso/base/BaseLayerModule_FailureHandlerHolder_Factory;
.super Ljava/lang/Object;
.source "BaseLayerModule_FailureHandlerHolder_Factory.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory<",
        "Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final defaultHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/FailureHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultHandlerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/FailureHandler;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Landroidx/test/espresso/base/BaseLayerModule_FailureHandlerHolder_Factory;->defaultHandlerProvider:Ljavax/inject/Provider;

    .line 18
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_FailureHandlerHolder_Factory;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultHandlerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/FailureHandler;",
            ">;)",
            "Landroidx/test/espresso/base/BaseLayerModule_FailureHandlerHolder_Factory;"
        }
    .end annotation

    .line 27
    new-instance v0, Landroidx/test/espresso/base/BaseLayerModule_FailureHandlerHolder_Factory;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/BaseLayerModule_FailureHandlerHolder_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/test/espresso/FailureHandler;)Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultHandler"
        }
    .end annotation

    .line 31
    new-instance v0, Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;-><init>(Landroidx/test/espresso/FailureHandler;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;
    .registers 3

    .line 22
    new-instance v0, Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;

    iget-object v1, p0, Landroidx/test/espresso/base/BaseLayerModule_FailureHandlerHolder_Factory;->defaultHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/FailureHandler;

    invoke-direct {v0, v1}, Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;-><init>(Landroidx/test/espresso/FailureHandler;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroidx/test/espresso/base/BaseLayerModule_FailureHandlerHolder_Factory;->get()Landroidx/test/espresso/base/BaseLayerModule$FailureHandlerHolder;

    move-result-object v0

    return-object v0
.end method
