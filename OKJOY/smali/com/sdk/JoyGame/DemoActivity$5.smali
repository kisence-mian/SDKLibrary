.class Lcom/sdk/JoyGame/DemoActivity$5;
.super Ljava/lang/Object;
.source "DemoActivity.java"

# interfaces
.implements Lcom/JoyFramework/common/ExitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/JoyGame/DemoActivity;->exitGame(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdk/JoyGame/DemoActivity;


# direct methods
.method constructor <init>(Lcom/sdk/JoyGame/DemoActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sdk/JoyGame/DemoActivity;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/sdk/JoyGame/DemoActivity$5;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ExitSuccess(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 368
    const-string v0, "exit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 370
    iget-object v0, p0, Lcom/sdk/JoyGame/DemoActivity$5;->this$0:Lcom/sdk/JoyGame/DemoActivity;

    invoke-virtual {v0}, Lcom/sdk/JoyGame/DemoActivity;->finish()V

    .line 371
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 372
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 374
    :cond_18
    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 364
    return-void
.end method
