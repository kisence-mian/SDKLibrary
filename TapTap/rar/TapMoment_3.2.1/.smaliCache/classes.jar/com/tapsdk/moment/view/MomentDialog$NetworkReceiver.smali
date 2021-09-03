.class Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/view/MomentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/MomentDialog;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 1322
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1325
    invoke-static {p1}, Lcom/tapsdk/moment/Utils;->getNetworkState(Landroid/content/Context;)I

    move-result v0

    .line 1326
    .local v0, "state":I
    if-lez v0, :cond_34

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->networkErrorDialog:Lcom/tapsdk/moment/view/NetworkErrorDialog;
    invoke-static {v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$600(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/NetworkErrorDialog;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->networkErrorDialog:Lcom/tapsdk/moment/view/NetworkErrorDialog;
    invoke-static {v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$600(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/NetworkErrorDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1327
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    invoke-static {v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$500(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 1328
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    invoke-static {v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$500(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->reload()V

    .line 1330
    :cond_2b
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->networkErrorDialog:Lcom/tapsdk/moment/view/NetworkErrorDialog;
    invoke-static {v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$600(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/NetworkErrorDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapsdk/moment/view/NetworkErrorDialog;->dismiss()V

    .line 1332
    :cond_34
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    invoke-static {v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$500(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 1333
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1335
    .local v1, "params":Lorg/json/JSONObject;
    :try_start_41
    const-string v2, "state"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1336
    const-string v2, "Moment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " networkStateChanged ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog$NetworkReceiver;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    invoke-static {v2}, Lcom/tapsdk/moment/view/MomentDialog;->access$500(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    move-result-object v2

    const-string v3, "networkStateChanged"

    invoke-virtual {v2, v3, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_69} :catch_6a

    .line 1340
    goto :goto_6e

    .line 1338
    :catch_6a
    move-exception v2

    .line 1339
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1342
    .end local v1    # "params":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_6e
    :goto_6e
    return-void
.end method
