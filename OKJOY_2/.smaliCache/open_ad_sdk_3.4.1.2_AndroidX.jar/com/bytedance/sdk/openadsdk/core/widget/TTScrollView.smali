.class public Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;
.super Landroid/widget/ScrollView;
.source "TTScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$a;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->b:Z

    .line 29
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->d:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->b:Z

    .line 29
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->d:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->b:Z

    .line 29
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->d:Z

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;)I
    .registers 1

    .line 22
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->a:I

    return p0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->d:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 45
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 46
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->b:Z

    if-nez p1, :cond_40

    .line 48
    const/4 p1, 0x1

    :try_start_8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->b:Z

    .line 49
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 50
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 52
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->getHeight()I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_23

    .line 56
    goto :goto_40

    .line 54
    :catchall_23
    move-exception p1

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLayout error"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTScrollView"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_40
    :goto_40
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 109
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 114
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->a:I

    .line 116
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->getScrollY()I

    move-result v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->a:I

    if-ge v0, v2, :cond_4b

    .line 71
    nop

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->getScrollY()I

    move-result v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->a:I

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-le v0, v2, :cond_26

    .line 74
    nop

    .line 76
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->post(Ljava/lang/Runnable;)Z

    move v1, v3

    goto :goto_3e

    .line 82
    :cond_26
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_36

    .line 84
    nop

    .line 86
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3e

    .line 92
    :cond_36
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_3d

    .line 94
    goto :goto_3e

    .line 92
    :cond_3d
    move v1, v3

    .line 97
    :goto_3e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$a;

    if-eqz v0, :cond_49

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->d:Z

    if-eq v1, v2, :cond_49

    .line 98
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$a;->a(Z)V

    .line 100
    :cond_49
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->d:Z

    .line 103
    :cond_4b
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setListener(Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$a;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView;->c:Lcom/bytedance/sdk/openadsdk/core/widget/TTScrollView$a;

    .line 63
    return-void
.end method
