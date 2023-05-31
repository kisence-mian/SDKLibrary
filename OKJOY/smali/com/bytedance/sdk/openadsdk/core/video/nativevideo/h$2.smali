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
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 212
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 215
    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-eqz v0, :cond_4d

    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->A:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a()Z

    move-result v0

    .line 219
    :goto_10
    const-string v4, "ClickCreativeListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVisible="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",mPlayBtn.getVisibility() == VISIBLE->"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4b

    move v2, v3

    :goto_32
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4a

    :cond_49
    move v1, v3

    :cond_4a
    return v1

    :cond_4b
    move v2, v1

    .line 219
    goto :goto_32

    :cond_4d
    move v0, v1

    goto :goto_10
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 225
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

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_40

    :cond_20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k:Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;

    .line 227
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/RoundImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_40

    :cond_30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->l:Landroid/widget/TextView;

    .line 228
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_42

    :cond_40
    const/4 v0, 0x1

    .line 225
    :goto_41
    return v0

    .line 228
    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method
