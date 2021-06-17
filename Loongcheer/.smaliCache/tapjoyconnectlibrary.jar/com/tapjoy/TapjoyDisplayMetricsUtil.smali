.class public Lcom/tapjoy/TapjoyDisplayMetricsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/res/Configuration;

.field private c:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "theContext"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->a:Landroid/content/Context;

    .line 33
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->c:Landroid/util/DisplayMetrics;

    .line 34
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 35
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->c:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->b:Landroid/content/res/Configuration;

    .line 38
    return-void
.end method


# virtual methods
.method public getScreenDensityDPI()I
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->c:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public getScreenDensityScale()F
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->c:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getScreenLayoutSize()I
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->b:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method
