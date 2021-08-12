.class public Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;
.super Landroid/widget/FrameLayout;
.source "TopLayout1.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/top/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/bytedance/sdk/openadsdk/component/reward/top/a<",
        "Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:Z

.field private g:Lcom/bytedance/sdk/openadsdk/component/reward/top/b;


# virtual methods
.method public a()V
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 186
    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 188
    :cond_7
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_4d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 160
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->e:Z

    if-nez p1, :cond_4d

    .line 163
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 164
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v0, 0x2

    if-gt p2, v0, :cond_3b

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42540000    # 53.0f

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    goto :goto_46

    .line 165
    :cond_3b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42c00000    # 96.0f

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    :goto_46
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 166
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    :cond_4d
    return-void
.end method

.method public b()V
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 193
    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 195
    :cond_7
    return-void
.end method

.method public c()V
    .registers 1

    .line 205
    return-void
.end method

.method public setListener(Lcom/bytedance/sdk/openadsdk/component/reward/top/b;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->g:Lcom/bytedance/sdk/openadsdk/component/reward/top/b;

    .line 181
    return-void
.end method

.method public setShowCountDown(Z)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 150
    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_a

    :cond_8
    const/16 p1, 0x8

    :goto_a
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    :cond_d
    return-void
.end method

.method public setShowDislike(Z)V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->d:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 174
    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_a

    :cond_8
    const/16 p1, 0x8

    :goto_a
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_d
    return-void
.end method

.method public setShowSkip(Z)V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 119
    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_a

    :cond_8
    const/16 p1, 0x8

    :goto_a
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :cond_d
    return-void
.end method

.method public setShowSound(Z)V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 134
    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_a

    :cond_8
    const/16 p1, 0x8

    :goto_a
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    :cond_d
    return-void
.end method

.method public setSkipEnable(Z)V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 126
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 129
    :cond_c
    return-void
.end method

.method public setSoundMute(Z)V
    .registers 3

    .line 141
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->f:Z

    .line 142
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_mute"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_19

    .line 143
    :cond_f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tt_unmute"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 144
    :goto_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopLayout1;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    return-void
.end method
