.class public Lcom/mintegral/msdk/nativex/view/MTGNativeRollView;
.super Landroid/widget/LinearLayout;
.source "MTGNativeRollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/nativex/view/MTGNativeRollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/nativex/view/RollingBCView;

.field private b:Landroid/content/Context;

.field private c:Lcom/mintegral/msdk/out/NativeListener$FilpListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/nativex/view/MTGNativeRollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGNativeRollView;->b:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/mintegral/msdk/nativex/view/RollingBCView;

    invoke-direct {v0, p1}, Lcom/mintegral/msdk/nativex/view/RollingBCView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGNativeRollView;->a:Lcom/mintegral/msdk/nativex/view/RollingBCView;

    .line 40
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGNativeRollView;->a:Lcom/mintegral/msdk/nativex/view/RollingBCView;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/nativex/view/MTGNativeRollView;->addView(Landroid/view/View;)V

    .line 41
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->f(Landroid/content/Context;)F

    move-result v0

    .line 42
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    float-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v0, v2

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGNativeRollView;->a:Lcom/mintegral/msdk/nativex/view/RollingBCView;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/RollingBCView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/nativex/view/MTGNativeRollView;->setClipChildren(Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGNativeRollView;->a:Lcom/mintegral/msdk/nativex/view/RollingBCView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/nativex/view/RollingBCView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/nativex/view/MTGNativeRollView$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/nativex/view/MTGNativeRollView$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGNativeRollView;->a:Lcom/mintegral/msdk/nativex/view/RollingBCView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mintegral/msdk/nativex/view/RollingBCView;->setData(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/nativex/view/MTGNativeRollView$a;)V

    .line 56
    return-void
.end method

.method public setFilpListening(Lcom/mintegral/msdk/out/NativeListener$FilpListener;)V
    .registers 3

    .prologue
    .line 23
    if-eqz p1, :cond_9

    .line 24
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGNativeRollView;->c:Lcom/mintegral/msdk/out/NativeListener$FilpListener;

    .line 25
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGNativeRollView;->a:Lcom/mintegral/msdk/nativex/view/RollingBCView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/nativex/view/RollingBCView;->setFilpListening(Lcom/mintegral/msdk/out/NativeListener$FilpListener;)V

    .line 27
    :cond_9
    return-void
.end method

.method public setFrameWidth(I)V
    .registers 4

    .prologue
    .line 59
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGNativeRollView;->a:Lcom/mintegral/msdk/nativex/view/RollingBCView;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/nativex/view/RollingBCView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void
.end method
