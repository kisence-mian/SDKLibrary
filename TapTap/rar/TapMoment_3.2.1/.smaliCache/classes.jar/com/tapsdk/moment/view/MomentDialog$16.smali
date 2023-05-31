.class Lcom/tapsdk/moment/view/MomentDialog$16;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapsdk/moment/view/MomentDialog;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 497
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$16;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 9
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 500
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    .line 501
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 502
    .local v1, "state":I
    const-string v2, "message"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "message":Ljava/lang/String;
    const-string v4, "publish_success.moment.taptap.action"

    .line 504
    .local v4, "action":Ljava/lang/String;
    if-nez v1, :cond_19

    .line 505
    const-string v4, "publish_cancel.moment.taptap.action"

    goto :goto_1e

    .line 506
    :cond_19
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1e

    .line 507
    const-string v4, "publish_fail.moment.taptap.action"

    .line 509
    :cond_1e
    :goto_1e
    iget-object v5, p0, Lcom/tapsdk/moment/view/MomentDialog$16;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v5}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_35

    .line 510
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    invoke-static {}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->getInstance()Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/tapsdk/moment/utils/SimpleLocalBroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    .line 514
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_35
    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog$16;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v2}, Lcom/tapsdk/moment/view/MomentDialog;->dismiss()V

    .line 515
    return-void
.end method
