.class public final Landroidx/test/espresso/IdlingRegistry;
.super Ljava/lang/Object;
.source "IdlingRegistry.java"


# static fields
.field private static final instance:Landroidx/test/espresso/IdlingRegistry;


# instance fields
.field private final loopers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private final resources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/test/espresso/IdlingResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Landroidx/test/espresso/IdlingRegistry;

    invoke-direct {v0}, Landroidx/test/espresso/IdlingRegistry;-><init>()V

    sput-object v0, Landroidx/test/espresso/IdlingRegistry;->instance:Landroidx/test/espresso/IdlingRegistry;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/IdlingRegistry;->resources:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/IdlingRegistry;->loopers:Ljava/util/Set;

    .line 46
    return-void
.end method

.method public static getInstance()Landroidx/test/espresso/IdlingRegistry;
    .registers 1

    .line 53
    sget-object v0, Landroidx/test/espresso/IdlingRegistry;->instance:Landroidx/test/espresso/IdlingRegistry;

    return-object v0
.end method


# virtual methods
.method public getLoopers()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroidx/test/espresso/IdlingRegistry;->loopers:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getResources()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/test/espresso/IdlingResource;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroidx/test/espresso/IdlingRegistry;->resources:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public varargs register([Landroidx/test/espresso/IdlingResource;)Z
    .registers 4
    .param p1, "idlingResources"    # [Landroidx/test/espresso/IdlingResource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idlingResources"
        }
    .end annotation

    .line 63
    if-eqz p1, :cond_d

    .line 66
    iget-object v0, p0, Landroidx/test/espresso/IdlingRegistry;->resources:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 64
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "idlingResources cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerLooperAsIdlingResource(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "looper"
        }
    .end annotation

    .line 89
    if-eqz p1, :cond_16

    .line 92
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq v0, p1, :cond_e

    .line 96
    iget-object v0, p0, Landroidx/test/espresso/IdlingRegistry;->loopers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    return-void

    .line 93
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not intended for use with main looper!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "looper cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs unregister([Landroidx/test/espresso/IdlingResource;)Z
    .registers 4
    .param p1, "idlingResources"    # [Landroidx/test/espresso/IdlingResource;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idlingResources"
        }
    .end annotation

    .line 75
    if-eqz p1, :cond_d

    .line 78
    iget-object v0, p0, Landroidx/test/espresso/IdlingRegistry;->resources:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 76
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "idlingResources cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
