.class public Lcom/mintegral/msdk/nativex/view/RollingBCView;
.super Landroid/support/v4/view/ViewPager;
.source "RollingBCView.java"


# instance fields
.field private a:Z

.field private b:Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;

.field private c:Lcom/mintegral/msdk/out/NativeListener$FilpListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/RollingBCView;->a:Z

    .line 18
    new-instance v0, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;

    invoke-direct {v0}, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/RollingBCView;->b:Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;

    .line 36
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_3b

    move v0, v1

    move v2, v1

    .line 44
    :goto_b
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/RollingBCView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_35

    .line 45
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/nativex/view/RollingBCView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 46
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->measure(II)V

    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 48
    if-le v3, v2, :cond_23

    move v2, v3

    .line 50
    :cond_23
    const/16 v4, 0xa

    if-le v3, v4, :cond_32

    iget-boolean v3, p0, Lcom/mintegral/msdk/nativex/view/RollingBCView;->a:Z

    if-eqz v3, :cond_32

    .line 51
    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/RollingBCView;->b:Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;

    invoke-virtual {v3, v1}, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->a(I)V

    .line 52
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/RollingBCView;->a:Z

    .line 44
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 56
    :cond_35
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 59
    :cond_3b
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 60
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onWindowVisibilityChanged(I)V

    .line 66
    return-void
.end method

.method public setData(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/nativex/view/MTGNativeRollView$a;)V
    .registers 8
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
    const/4 v2, 0x0

    .line 71
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 73
    :cond_9
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    const-string v1, "ad date is null or size is 0"

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_11
    new-instance v0, Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;

    invoke-direct {v0, p1}, Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;-><init>(Ljava/util/List;)V

    .line 77
    if-eqz p4, :cond_1b

    .line 78
    invoke-virtual {v0, p4}, Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;->a(Lcom/mintegral/msdk/nativex/view/MTGNativeRollView$a;)V

    .line 80
    :cond_1b
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/nativex/view/RollingBCView;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/RollingBCView;->b:Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->a(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/RollingBCView;->c:Lcom/mintegral/msdk/out/NativeListener$FilpListener;

    if-eqz v0, :cond_2e

    .line 84
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/RollingBCView;->b:Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/RollingBCView;->c:Lcom/mintegral/msdk/out/NativeListener$FilpListener;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->a(Lcom/mintegral/msdk/out/NativeListener$FilpListener;)V

    .line 86
    :cond_2e
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/RollingBCView;->b:Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/nativex/view/RollingBCView;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 87
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/RollingBCView;->a:Z

    if-eqz v0, :cond_3e

    .line 88
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/RollingBCView;->b:Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/nativex/listener/RollingPagerListenrt;->a(I)V

    .line 90
    iput-boolean v2, p0, Lcom/mintegral/msdk/nativex/view/RollingBCView;->a:Z

    .line 92
    :cond_3e
    return-void
.end method

.method public setFilpListening(Lcom/mintegral/msdk/out/NativeListener$FilpListener;)V
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/RollingBCView;->c:Lcom/mintegral/msdk/out/NativeListener$FilpListener;

    .line 25
    return-void
.end method
