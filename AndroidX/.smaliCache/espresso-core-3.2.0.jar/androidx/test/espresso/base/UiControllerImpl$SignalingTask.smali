.class Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;
.super Ljava/util/concurrent/FutureTask;
.source "UiControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/base/UiControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final condition:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

.field private final myGeneration:I

.field final synthetic this$0:Landroidx/test/espresso/base/UiControllerImpl;


# direct methods
.method public constructor <init>(Landroidx/test/espresso/base/UiControllerImpl;Ljava/util/concurrent/Callable;Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "callable",
            "condition",
            "myGeneration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;",
            "I)V"
        }
    .end annotation

    .line 681
    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    .line 682
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 683
    invoke-static {p3}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;->condition:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    .line 684
    iput p4, p0, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;->myGeneration:I

    .line 685
    return-void
.end method


# virtual methods
.method protected done()V
    .registers 5

    .line 689
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    # getter for: Landroidx/test/espresso/base/UiControllerImpl;->controllerHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroidx/test/espresso/base/UiControllerImpl;->access$200(Landroidx/test/espresso/base/UiControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;->condition:Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;

    iget-object v2, p0, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    # getter for: Landroidx/test/espresso/base/UiControllerImpl;->controllerHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroidx/test/espresso/base/UiControllerImpl;->access$200(Landroidx/test/espresso/base/UiControllerImpl;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Landroidx/test/espresso/base/UiControllerImpl$SignalingTask;->myGeneration:I

    invoke-virtual {v1, v2, v3}, Landroidx/test/espresso/base/UiControllerImpl$IdleCondition;->createSignal(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 690
    return-void
.end method
