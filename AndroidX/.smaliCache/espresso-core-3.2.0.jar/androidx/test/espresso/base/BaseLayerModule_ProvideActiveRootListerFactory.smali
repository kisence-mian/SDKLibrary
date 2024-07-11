.class public final Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;
.super Ljava/lang/Object;
.source "BaseLayerModule_ProvideActiveRootListerFactory.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory<",
        "Landroidx/test/espresso/base/ActiveRootLister;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Landroidx/test/espresso/base/BaseLayerModule;

.field private final rootsOracleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/RootsOracle;",
            ">;"
        }
    .end annotation
.end field


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
            "rootsOracleProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/BaseLayerModule;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/RootsOracle;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    .line 20
    iput-object p2, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;->rootsOracleProvider:Ljavax/inject/Provider;

    .line 21
    return-void
.end method

.method public static create(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "rootsOracleProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/base/BaseLayerModule;",
            "Ljavax/inject/Provider<",
            "Landroidx/test/espresso/base/RootsOracle;",
            ">;)",
            "Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;"
        }
    .end annotation

    .line 30
    new-instance v0, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;-><init>(Landroidx/test/espresso/base/BaseLayerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideActiveRootLister(Landroidx/test/espresso/base/BaseLayerModule;Ljava/lang/Object;)Landroidx/test/espresso/base/ActiveRootLister;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "rootsOracle"
        }
    .end annotation

    .line 35
    check-cast p1, Landroidx/test/espresso/base/RootsOracle;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/base/BaseLayerModule;->provideActiveRootLister(Landroidx/test/espresso/base/RootsOracle;)Landroidx/test/espresso/base/ActiveRootLister;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/base/ActiveRootLister;

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/base/ActiveRootLister;
    .registers 3

    .line 25
    iget-object v0, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    iget-object v1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;->rootsOracleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;->provideActiveRootLister(Landroidx/test/espresso/base/BaseLayerModule;Ljava/lang/Object;)Landroidx/test/espresso/base/ActiveRootLister;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideActiveRootListerFactory;->get()Landroidx/test/espresso/base/ActiveRootLister;

    move-result-object v0

    return-object v0
.end method
