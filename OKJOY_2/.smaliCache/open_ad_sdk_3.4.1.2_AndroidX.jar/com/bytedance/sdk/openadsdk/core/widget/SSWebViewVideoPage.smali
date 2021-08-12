.class public Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;
.super Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;
.source "SSWebViewVideoPage.java"


# instance fields
.field private a:Z

.field private b:F

.field private c:Z

.field private d:Landroid/view/ViewParent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->a:Z

    .line 21
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->b:F

    .line 22
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->c:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->a:Z

    .line 21
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->b:F

    .line 22
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->c:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->a:Z

    .line 21
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->b:F

    .line 22
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->c:Z

    .line 35
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 3

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 120
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_25

    instance-of v0, p1, Landroid/widget/AbsListView;

    if-nez v0, :cond_25

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_25

    instance-of v0, p1, Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_25

    instance-of v0, p1, Landroidx/core/view/ScrollingView;

    if-eqz v0, :cond_19

    goto :goto_25

    .line 126
    :cond_19
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_24

    .line 127
    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->a(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1

    .line 129
    :cond_24
    return-object p1

    .line 125
    :cond_25
    :goto_25
    return-object p1
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 92
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->c:Z

    if-eqz v0, :cond_5

    .line 93
    return-void

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->d:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 96
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->c:Z

    .line 97
    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->d:Landroid/view/ViewParent;

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 72
    :goto_d
    if-eqz v0, :cond_19

    .line 73
    if-eqz p1, :cond_15

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->a()V

    goto :goto_18

    .line 76
    :cond_15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->b()V

    .line 78
    :goto_18
    return-void

    .line 80
    :cond_19
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->a:Z

    if-eqz v0, :cond_27

    .line 81
    if-eqz p1, :cond_23

    .line 82
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->b()V

    goto :goto_2a

    .line 84
    :cond_23
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->a()V

    goto :goto_2a

    .line 87
    :cond_27
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->a()V

    .line 89
    :goto_2a
    return-void
.end method

.method public b()V
    .registers 3

    .line 100
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->c:Z

    if-eqz v0, :cond_5

    .line 101
    return-void

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->d:Landroid/view/ViewParent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->c:Z

    .line 105
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->onOverScrolled(IIZZ)V

    .line 110
    if-nez p2, :cond_b

    if-eqz p4, :cond_b

    .line 111
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->a:Z

    goto :goto_e

    .line 113
    :cond_b
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->a:Z

    .line 115
    :goto_e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->d:Landroid/view/ViewParent;

    if-nez v0, :cond_a

    .line 41
    invoke-direct {p0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->a(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->d:Landroid/view/ViewParent;

    .line 44
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_17

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->b:F

    goto :goto_59

    .line 46
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_41

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->b:F

    sub-float/2addr v0, v1

    .line 50
    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_30

    .line 51
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->a(Z)V

    goto :goto_3a

    .line 52
    :cond_30
    if-nez v4, :cond_33

    goto :goto_3a

    .line 54
    :cond_33
    cmpg-float v0, v0, v1

    if-gez v0, :cond_3a

    .line 55
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->a(Z)V

    .line 58
    :cond_3a
    :goto_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->b:F

    .line 60
    goto :goto_59

    :cond_41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4d

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->a()V

    .line 62
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->c:Z

    goto :goto_59

    .line 63
    :cond_4d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_59

    .line 64
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->a()V

    .line 65
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/SSWebViewVideoPage;->c:Z

    .line 67
    :cond_59
    :goto_59
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
