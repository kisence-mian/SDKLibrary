.class final Lcom/tapjoy/TJAdUnitJSBridge$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnitJSBridge;->setVideoMargins(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJAdUnitActivity;

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;Lcom/tapjoy/TJAdUnitActivity;FFFF)V
    .registers 7

    .line 831
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitJSBridge$11;->f:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnitJSBridge$11;->a:Lcom/tapjoy/TJAdUnitActivity;

    iput p3, p0, Lcom/tapjoy/TJAdUnitJSBridge$11;->b:F

    iput p4, p0, Lcom/tapjoy/TJAdUnitJSBridge$11;->c:F

    iput p5, p0, Lcom/tapjoy/TJAdUnitJSBridge$11;->d:F

    iput p6, p0, Lcom/tapjoy/TJAdUnitJSBridge$11;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 834
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitJSBridge$11;->a:Lcom/tapjoy/TJAdUnitActivity;

    iget v1, p0, Lcom/tapjoy/TJAdUnitJSBridge$11;->b:F

    iget v2, p0, Lcom/tapjoy/TJAdUnitJSBridge$11;->c:F

    iget v3, p0, Lcom/tapjoy/TJAdUnitJSBridge$11;->d:F

    iget v4, p0, Lcom/tapjoy/TJAdUnitJSBridge$11;->e:F

    .line 1407
    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 1408
    const/4 v6, 0x1

    invoke-static {v6, v1, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 1409
    invoke-static {v6, v2, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 1410
    invoke-static {v6, v3, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 1411
    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 1412
    iget-object v0, v0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getVideoView()Landroid/widget/VideoView;

    move-result-object v0

    .line 1413
    invoke-virtual {v0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1414
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1416
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1417
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 835
    return-void
.end method
