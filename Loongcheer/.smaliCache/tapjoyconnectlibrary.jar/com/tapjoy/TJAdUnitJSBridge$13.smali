.class final Lcom/tapjoy/TJAdUnitJSBridge$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->setCloseButtonVisible(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Z)V
    .registers 3

    .line 1141
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$13;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$13;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1144
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$13;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->b(Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJAdUnitActivity;

    move-result-object v0

    .line 1145
    if-eqz v0, :cond_e

    .line 1146
    iget-boolean v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$13;->a:Z

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitActivity;->setCloseButtonVisibility(Z)V

    return-void

    .line 1148
    :cond_e
    const-string v0, "TJAdUnitJSBridge"

    const-string v1, "Cannot setCloseButtonVisible -- TJAdUnitActivity is null"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    return-void
.end method
