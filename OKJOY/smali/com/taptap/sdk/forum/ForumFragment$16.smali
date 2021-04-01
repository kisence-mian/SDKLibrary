.class Lcom/taptap/sdk/forum/ForumFragment$16;
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
    .line 320
    iput-object p1, p0, Lcom/taptap/sdk/forum/ForumFragment$16;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 9
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .prologue
    .line 323
    iget-object v4, p0, Lcom/taptap/sdk/forum/ForumFragment$16;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    invoke-virtual {v4}, Lcom/taptap/sdk/forum/ForumFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 324
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_7a

    .line 325
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 326
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/taptap/sdk/forum/ForumFragment$16;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    invoke-virtual {v4}, Lcom/taptap/sdk/forum/ForumFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/taptap/sdk/TapTapActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 327
    const-string v4, "type"

    const-string v5, "common_webview"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v4, "app_id"

    iget-object v5, p0, Lcom/taptap/sdk/forum/ForumFragment$16;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->app_id:Ljava/lang/String;
    invoke-static {v5}, Lcom/taptap/sdk/forum/ForumFragment;->access$500(Lcom/taptap/sdk/forum/ForumFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v4, "orientation"

    iget-object v5, p0, Lcom/taptap/sdk/forum/ForumFragment$16;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->orientation:I
    invoke-static {v5}, Lcom/taptap/sdk/forum/ForumFragment;->access$600(Lcom/taptap/sdk/forum/ForumFragment;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    iget-object v4, p0, Lcom/taptap/sdk/forum/ForumFragment$16;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->locale:Ljava/util/Locale;
    invoke-static {v4}, Lcom/taptap/sdk/forum/ForumFragment;->access$700(Lcom/taptap/sdk/forum/ForumFragment;)Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_48

    const-string v4, "locale"

    iget-object v5, p0, Lcom/taptap/sdk/forum/ForumFragment$16;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->locale:Ljava/util/Locale;
    invoke-static {v5}, Lcom/taptap/sdk/forum/ForumFragment;->access$700(Lcom/taptap/sdk/forum/ForumFragment;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 331
    :cond_48
    iget-object v4, p0, Lcom/taptap/sdk/forum/ForumFragment$16;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->site:Ljava/lang/String;
    invoke-static {v4}, Lcom/taptap/sdk/forum/ForumFragment;->access$800(Lcom/taptap/sdk/forum/ForumFragment;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5b

    const-string v4, "site"

    iget-object v5, p0, Lcom/taptap/sdk/forum/ForumFragment$16;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->site:Ljava/lang/String;
    invoke-static {v5}, Lcom/taptap/sdk/forum/ForumFragment;->access$800(Lcom/taptap/sdk/forum/ForumFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    :cond_5b
    instance-of v4, p1, Lorg/json/JSONObject;

    if-eqz v4, :cond_7a

    .line 334
    :try_start_5f
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "data":Ljava/lang/Object;
    const-string v4, "uri"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "uri":Ljava/lang/String;
    if-eqz v3, :cond_6e

    const-string v4, "uri"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    :cond_6e
    iget-object v4, p0, Lcom/taptap/sdk/forum/ForumFragment$16;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # setter for: Lcom/taptap/sdk/forum/ForumFragment;->callback:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;
    invoke-static {v4, p2}, Lcom/taptap/sdk/forum/ForumFragment;->access$902(Lcom/taptap/sdk/forum/ForumFragment;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 337
    iget-object v4, p0, Lcom/taptap/sdk/forum/ForumFragment$16;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    const/16 v5, 0x2711

    invoke-virtual {v4, v2, v5}, Lcom/taptap/sdk/forum/ForumFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_7a} :catch_7b

    .line 344
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_7a
    :goto_7a
    return-void

    .line 338
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_7b
    move-exception v1

    .line 339
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7a
.end method
