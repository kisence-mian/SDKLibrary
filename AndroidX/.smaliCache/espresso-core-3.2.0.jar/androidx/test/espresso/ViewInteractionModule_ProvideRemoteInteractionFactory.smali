.class public final Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;
.super Ljava/lang/Object;
.source "ViewInteractionModule_ProvideRemoteInteractionFactory.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory<",
        "Landroidx/test/espresso/remote/RemoteInteraction;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Landroidx/test/espresso/ViewInteractionModule;


# direct methods
.method public constructor <init>(Landroidx/test/espresso/ViewInteractionModule;)V
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
    iput-object p1, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;->module:Landroidx/test/espresso/ViewInteractionModule;

    .line 17
    return-void
.end method

.method public static create(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    .line 26
    new-instance v0, Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;

    invoke-direct {v0, p0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;-><init>(Landroidx/test/espresso/ViewInteractionModule;)V

    return-object v0
.end method

.method public static provideRemoteInteraction(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/remote/RemoteInteraction;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Landroidx/test/espresso/ViewInteractionModule;->provideRemoteInteraction()Landroidx/test/espresso/remote/RemoteInteraction;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/test/espresso/remote/RemoteInteraction;

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/test/espresso/remote/RemoteInteraction;
    .registers 2

    .line 21
    iget-object v0, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;->module:Landroidx/test/espresso/ViewInteractionModule;

    invoke-static {v0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;->provideRemoteInteraction(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/remote/RemoteInteraction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRemoteInteractionFactory;->get()Landroidx/test/espresso/remote/RemoteInteraction;

    move-result-object v0

    return-object v0
.end method
