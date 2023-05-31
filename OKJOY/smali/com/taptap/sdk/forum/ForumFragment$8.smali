.class Lcom/taptap/sdk/forum/ForumFragment$8;
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
    .line 247
    iput-object p1, p0, Lcom/taptap/sdk/forum/ForumFragment$8;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 9
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .prologue
    .line 250
    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment$8;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
    invoke-static {v2}, Lcom/taptap/sdk/forum/ForumFragment;->access$200(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 252
    :try_start_c
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "data":Ljava/lang/Object;
    const-string v2, "duration"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 253
    .local v0, "duration":I
    iget-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment$8;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
    invoke-static {v2}, Lcom/taptap/sdk/forum/ForumFragment;->access$200(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 254
    iget-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment$8;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
    invoke-static {v2}, Lcom/taptap/sdk/forum/ForumFragment;->access$200(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/taptap/sdk/forum/ForumFragment$8;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
    invoke-static {v3}, Lcom/taptap/sdk/forum/ForumFragment;->access$200(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    iget-object v2, p0, Lcom/taptap/sdk/forum/ForumFragment$8;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
    invoke-static {v2}, Lcom/taptap/sdk/forum/ForumFragment;->access$200(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/taptap/sdk/forum/ForumFragment$8;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->handler:Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;
    invoke-static {v3}, Lcom/taptap/sdk/forum/ForumFragment;->access$200(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/taptap/sdk/forum/ForumFragment$ForumHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_49} :catch_4a

    .line 260
    .end local v0    # "duration":I
    :cond_49
    :goto_49
    return-void

    .line 256
    :catch_4a
    move-exception v1

    .line 257
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_49
.end method
