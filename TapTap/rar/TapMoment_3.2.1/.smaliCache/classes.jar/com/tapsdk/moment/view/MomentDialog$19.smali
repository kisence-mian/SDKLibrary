.class Lcom/tapsdk/moment/view/MomentDialog$19;
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

    .line 561
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$19;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 11
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 564
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_3d

    .line 565
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    .line 566
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 567
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    const-string v1, "positive"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 569
    const-string v1, "negative"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 570
    const-string v1, "cancelable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    new-instance v7, Lcom/tapsdk/moment/view/MomentDialog$19$1;

    invoke-direct {v7, p0, p2}, Lcom/tapsdk/moment/view/MomentDialog$19$1;-><init>(Lcom/tapsdk/moment/view/MomentDialog$19;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    .line 566
    invoke-static/range {v2 .. v7}, Lcom/tapsdk/moment/view/Alert;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/tapsdk/moment/view/Alert$ClickStub;)Lcom/tapsdk/moment/view/Alert;

    move-result-object v1

    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog$19;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    .line 592
    invoke-virtual {v2}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/tapsdk/moment/view/Alert;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/tapsdk/moment/view/Alert;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 594
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_3d
    return-void
.end method
