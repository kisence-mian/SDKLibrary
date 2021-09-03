.class Lcom/tapsdk/moment/view/MomentDialog$19$1;
.super Lcom/tapsdk/moment/view/Alert$ClickStub;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog$19;->handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapsdk/moment/view/MomentDialog$19;

.field final synthetic val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog$19;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 3
    .param p1, "this$1"    # Lcom/tapsdk/moment/view/MomentDialog$19;

    .line 570
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$19$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$19;

    iput-object p2, p0, Lcom/tapsdk/moment/view/MomentDialog$19$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    invoke-direct {p0}, Lcom/tapsdk/moment/view/Alert$ClickStub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative()V
    .registers 5

    .line 573
    invoke-super {p0}, Lcom/tapsdk/moment/view/Alert$ClickStub;->onNegative()V

    .line 575
    :try_start_3
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$19$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "negative"

    const-string v3, "onNegative"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_15} :catch_16

    .line 579
    goto :goto_1a

    .line 577
    :catch_16
    move-exception v0

    .line 578
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 580
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1a
    return-void
.end method

.method public onPositive()V
    .registers 5

    .line 584
    invoke-super {p0}, Lcom/tapsdk/moment/view/Alert$ClickStub;->onPositive()V

    .line 586
    :try_start_3
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$19$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "positive"

    const-string v3, "onPositive"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_15} :catch_16

    .line 590
    goto :goto_1a

    .line 588
    :catch_16
    move-exception v0

    .line 589
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 591
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1a
    return-void
.end method
