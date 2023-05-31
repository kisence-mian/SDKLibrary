.class Lcom/tapsdk/moment/view/MomentDialog$8;
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

    .line 338
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$8;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 9
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 342
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 343
    .local v0, "symbol":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_33

    .line 344
    const-string v1, "tapitk://browser/external"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 345
    const-string v1, "tapitk://browser/external?to="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "urlBase64":Ljava/lang/String;
    invoke-static {v1}, Lcom/tapsdk/moment/Utils;->decodeFromBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "clickUrl":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_33

    .line 348
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 349
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/tapsdk/moment/view/MomentDialog$8;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-virtual {v4, v3}, Lcom/tapsdk/moment/view/MomentDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    .line 355
    .end local v0    # "symbol":Ljava/lang/String;
    .end local v1    # "urlBase64":Ljava/lang/String;
    .end local v2    # "clickUrl":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_33
    goto :goto_38

    .line 353
    :catch_34
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_38
    return-void
.end method
