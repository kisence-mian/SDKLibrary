.class Lcom/taptap/sdk/forum/ForumFragment$5;
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
    .line 212
    iput-object p1, p0, Lcom/taptap/sdk/forum/ForumFragment$5;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 9
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .prologue
    .line 215
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 217
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 218
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/taptap/sdk/forum/ForumFragment$5;->this$0:Lcom/taptap/sdk/forum/ForumFragment;

    # getter for: Lcom/taptap/sdk/forum/ForumFragment;->mWebView:Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;
    invoke-static {v4}, Lcom/taptap/sdk/forum/ForumFragment;->access$100(Lcom/taptap/sdk/forum/ForumFragment;)Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView;->getRegisteredHandlerNameList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 219
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_28

    goto :goto_18

    .line 222
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "name":Ljava/lang/String;
    :catch_28
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2c
    invoke-interface {p2, v3}, Lcom/taptap/sdk/forum/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 226
    return-void

    .line 221
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_30
    :try_start_30
    const-string v4, "name"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_28

    goto :goto_2c
.end method
