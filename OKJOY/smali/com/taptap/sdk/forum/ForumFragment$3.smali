.class Lcom/taptap/sdk/forum/ForumFragment$3;
.super Ljava/lang/Object;
.source "ForumFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 151
    iput-object p1, p0, Lcom/taptap/sdk/forum/ForumFragment$3;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$3;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$100(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    move-result-object v0

    const-string v1, "onActionSheetButtonClick"

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;)V

    .line 155
    return-void
.end method
