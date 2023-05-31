.class Lcom/tapsdk/moment/view/MomentDialog$14;
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

    .line 464
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$14;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 467
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$14;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->filePicker:Lcom/tapsdk/moment/view/FilePicker;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$1200(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/FilePicker;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 468
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$14;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->filePicker:Lcom/tapsdk/moment/view/FilePicker;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$1200(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/FilePicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapsdk/moment/view/FilePicker;->getData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 470
    :cond_15
    return-void
.end method
