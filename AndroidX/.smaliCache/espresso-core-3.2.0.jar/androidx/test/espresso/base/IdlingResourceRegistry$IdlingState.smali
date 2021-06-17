.class Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;
.super Ljava/lang/Object;
.source "IdlingResourceRegistry.java"

# interfaces
.implements Landroidx/test/espresso/IdlingResource$ResourceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/IdlingResourceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdlingState"
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field idle:Z

.field final resource:Landroidx/test/espresso/IdlingResource;


# direct methods
.method private constructor <init>(Landroidx/test/espresso/IdlingResource;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resource",
            "handler"
        }
    .end annotation

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    .line 385
    iput-object p2, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->handler:Landroid/os/Handler;

    .line 386
    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/IdlingResource;Landroid/os/Handler;Landroidx/test/espresso/base/IdlingResourceRegistry$1;)V
    .registers 4

    .line 375
    invoke-direct {p0, p1, p2}, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;-><init>(Landroidx/test/espresso/IdlingResource;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;)V
    .registers 1

    .line 375
    invoke-direct {p0}, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->registerSelf()V

    return-void
.end method

.method private registerSelf()V
    .registers 2

    .line 390
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-interface {v0, p0}, Landroidx/test/espresso/IdlingResource;->registerIdleTransitionCallback(Landroidx/test/espresso/IdlingResource$ResourceCallback;)V

    .line 391
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->resource:Landroidx/test/espresso/IdlingResource;

    invoke-interface {v0}, Landroidx/test/espresso/IdlingResource;->isIdleNow()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->idle:Z

    .line 392
    return-void
.end method


# virtual methods
.method public onTransitionToIdle()V
    .registers 3

    .line 397
    iget-object v0, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 398
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 399
    iget-object v1, p0, Landroidx/test/espresso/base/IdlingResourceRegistry$IdlingState;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 400
    return-void
.end method
