.class Lcom/taptap/sdk/forum/ForumFragment$4;
.super Ljava/lang/Object;
.source "ForumFragment.java"

# interfaces
.implements Lcom/taptap/sdk/KeyboardStatusDetector$KeyboardVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/forum/ForumFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/forum/ForumFragment;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/forum/ForumFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/sdk/forum/ForumFragment;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/taptap/sdk/forum/ForumFragment$4;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .registers 5
    .param p1, "keyboardVisible"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$4;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$200(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    move-result-object v0

    if-nez v0, :cond_9

    .line 189
    :goto_8
    return-void

    .line 184
    :cond_9
    if-eqz p1, :cond_21

    .line 185
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$4;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$200(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment$4;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
    invoke-static {v1}, Lcom/taptap/sdk/forum/ForumFragment;->access$200(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8

    .line 187
    :cond_21
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$4;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$200(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment$4;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
    invoke-static {v1}, Lcom/taptap/sdk/forum/ForumFragment;->access$200(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    move-result-object v1

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8
.end method
