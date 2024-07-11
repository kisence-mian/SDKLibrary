.class Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult$2;
.super Ljava/lang/Object;
.source "CloseKeyboardAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->notifyEspresso(J)V
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

    .line 181
    iput-object p1, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult$2;->this$0:Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 184
    iget-object v0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult$2;->this$0:Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;

    const/4 v1, 0x1

    # setter for: Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->idle:Z
    invoke-static {v0, v1}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->access$602(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;Z)Z

    .line 185
    iget-object v0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult$2;->this$0:Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;

    # getter for: Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->resourceCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;
    invoke-static {v0}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->access$500(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)Landroidx/test/espresso/IdlingResource$ResourceCallback;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 186
    iget-object v0, p0, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult$2;->this$0:Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;

    # getter for: Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->resourceCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;
    invoke-static {v0}, Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;->access$500(Landroidx/test/espresso/action/CloseKeyboardAction$CloseKeyboardIdlingResult;)Landroidx/test/espresso/IdlingResource$ResourceCallback;

    move-result-object v0

    invoke-interface {v0}, Landroidx/test/espresso/IdlingResource$ResourceCallback;->onTransitionToIdle()V

    .line 188
    :cond_17
    return-void
.end method
