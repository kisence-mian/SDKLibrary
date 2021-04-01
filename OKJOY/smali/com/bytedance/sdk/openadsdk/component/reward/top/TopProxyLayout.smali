.class public Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;
.super Landroid/view/View;
.source "TopProxyLayout.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Lcom/bytedance/sdk/openadsdk/component/reward/top/a",
        "<",
        "Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setVisibility(I)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setWillNotDraw(Z)V

    .line 39
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 5

    .prologue
    .line 71
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 72
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_11

    .line 76
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 80
    :goto_10
    return-void

    .line 78
    :cond_11
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_10
.end method


# virtual methods
.method public a(ZLcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;
    .registers 6
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v1

    if-ne v1, v0, :cond_3b

    .line 46
    :goto_d
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ac()Z

    move-result v1

    if-eqz v1, :cond_3d

    if-nez v0, :cond_3d

    .line 47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;->a(ZLcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayoutDislike2;

    move-result-object v1

    .line 52
    :goto_22
    instance-of v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_4b

    move-object v0, v1

    .line 53
    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_3a

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3a

    .line 63
    check-cast v0, Landroid/view/ViewGroup;

    .line 64
    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 67
    :cond_3a
    :goto_3a
    return-object p0

    .line 45
    :cond_3b
    const/4 v0, 0x0

    goto :goto_d

    .line 49
    :cond_3d
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->a(ZLcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;

    move-result-object v1

    goto :goto_22

    .line 56
    :cond_4b
    const-string v0, "TopProxyLayout"

    const-string v1, "view not implements ITopLayout interface"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public a()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_9

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->a()V

    .line 157
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_9

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 136
    :cond_9
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_9

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->b()V

    .line 164
    :cond_9
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 94
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 90
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setMeasuredDimension(II)V

    .line 85
    return-void
.end method

.method public setListener(Lcom/bytedance/sdk/openadsdk/component/reward/top/b;)V
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_9

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setListener(Lcom/bytedance/sdk/openadsdk/component/reward/top/b;)V

    .line 150
    :cond_9
    return-void
.end method

.method public setShowCountDown(Z)V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setShowCountDown(Z)V

    .line 129
    :cond_9
    return-void
.end method

.method public setShowDislike(Z)V
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setShowDislike(Z)V

    .line 143
    :cond_9
    return-void
.end method

.method public setShowSkip(Z)V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_9

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setShowSkip(Z)V

    .line 101
    :cond_9
    return-void
.end method

.method public setShowSound(Z)V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_9

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setShowSound(Z)V

    .line 115
    :cond_9
    return-void
.end method

.method public setSkipEnable(Z)V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_9

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setSkipEnable(Z)V

    .line 108
    :cond_9
    return-void
.end method

.method public setSoundMute(Z)V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a:Lcom/bytedance/sdk/openadsdk/component/reward/top/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/a;->setSoundMute(Z)V

    .line 122
    :cond_9
    return-void
.end method
