.class Lcom/tapsdk/moment/view/MomentDialog$15;
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

    .line 473
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$15;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 10
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 476
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$15;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->filePicker:Lcom/tapsdk/moment/view/FilePicker;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$1200(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/FilePicker;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 477
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    .line 479
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_b
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "id":Ljava/lang/String;
    const-string v2, "offset"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 481
    .local v2, "offset":I
    const-string v3, "limit"

    const/16 v4, 0x2710

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 483
    .local v3, "limit":I
    iget-object v4, p0, Lcom/tapsdk/moment/view/MomentDialog$15;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->filePicker:Lcom/tapsdk/moment/view/FilePicker;
    invoke-static {v4}, Lcom/tapsdk/moment/view/MomentDialog;->access$1200(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/FilePicker;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/tapsdk/moment/view/FilePicker;->getFileData(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "imageData":Ljava/lang/String;
    if-nez v4, :cond_2f

    .line 485
    const-string v5, ""

    move-object v4, v5

    .line 487
    :cond_2f
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 488
    .local v5, "result":Lorg/json/JSONObject;
    const-string v6, "data"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    invoke-interface {p2, v5}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_3c} :catch_3d

    .line 492
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "offset":I
    .end local v3    # "limit":I
    .end local v4    # "imageData":Ljava/lang/String;
    .end local v5    # "result":Lorg/json/JSONObject;
    goto :goto_41

    .line 490
    :catch_3d
    move-exception v1

    .line 491
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 494
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_41
    :goto_41
    return-void
.end method
