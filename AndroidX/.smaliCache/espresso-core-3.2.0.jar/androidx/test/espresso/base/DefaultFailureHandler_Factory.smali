.class public final Landroidx/test/espresso/base/DefaultFailureHandler_Factory;
.super Ljava/lang/Object;
.source "DefaultFailureHandler_Factory.java"

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
.field private final appContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "appContextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroidx/test/espresso/base/DefaultFailureHandler_Factory;->appContextProvider:Ljavax/inject/Provider;

    .line 17
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Landroidx/test/espresso/base/DefaultFailureHandler_Factory;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appContextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Landroidx/test/espresso/base/DefaultFailureHandler_Factory;"
        }
    .end annotation

    .line 25
    new-instance v0, Landroidx/test/espresso/base/DefaultFailureHandler_Factory;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/DefaultFailureHandler_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Landroidx/test/espresso/base/DefaultFailureHandler;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appContext"
        }
    .end annotation

    .line 29
    new-instance v0, Landroidx/test/espresso/base/DefaultFailureHandler;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/DefaultFailureHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/DefaultFailureHandler;
    .registers 3

    .line 21
    new-instance v0, Landroidx/test/espresso/base/DefaultFailureHandler;

    iget-object v1, p0, Landroidx/test/espresso/base/DefaultFailureHandler_Factory;->appContextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/test/espresso/base/DefaultFailureHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroidx/test/espresso/base/DefaultFailureHandler_Factory;->get()Landroidx/test/espresso/base/DefaultFailureHandler;

    move-result-object v0

    return-object v0
.end method
