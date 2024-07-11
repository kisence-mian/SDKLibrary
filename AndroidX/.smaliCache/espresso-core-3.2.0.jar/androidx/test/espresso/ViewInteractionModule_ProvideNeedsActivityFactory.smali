.class public final Landroidx/test/espresso/ViewInteractionModule_ProvideNeedsActivityFactory;
.super Ljava/lang/Object;
.source "ViewInteractionModule_ProvideNeedsActivityFactory.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory<",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Boolean;",
        ">;>;"
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
    iput-object p1, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideNeedsActivityFactory;->module:Landroidx/test/espresso/ViewInteractionModule;

    .line 17
    return-void
.end method

.method public static create(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/ViewInteractionModule_ProvideNeedsActivityFactory;
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
    new-instance v0, Landroidx/test/espresso/ViewInteractionModule_ProvideNeedsActivityFactory;

    invoke-direct {v0, p0}, Landroidx/test/espresso/ViewInteractionModule_ProvideNeedsActivityFactory;-><init>(Landroidx/test/espresso/ViewInteractionModule;)V

    return-object v0
.end method

.method public static provideNeedsActivity(Landroidx/test/espresso/ViewInteractionModule;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/ViewInteractionModule;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Landroidx/test/espresso/ViewInteractionModule;->provideNeedsActivity()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Landroidx/test/espresso/core/internal/deps/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Landroidx/test/espresso/ViewInteractionModule_ProvideNeedsActivityFactory;->get()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideNeedsActivityFactory;->module:Landroidx/test/espresso/ViewInteractionModule;

    invoke-static {v0}, Landroidx/test/espresso/ViewInteractionModule_ProvideNeedsActivityFactory;->provideNeedsActivity(Landroidx/test/espresso/ViewInteractionModule;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    return-object v0
.end method
