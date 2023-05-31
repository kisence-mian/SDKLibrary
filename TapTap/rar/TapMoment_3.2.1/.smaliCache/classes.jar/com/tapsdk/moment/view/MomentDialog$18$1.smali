.class Lcom/tapsdk/moment/view/MomentDialog$18$1;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog$18;->handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapsdk/moment/view/MomentDialog$18;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog$18;)V
    .registers 2
    .param p1, "this$1"    # Lcom/tapsdk/moment/view/MomentDialog$18;

    .line 541
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$18$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinally(Z)V
    .registers 5
    .param p1, "isSuccess"    # Z

    .line 544
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 546
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "message"

    if-eqz p1, :cond_c

    const-string v2, "save_success"

    goto :goto_e

    :cond_c
    const-string v2, "save_fail"

    :goto_e
    invoke-static {v2}, Lcom/tapsdk/moment/Utils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 547
    const-string v1, "duration"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 548
    const-string v1, "type"

    if-eqz p1, :cond_23

    const-string v2, "success"

    goto :goto_25

    :cond_23
    const-string v2, "fail"

    :goto_25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_28} :catch_29

    .line 551
    goto :goto_2d

    .line 549
    :catch_29
    move-exception v1

    .line 550
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 552
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2d
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$18$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$18;

    iget-object v1, v1, Lcom/tapsdk/moment/view/MomentDialog$18;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    invoke-static {v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$500(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 553
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$18$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$18;

    iget-object v1, v1, Lcom/tapsdk/moment/view/MomentDialog$18;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->mWebView:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;
    invoke-static {v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$500(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;

    move-result-object v1

    const-string v2, "toast"

    invoke-virtual {v1, v2, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    :cond_44
    return-void
.end method
