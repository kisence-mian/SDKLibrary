.class Lcom/tapsdk/moment/view/MomentDialog$18;
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

    .line 536
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$18;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 539
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_19

    .line 540
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$18$1;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$18$1;-><init>(Lcom/tapsdk/moment/view/MomentDialog$18;)V

    invoke-static {v0, v1}, Lcom/tapsdk/moment/LongClickHandler;->newInstance(Lorg/json/JSONObject;Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;)Lcom/tapsdk/moment/LongClickHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$18;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    .line 556
    invoke-virtual {v1}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/LongClickHandler;->handler(Landroid/app/Activity;)V

    .line 558
    :cond_19
    return-void
.end method
