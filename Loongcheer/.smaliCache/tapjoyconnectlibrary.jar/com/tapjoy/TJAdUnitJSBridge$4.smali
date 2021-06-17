.class final Lcom/tapjoy/TJAdUnitJSBridge$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->dismissSplitView(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Ljava/lang/String;)V
    .registers 3

    .line 1453
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1456
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4c

    .line 1457
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->a:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 1458
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v1

    invoke-virtual {v3, v0, v4}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1460
    :cond_19
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->splitWebViewCallbackID:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_31

    .line 1461
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v4, v0, Lcom/tapjoy/TJAdUnitJSBridge;->splitWebViewCallbackID:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v2, v1

    invoke-virtual {v0, v4, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1462
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object v3, v0, Lcom/tapjoy/TJAdUnitJSBridge;->splitWebViewCallbackID:Ljava/lang/String;

    .line 1465
    :cond_31
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJSplitWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1466
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v1}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1467
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0, v3}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;Lcom/tapjoy/TJSplitWebView;)Lcom/tapjoy/TJSplitWebView;

    .line 1468
    return-void

    .line 1470
    :cond_4c
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->a:Ljava/lang/String;

    if-eqz v0, :cond_5b

    .line 1471
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge$4;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v1

    invoke-virtual {v3, v0, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1474
    :cond_5b
    return-void
.end method
