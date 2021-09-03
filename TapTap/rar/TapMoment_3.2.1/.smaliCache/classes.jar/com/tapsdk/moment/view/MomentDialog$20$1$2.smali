.class Lcom/tapsdk/moment/view/MomentDialog$20$1$2;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapsdk/moment/view/MomentDialog$20$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tapsdk/moment/view/MomentDialog$20$1;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog$20$1;)V
    .registers 2
    .param p1, "this$2"    # Lcom/tapsdk/moment/view/MomentDialog$20$1;

    .line 639
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$20$1$2;->this$2:Lcom/tapsdk/moment/view/MomentDialog$20$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 639
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/tapsdk/moment/view/MomentDialog$20$1$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 642
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$20$1$2;->this$2:Lcom/tapsdk/moment/view/MomentDialog$20$1;

    iget-object v0, v0, Lcom/tapsdk/moment/view/MomentDialog$20$1;->val$callback:Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    iget-object v1, p0, Lcom/tapsdk/moment/view/MomentDialog$20$1$2;->this$2:Lcom/tapsdk/moment/view/MomentDialog$20$1;

    iget-object v1, v1, Lcom/tapsdk/moment/view/MomentDialog$20$1;->this$1:Lcom/tapsdk/moment/view/MomentDialog$20;

    iget-object v1, v1, Lcom/tapsdk/moment/view/MomentDialog$20;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/tapsdk/moment/view/MomentDialog;->errResponse2Json(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/tapsdk/moment/view/MomentDialog;->access$1100(Lcom/tapsdk/moment/view/MomentDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    .line 643
    return-void
.end method
