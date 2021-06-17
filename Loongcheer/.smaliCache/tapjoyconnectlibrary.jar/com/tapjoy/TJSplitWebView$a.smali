.class final Lcom/tapjoy/TJSplitWebView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJSplitWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:D

.field final b:D

.field final c:D

.field final d:D

.field final e:F


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 7

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const-string v0, "width"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/tapjoy/TJSplitWebView$a;->a:D

    .line 466
    const-string v0, "height"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/tapjoy/TJSplitWebView$a;->b:D

    .line 467
    const-string v0, "left"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/tapjoy/TJSplitWebView$a;->c:D

    .line 468
    const-string v0, "top"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/tapjoy/TJSplitWebView$a;->d:D

    .line 469
    const-string v0, "cornerRadius"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/tapjoy/TJSplitWebView$a;->e:F

    .line 470
    return-void
.end method
