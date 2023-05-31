.class Lcom/tapsdk/moment/view/MomentDialog$11;
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

    .line 375
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$11;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 378
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$11;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->handler:Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$700(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/view/MomentDialog$ForumHandler;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 379
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$11;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->model:Lcom/tapsdk/moment/TapTapMomentModel;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$1000(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/TapTapMomentModel;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/tapsdk/moment/view/MomentDialog$11$1;

    invoke-direct {v2, p0, p2}, Lcom/tapsdk/moment/view/MomentDialog$11$1;-><init>(Lcom/tapsdk/moment/view/MomentDialog$11;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/tapsdk/moment/TapTapMomentModel;->getAccessToken(ZLcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;)V

    .line 399
    :cond_17
    return-void
.end method
