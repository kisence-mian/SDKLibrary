.class Lcom/tapsdk/moment/view/MomentDialog$20$1;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog$20;->handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapsdk/moment/view/MomentDialog$20;

.field final synthetic val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog$20;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 3
    .param p1, "this$1"    # Lcom/tapsdk/moment/view/MomentDialog$20;

    .line 616
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$20$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$20;

    iput-object p2, p0, Lcom/tapsdk/moment/view/MomentDialog$20$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/tds/common/reactor/exceptions/FlowException;)V
    .registers 5
    .param p1, "exception"    # Lcom/tds/common/reactor/exceptions/FlowException;

    .line 653
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$20$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$20$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$20;

    iget-object v1, v1, Lcom/tapsdk/moment/view/MomentDialog$20;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {p1}, Lcom/tds/common/reactor/exceptions/FlowException;->getMessage()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/tapsdk/moment/view/MomentDialog;->access$1100(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 654
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "tapToken"    # Ljava/lang/String;

    .line 619
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 620
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$20$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$20$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$20;

    iget-object v1, v1, Lcom/tapsdk/moment/view/MomentDialog$20;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    const-string v2, "accessToken not empty"

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/tapsdk/moment/view/MomentDialog;->access$1100(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 621
    return-void

    .line 624
    :cond_16
    :try_start_16
    const-string v0, "TapLogin"

    .line 625
    invoke-static {v0}, Lcom/tds/common/isc/IscServiceManager;->service(Ljava/lang/String;)Lcom/tds/common/isc/Service;

    move-result-object v0

    const-string v1, "login"

    .line 626
    invoke-virtual {v0, v1}, Lcom/tds/common/isc/Service;->method(Ljava/lang/String;)Lcom/tds/common/isc/Method;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tapsdk/moment/view/MomentDialog$20$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$20;

    iget-object v3, v3, Lcom/tapsdk/moment/view/MomentDialog$20;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    .line 627
    invoke-virtual {v3}, Lcom/tapsdk/moment/view/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "innerapp"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "public_profile"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tds/common/isc/Method;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/reactor/Observable;

    check-cast v0, Lcom/tds/common/reactor/Observable;

    .line 628
    invoke-static {}, Lcom/tds/common/reactor/schedulers/Schedulers;->newThread()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Observable;->subscribeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    .line 629
    invoke-static {}, Lcom/tds/common/reactor/rxandroid/schedulers/AndroidSchedulers;->mainThread()Lcom/tds/common/reactor/schedulers/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tds/common/reactor/Observable;->observeOn(Lcom/tds/common/reactor/schedulers/Scheduler;)Lcom/tds/common/reactor/Observable;

    move-result-object v0

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$20$1$1;

    invoke-direct {v1, p0}, Lcom/tapsdk/moment/view/MomentDialog$20$1$1;-><init>(Lcom/tapsdk/moment/view/MomentDialog$20$1;)V

    new-instance v2, Lcom/tapsdk/moment/view/MomentDialog$20$1$2;

    invoke-direct {v2, p0}, Lcom/tapsdk/moment/view/MomentDialog$20$1$2;-><init>(Lcom/tapsdk/moment/view/MomentDialog$20$1;)V

    .line 630
    invoke-virtual {v0, v1, v2}, Lcom/tds/common/reactor/Observable;->subscribe(Lcom/tds/common/reactor/functions/Action1;Lcom/tds/common/reactor/functions/Action1;)Lcom/tds/common/reactor/Subscription;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_63} :catch_64

    .line 648
    goto :goto_79

    .line 645
    :catch_64
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 647
    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$20$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    iget-object v2, p0, Lcom/tapsdk/moment/view/MomentDialog$20$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$20;

    iget-object v2, v2, Lcom/tapsdk/moment/view/MomentDialog$20;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/tapsdk/moment/view/MomentDialog;->access$1100(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 649
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_79
    return-void
.end method
