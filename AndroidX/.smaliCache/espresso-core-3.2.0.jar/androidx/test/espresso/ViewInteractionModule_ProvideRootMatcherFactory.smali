.class public final Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;
.super Ljava/lang/Object;
.source "ViewInteractionModule_ProvideRootMatcherFactory.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/dagger/internal/Factory<",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lorg/hamcrest/Matcher<",
        "Landroidx/test/espresso/Root;",
        ">;>;>;"
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;->module:Landroidx/test/espresso/ViewInteractionModule;

    .line 18
    return-void
.end method

.method public static create(Landroidx/test/espresso/ViewInteractionModule;)Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    .line 27
    new-instance v0, Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;

    invoke-direct {v0, p0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;-><init>(Landroidx/test/espresso/ViewInteractionModule;)V

    return-object v0
.end method

.method public static provideRootMatcher(Landroidx/test/espresso/ViewInteractionModule;)Ljava/util/concurrent/atomic/AtomicReference;
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
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Landroidx/test/espresso/ViewInteractionModule;->provideRootMatcher()Ljava/util/concurrent/atomic/AtomicReference;

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

    .line 9
    invoke-virtual {p0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;->get()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/hamcrest/Matcher<",
            "Landroidx/test/espresso/Root;",
            ">;>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;->module:Landroidx/test/espresso/ViewInteractionModule;

    invoke-static {v0}, Landroidx/test/espresso/ViewInteractionModule_ProvideRootMatcherFactory;->provideRootMatcher(Landroidx/test/espresso/ViewInteractionModule;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    return-object v0
.end method
