.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;
.super Ljava/lang/Object;
.source "NativeVideoDetailLayout.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6

    .prologue
    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->r()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-interface {v0, v1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;IZ)V

    .line 253
    :cond_11
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    .prologue
    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    if-eqz v0, :cond_1b

    .line 240
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_seek_thumb_press"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->r()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;I)V

    .line 246
    :cond_34
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    .prologue
    .line 228
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->z:Landroid/content/Context;

    if-eqz v0, :cond_1b

    .line 229
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_seek_thumb_normal"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 231
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->r()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g$6;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;I)V

    .line 235
    :cond_34
    return-void
.end method
