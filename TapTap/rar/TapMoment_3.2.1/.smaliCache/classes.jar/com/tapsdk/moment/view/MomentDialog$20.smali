.class Lcom/tapsdk/moment/view/MomentDialog$20;
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
.field private final DELAY_TIME:J

.field private lastClickTime:J

.field final synthetic this$0:Lcom/tapsdk/moment/view/MomentDialog;


# direct methods
.method constructor <init>(Lcom/tapsdk/moment/view/MomentDialog;)V
    .registers 4
    .param p1, "this$0"    # Lcom/tapsdk/moment/view/MomentDialog;

    .line 597
    iput-object p1, p0, Lcom/tapsdk/moment/view/MomentDialog$20;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/tapsdk/moment/view/MomentDialog$20;->DELAY_TIME:J

    return-void
.end method

.method private isFastDoubleClick()Z
    .registers 7

    .line 602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 603
    .local v0, "time":J
    iget-wide v2, p0, Lcom/tapsdk/moment/view/MomentDialog$20;->lastClickTime:J

    sub-long v2, v0, v2

    .line 605
    .local v2, "timeD":J
    iput-wide v0, p0, Lcom/tapsdk/moment/view/MomentDialog$20;->lastClickTime:J

    .line 607
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    return v4
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "callback"    # Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;

    .line 613
    invoke-direct {p0}, Lcom/tapsdk/moment/view/MomentDialog$20;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 614
    return-void

    .line 616
    :cond_7
    iget-object v0, p0, Lcom/tapsdk/moment/view/MomentDialog$20;->this$0:Lcom/tapsdk/moment/view/MomentDialog;

    # getter for: Lcom/tapsdk/moment/view/MomentDialog;->model:Lcom/tapsdk/moment/TapTapMomentModel;
    invoke-static {v0}, Lcom/tapsdk/moment/view/MomentDialog;->access$1000(Lcom/tapsdk/moment/view/MomentDialog;)Lcom/tapsdk/moment/TapTapMomentModel;

    move-result-object v0

    new-instance v1, Lcom/tapsdk/moment/view/MomentDialog$20$1;

    invoke-direct {v1, p0, p2}, Lcom/tapsdk/moment/view/MomentDialog$20$1;-><init>(Lcom/tapsdk/moment/view/MomentDialog$20;Lcom/tapsdk/moment/view/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    invoke-virtual {v0, v1}, Lcom/tapsdk/moment/TapTapMomentModel;->getTapTokenByISCAsync(Lcom/tapsdk/moment/TapTapMomentModel$GetTapTokenListener;)V

    .line 657
    return-void
.end method
