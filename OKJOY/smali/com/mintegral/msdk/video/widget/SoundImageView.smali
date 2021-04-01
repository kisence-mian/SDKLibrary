.class public Lcom/mintegral/msdk/video/widget/SoundImageView;
.super Landroid/widget/ImageView;
.source "SoundImageView.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/widget/SoundImageView;->a:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/widget/SoundImageView;->a:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/widget/SoundImageView;->a:Z

    .line 20
    return-void
.end method


# virtual methods
.method public getStatus()Z
    .registers 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/widget/SoundImageView;->a:Z

    return v0
.end method

.method public setSoundStatus(Z)V
    .registers 5

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/mintegral/msdk/video/widget/SoundImageView;->a:Z

    .line 43
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/widget/SoundImageView;->a:Z

    if-eqz v0, :cond_16

    .line 44
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/widget/SoundImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_reward_sound_open"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/widget/SoundImageView;->setImageResource(I)V

    .line 48
    :goto_15
    return-void

    .line 46
    :cond_16
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/widget/SoundImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_reward_sound_close"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/widget/SoundImageView;->setImageResource(I)V

    goto :goto_15
.end method
