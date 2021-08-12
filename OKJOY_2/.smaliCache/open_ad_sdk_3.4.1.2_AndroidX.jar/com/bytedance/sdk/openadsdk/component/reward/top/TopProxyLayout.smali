.class public Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;
.super Landroid/view/View;
.source "TopProxyLayout.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Lcom/bytedance/sdk/openadsdk/component/reward/top/a<",
        "Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setVisibility(I)V

    .line 37
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setWillNotDraw(Z)V

    .line 38
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 5

    .line 72
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 73
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_11

    .line 77
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_14

    .line 79
    :cond_11
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 81
    :goto_14
    return-void
.end method


# virtual methods
.method public a(ZLcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;
    .registers 5

    .line 52
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->a(ZLcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    move-result-object p1

    .line 53
    instance-of p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz p2, :cond_26

    .line 54
    move-object p2, p1

    check-cast p2, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 63
    if-eqz p2, :cond_25

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_25

    .line 64
    check-cast p2, Landroid/view/ViewGroup;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 68
    :cond_25
    return-object p0

    .line 57
    :cond_26
    const-string p1, "TopProxyLayout"

    const-string p2, "view not implements ITopLayout interface"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-object p0
.end method

.method public a()V
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_7

    .line 161
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->a()V

    .line 163
    :cond_7
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_7

    .line 140
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 142
    :cond_7
    return-void
.end method

.method public b()V
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_7

    .line 168
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->b()V

    .line 170
    :cond_7
    return-void
.end method

.method public c()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_7

    .line 113
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->c()V

    .line 115
    :cond_7
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 95
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 91
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 85
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setMeasuredDimension(II)V

    .line 86
    return-void
.end method

.method public setListener(Lcom/bytedance/sdk/openadsdk/component/reward/top/b;)V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_7

    .line 154
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setListener(Lcom/bytedance/sdk/openadsdk/component/reward/top/b;)V

    .line 156
    :cond_7
    return-void
.end method

.method public setShowCountDown(Z)V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_7

    .line 133
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setShowCountDown(Z)V

    .line 135
    :cond_7
    return-void
.end method

.method public setShowDislike(Z)V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_7

    .line 147
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setShowDislike(Z)V

    .line 149
    :cond_7
    return-void
.end method

.method public setShowSkip(Z)V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_7

    .line 100
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setShowSkip(Z)V

    .line 102
    :cond_7
    return-void
.end method

.method public setShowSound(Z)V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_7

    .line 119
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setShowSound(Z)V

    .line 121
    :cond_7
    return-void
.end method

.method public setSkipEnable(Z)V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_7

    .line 107
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setSkipEnable(Z)V

    .line 109
    :cond_7
    return-void
.end method

.method public setSoundMute(Z)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_7

    .line 126
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setSoundMute(Z)V

    .line 128
    :cond_7
    return-void
.end method
