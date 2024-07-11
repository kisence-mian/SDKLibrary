.class public Landroidx/test/espresso/remote/RemoteInteractionRegistry;
.super Ljava/lang/Object;
.source "RemoteInteractionRegistry.java"


# static fields
.field private static final sInstance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/test/espresso/remote/RemoteInteraction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroidx/test/espresso/remote/NoopRemoteInteraction;

    invoke-direct {v1}, Landroidx/test/espresso/remote/NoopRemoteInteraction;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/test/espresso/remote/RemoteInteractionRegistry;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Landroidx/test/espresso/remote/RemoteInteraction;
    .registers 1

    .line 41
    sget-object v0, Landroidx/test/espresso/remote/RemoteInteractionRegistry;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/remote/RemoteInteraction;

    return-object v0
.end method

.method public static registerInstance(Landroidx/test/espresso/remote/RemoteInteraction;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remoteInteraction"
        }
    .end annotation

    .line 53
    if-nez p0, :cond_d

    .line 54
    sget-object p0, Landroidx/test/espresso/remote/RemoteInteractionRegistry;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Landroidx/test/espresso/remote/NoopRemoteInteraction;

    invoke-direct {v0}, Landroidx/test/espresso/remote/NoopRemoteInteraction;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_12

    .line 56
    :cond_d
    sget-object v0, Landroidx/test/espresso/remote/RemoteInteractionRegistry;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 58
    :goto_12
    return-void
.end method
