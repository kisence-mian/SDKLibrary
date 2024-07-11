.class public final Landroidx/test/espresso/GraphHolder;
.super Ljava/lang/Object;
.source "GraphHolder.java"


# static fields
.field private static final instance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/test/espresso/GraphHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final component:Landroidx/test/espresso/BaseLayerComponent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/test/espresso/GraphHolder;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Landroidx/test/espresso/BaseLayerComponent;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/BaseLayerComponent;

    iput-object p1, p0, Landroidx/test/espresso/GraphHolder;->component:Landroidx/test/espresso/BaseLayerComponent;

    .line 35
    return-void
.end method

.method static baseLayer()Landroidx/test/espresso/BaseLayerComponent;
    .registers 4

    .line 38
    sget-object v0, Landroidx/test/espresso/GraphHolder;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/espresso/GraphHolder;

    .line 39
    if-nez v1, :cond_31

    .line 40
    new-instance v1, Landroidx/test/espresso/GraphHolder;

    invoke-static {}, Landroidx/test/espresso/DaggerBaseLayerComponent;->create()Landroidx/test/espresso/BaseLayerComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/espresso/GraphHolder;-><init>(Landroidx/test/espresso/BaseLayerComponent;)V

    .line 41
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 42
    invoke-static {}, Landroidx/test/internal/runner/tracker/UsageTrackerRegistry;->getInstance()Landroidx/test/internal/runner/tracker/UsageTracker;

    move-result-object v0

    const-string v2, "Espresso"

    const-string v3, "3.2.0"

    invoke-interface {v0, v2, v3}, Landroidx/test/internal/runner/tracker/UsageTracker;->trackUsage(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, v1, Landroidx/test/espresso/GraphHolder;->component:Landroidx/test/espresso/BaseLayerComponent;

    return-object v0

    .line 45
    :cond_28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/GraphHolder;

    iget-object v0, v0, Landroidx/test/espresso/GraphHolder;->component:Landroidx/test/espresso/BaseLayerComponent;

    return-object v0

    .line 48
    :cond_31
    iget-object v0, v1, Landroidx/test/espresso/GraphHolder;->component:Landroidx/test/espresso/BaseLayerComponent;

    return-object v0
.end method
