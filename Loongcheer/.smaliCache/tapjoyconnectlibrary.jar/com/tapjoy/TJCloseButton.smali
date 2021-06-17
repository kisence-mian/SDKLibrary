.class public Lcom/tapjoy/TJCloseButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJCloseButton$ClosePosition;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/tapjoy/TJCloseButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJCloseButton;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    sget-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->TOP_RIGHT:Lcom/tapjoy/TJCloseButton$ClosePosition;

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/TJCloseButton;-><init>(Landroid/content/Context;Lcom/tapjoy/TJCloseButton$ClosePosition;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/TJCloseButton$ClosePosition;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "closePosition"    # Lcom/tapjoy/TJCloseButton$ClosePosition;

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJCloseButton;->c:Z

    .line 56
    iput-object p2, p0, Lcom/tapjoy/TJCloseButton;->b:Lcom/tapjoy/TJCloseButton$ClosePosition;

    .line 57
    new-instance v0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;

    invoke-virtual {p0}, Lcom/tapjoy/TJCloseButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenDensityScale()F

    move-result v0

    .line 58
    invoke-static {v0}, Lcom/tapjoy/TapjoyIcons;->getCloseCircularImage(F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCloseButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCloseButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCloseButton;->setBackgroundColor(I)V

    .line 64
    iget-object v0, p0, Lcom/tapjoy/TJCloseButton;->b:Lcom/tapjoy/TJCloseButton$ClosePosition;

    .line 1040
    iget-object v0, v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->a:Landroid/widget/RelativeLayout$LayoutParams;

    .line 64
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCloseButton;)Z
    .registers 1

    .line 14
    iget-boolean p0, p0, Lcom/tapjoy/TJCloseButton;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/tapjoy/TJCloseButton;)Z
    .registers 2

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJCloseButton;->d:Z

    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 5

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_23

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCloseButton;->setAlpha(F)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCloseButton;->setVisibility(I)V

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/TJCloseButton;->d:Z

    .line 75
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCloseButton;->setClickable(Z)V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 80
    new-instance v1, Lcom/tapjoy/TJCloseButton$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJCloseButton$1;-><init>(Lcom/tapjoy/TJCloseButton;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    :cond_23
    return-void
.end method

.method setClickableRequested(Z)V
    .registers 3
    .param p1, "clickable"    # Z

    .line 111
    iput-boolean p1, p0, Lcom/tapjoy/TJCloseButton;->c:Z

    .line 112
    iget-boolean v0, p0, Lcom/tapjoy/TJCloseButton;->d:Z

    if-nez v0, :cond_9

    .line 113
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCloseButton;->setClickable(Z)V

    .line 115
    :cond_9
    return-void
.end method
