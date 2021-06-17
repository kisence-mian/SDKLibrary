.class Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult$1;
.super Ljava/lang/Object;
.source "CloseKeyboardAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->scheduleTimeout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;


# direct methods
.method constructor <init>(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult$1;->this$0:Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 167
    iget-object v0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult$1;->this$0:Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;

    # getter for: Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->receivedResult:Z
    invoke-static {v0}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->access$400(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 168
    iget-object v0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult$1;->this$0:Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;

    const/4 v1, 0x1

    # setter for: Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->timedOut:Z
    invoke-static {v0, v1}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->access$202(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;Z)Z

    .line 169
    iget-object v0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult$1;->this$0:Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;

    # getter for: Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->resourceCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;
    invoke-static {v0}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->access$500(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)Landroidx/test/espresso/IdlingResource$ResourceCallback;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 170
    iget-object v0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult$1;->this$0:Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;

    # getter for: Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->resourceCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;
    invoke-static {v0}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->access$500(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)Landroidx/test/espresso/IdlingResource$ResourceCallback;

    move-result-object v0

    invoke-interface {v0}, Landroidx/test/espresso/IdlingResource$ResourceCallback;->onTransitionToIdle()V

    .line 173
    :cond_1f
    return-void
.end method
