.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;
.super Lcom/bytedance/sdk/openadsdk/core/a/a;
.source "NativeVideoLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V
    .registers 6

    .line 218
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 6

    .line 221
    nop

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a()Z

    move-result v0

    goto :goto_12

    .line 222
    :cond_11
    move v0, v1

    .line 225
    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mPlayBtn.getVisibility() == VISIBLE->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_34

    move v3, v4

    goto :goto_35

    :cond_34
    move v3, v1

    :goto_35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ClickCreativeListener"

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4f

    :cond_4e
    move v1, v4

    :cond_4f
    return v1
.end method

.method public c()Z
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_40

    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->j:Landroid/view/View;

    .line 232
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_40

    :cond_20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    .line 233
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_40

    :cond_30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    .line 234
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_42

    :cond_40
    const/4 v0, 0x1

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    .line 231
    :goto_43
    return v0
.end method
