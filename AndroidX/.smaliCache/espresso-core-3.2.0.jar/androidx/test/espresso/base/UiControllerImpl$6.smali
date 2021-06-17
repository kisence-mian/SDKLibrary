.class Landroidx/test/espresso/base/UiControllerImpl$6;
.super Ljava/lang/Object;
.source "UiControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/base/UiControllerImpl;->interruptEspressoTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/base/UiControllerImpl;


# direct methods
.method constructor <init>(Landroidx/test/espresso/base/UiControllerImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 563
    iput-object p1, p0, Landroidx/test/espresso/base/UiControllerImpl$6;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 566
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$6;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    # getter for: Landroidx/test/espresso/base/UiControllerImpl;->interrogation:Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;
    invoke-static {v0}, Landroidx/test/espresso/base/UiControllerImpl;->access$400(Landroidx/test/espresso/base/UiControllerImpl;)Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 567
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$6;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    # getter for: Landroidx/test/espresso/base/UiControllerImpl;->interrogation:Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;
    invoke-static {v0}, Landroidx/test/espresso/base/UiControllerImpl;->access$400(Landroidx/test/espresso/base/UiControllerImpl;)Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/base/UiControllerImpl$MainThreadInterrogation;->interruptInterrogation()V

    .line 568
    iget-object v0, p0, Landroidx/test/espresso/base/UiControllerImpl$6;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    # getter for: Landroidx/test/espresso/base/UiControllerImpl;->controllerHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroidx/test/espresso/base/UiControllerImpl;->access$200(Landroidx/test/espresso/base/UiControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/base/UiControllerImpl$6;->this$0:Landroidx/test/espresso/base/UiControllerImpl;

    # getter for: Landroidx/test/espresso/base/UiControllerImpl;->generation:I
    invoke-static {v1}, Landroidx/test/espresso/base/UiControllerImpl;->access$500(Landroidx/test/espresso/base/UiControllerImpl;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 570
    :cond_24
    return-void
.end method
