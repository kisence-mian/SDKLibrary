.class final Lcom/tapjoy/TJAdUnitJSBridge$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->hasSplitView(Lorg/json/JSONObject;Ljava/lang/String;)V
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

    .line 1438
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1441
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->a(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJSplitWebView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 1442
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1445
    :cond_18
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitJSBridge$3;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1447
    return-void
.end method
