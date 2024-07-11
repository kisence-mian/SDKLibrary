.class Landroidx/test/espresso/base/UiControllerImpl$5;
.super Ljava/lang/Object;
.source "UiControllerImpl.java"

# interfaces
.implements Landroidx/test/espresso/base/IdlingResourceRegistry$IdleNotificationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/base/UiControllerImpl;->loopMainThreadUntilIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/base/UiControllerImpl;

.field final synthetic val$error:Landroidx/test/espresso/IdlingPolicy;

.field final synthetic val$idleSignal:Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;

.field final synthetic val$warning:Landroidx/test/espresso/IdlingPolicy;


# direct methods
.method constructor <init>(Landroidx/test/espresso/base/UiControllerImpl;Landroidx/test/espresso/IdlingPolicy;Landroidx/test/espresso/IdlingPolicy;Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$warning",
            "val$error",
            "val$idleSignal"
        }
    .end annotation

    .line 426
    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl$5;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    iput-object p2, p0, Landroidx/test/espresso/base/UiControllerImpl$5;->val$warning:Landroidx/test/espresso/IdlingPolicy;

    iput-object p3, p0, Landroidx/test/espresso/base/UiControllerImpl$5;->val$error:Landroidx/test/espresso/IdlingPolicy;

    iput-object p4, p0, Landroidx/test/espresso/base/UiControllerImpl$5;->val$idleSignal:Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allResourcesIdle()V
    .registers 3

    .line 440
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$5;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    # getter for: Landroidx/test/espresso/base/UiControllerImpl;->controllerHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroidx/test/espresso/base/UiControllerImpl;->access$200(Landroidx/test/espresso/base/UiControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl$5;->val$idleSignal:Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    return-void
.end method

.method public resourcesHaveTimedOut(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "busyResourceNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$5;->val$error:Landroidx/test/espresso/IdlingPolicy;

    const-string v1, "IdlingResources have timed out!"

    invoke-virtual {v0, p1, v1}, Landroidx/test/espresso/IdlingPolicy;->handleTimeout(Ljava/util/List;Ljava/lang/String;)V

    .line 435
    iget-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl$5;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    # getter for: Landroidx/test/espresso/base/UiControllerImpl;->controllerHandler:Landroid/os/Handler;
    invoke-static {p1}, Landroidx/test/espresso/base/UiControllerImpl;->access$200(Landroidx/test/espresso/base/UiControllerImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$5;->val$idleSignal:Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 436
    return-void
.end method

.method public resourcesStillBusyWarning(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "busyResourceNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$5;->val$warning:Landroidx/test/espresso/IdlingPolicy;

    const-string v1, "IdlingResources are still busy!"

    invoke-virtual {v0, p1, v1}, Landroidx/test/espresso/IdlingPolicy;->handleTimeout(Ljava/util/List;Ljava/lang/String;)V

    .line 430
    return-void
.end method
