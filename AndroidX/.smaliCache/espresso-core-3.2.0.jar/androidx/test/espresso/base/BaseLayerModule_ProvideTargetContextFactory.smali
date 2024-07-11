.class public final Landroidx/test/espresso/base/BaseLayerModule_ProvideTargetContextFactory;
.super Ljava/lang/Object;
.source "BaseLayerModule_ProvideTargetContextFactory.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Landroidx/test/espresso/base/BaseLayerModule;


# direct methods
.method public constructor <init>(Landroidx/test/espresso/base/BaseLayerModule;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideTargetContextFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    .line 17
    return-void
.end method

.method public static create(Landroidx/test/espresso/base/BaseLayerModule;)Landroidx/test/espresso/base/BaseLayerModule_ProvideTargetContextFactory;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    .line 25
    new-instance v0, Landroidx/test/espresso/base/BaseLayerModule_ProvideTargetContextFactory;

    invoke-direct {v0, p0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideTargetContextFactory;-><init>(Landroidx/test/espresso/base/BaseLayerModule;)V

    return-object v0
.end method

.method public static provideTargetContext(Landroidx/test/espresso/base/BaseLayerModule;)Landroid/content/Context;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Landroidx/test/espresso/base/BaseLayerModule;->provideTargetContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/Context;
    .registers 2

    .line 21
    iget-object v0, p0, Landroidx/test/espresso/base/BaseLayerModule_ProvideTargetContextFactory;->module:Landroidx/test/espresso/base/BaseLayerModule;

    invoke-static {v0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideTargetContextFactory;->provideTargetContext(Landroidx/test/espresso/base/BaseLayerModule;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroidx/test/espresso/base/BaseLayerModule_ProvideTargetContextFactory;->get()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
