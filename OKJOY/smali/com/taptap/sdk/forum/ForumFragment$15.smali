.class Lcom/taptap/sdk/forum/ForumFragment$15;
.super Ljava/lang/Object;
.source "ForumFragment.java"

# interfaces
.implements Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/forum/ForumFragment;->initWebView()V
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
    .line 312
    iput-object p1, p0, Lcom/taptap/sdk/forum/ForumFragment$15;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$15;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$200(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 316
    iget-object v0, p0, Lcom/taptap/sdk/forum/ForumFragment$15;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
    invoke-static {v0}, Lcom/taptap/sdk/forum/ForumFragment;->access$200(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/forum/ForumFragment$15;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
    invoke-static {v1}, Lcom/taptap/sdk/forum/ForumFragment;->access$200(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    :cond_1d
    return-void
.end method
