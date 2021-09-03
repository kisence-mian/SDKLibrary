.class Lcom/tapsdk/moment/view/MomentDialog$7;
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

    .line 315
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$7;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 8
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 318
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$7;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$700(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 320
    :try_start_c
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 322
    .local v0, "duration":I
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$7;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;
    invoke-static {v1}, Lcom/tapsdk/moment/view/MomentDialog;->access$700(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    move-result-object v1

    new-instance v2, Lcom/tapsdk/moment/view/MomentDialog$7$1;

    invoke-direct {v2, p0, v0}, Lcom/tapsdk/moment/view/MomentDialog$7$1;-><init>(Lcom/tapsdk/moment/view/MomentDialog$7;I)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_25} :catch_27

    .line 333
    nop

    .end local v0    # "duration":I
    goto :goto_2b

    .line 331
    :catch_27
    move-exception v0

    .line 332
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 335
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2b
    :goto_2b
    return-void
.end method
