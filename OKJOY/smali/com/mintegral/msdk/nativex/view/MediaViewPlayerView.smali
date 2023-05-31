.class public Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;
.super Landroid/widget/LinearLayout;
.source "MediaViewPlayerView.java"

# interfaces
.implements Lcom/mintegral/msdk/playercommon/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;,
        Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private D:Lcom/mintegral/msdk/nativex/listener/a;

.field private E:Ljava/util/Timer;

.field private F:Landroid/os/Handler;

.field private G:Lcom/mintegral/msdk/videocommon/download/a;

.field private H:Lcom/mintegral/msdk/playercommon/d;

.field private I:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;

.field private J:Lcom/iab/omid/library/mintegral/adsession/AdSession;

.field private K:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private volatile l:I

.field private m:Z

.field private n:Z

.field private o:Landroid/view/TextureView;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/view/Surface;

.field private r:Landroid/widget/ProgressBar;

.field private s:Lcom/mintegral/msdk/videocommon/view/MyImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/view/View;

.field private y:Landroid/graphics/drawable/AnimationDrawable;

.field private z:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->a:Z

    .line 69
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b:Z

    .line 71
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c:Z

    .line 72
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->d:Z

    .line 74
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e:Z

    .line 75
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->f:Z

    .line 77
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->g:Z

    .line 79
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->h:Z

    .line 81
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->i:Z

    .line 83
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->j:Z

    .line 85
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->k:Z

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->l:I

    .line 90
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->m:Z

    .line 91
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->n:Z

    .line 117
    iput-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->J:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 118
    iput-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->K:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    .line 126
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->a()V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->a:Z

    .line 69
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b:Z

    .line 71
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c:Z

    .line 72
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->d:Z

    .line 74
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e:Z

    .line 75
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->f:Z

    .line 77
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->g:Z

    .line 79
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->h:Z

    .line 81
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->i:Z

    .line 83
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->j:Z

    .line 85
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->k:Z

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->l:I

    .line 90
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->m:Z

    .line 91
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->n:Z

    .line 117
    iput-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->J:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 118
    iput-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->K:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    .line 131
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->a()V

    .line 132
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;Landroid/view/Surface;)Landroid/view/Surface;
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->q:Landroid/view/Surface;

    return-object p1
.end method

.method private a()V
    .registers 5

    .prologue
    .line 136
    .line 1159
    :try_start_0
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_nativex_playerview"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1160
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1161
    if-eqz v1, :cond_116

    .line 1162
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_ll_loading"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->p:Landroid/widget/LinearLayout;

    .line 1163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_5a

    .line 1164
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_textureview"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->o:Landroid/view/TextureView;

    .line 1165
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->o:Landroid/view/TextureView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setKeepScreenOn(Z)V

    .line 1166
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->o:Landroid/view/TextureView;

    new-instance v2, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$b;-><init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;B)V

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1168
    :cond_5a
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_progress"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    .line 1169
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_iv_playend_pic"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/view/MyImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    .line 1170
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_iv_play"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    .line 1171
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_iv_pause"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->u:Landroid/widget/ImageView;

    .line 1172
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_iv_sound"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->v:Landroid/widget/ImageView;

    .line 1173
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_view_cover"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->x:Landroid/view/View;

    .line 1174
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_iv_sound_animation"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->w:Landroid/widget/ImageView;

    .line 1175
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->w:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->y:Landroid/graphics/drawable/AnimationDrawable;

    .line 1176
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->y:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1500
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->v:Landroid/widget/ImageView;

    new-instance v2, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;-><init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1535
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->u:Landroid/widget/ImageView;

    new-instance v2, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$3;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$3;-><init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1553
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    new-instance v2, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$4;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$4;-><init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1179
    const/4 v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->addView(Landroid/view/View;II)V
    :try_end_116
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_116} :catch_12a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_116} :catch_12f

    .line 2145
    :cond_116
    :goto_116
    :try_start_116
    new-instance v0, Lcom/mintegral/msdk/playercommon/d;

    invoke-direct {v0}, Lcom/mintegral/msdk/playercommon/d;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    .line 2146
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    invoke-virtual {v0, p0}, Lcom/mintegral/msdk/playercommon/d;->a(Lcom/mintegral/msdk/playercommon/c;)V

    .line 2150
    new-instance v0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$1;-><init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->F:Landroid/os/Handler;

    .line 142
    :goto_129
    return-void

    .line 1182
    :catch_12a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_12e} :catch_12f

    goto :goto_116

    .line 140
    :catch_12f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_129
.end method

.method static synthetic a(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;Z)Z
    .registers 2

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/nativex/listener/a;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->D:Lcom/mintegral/msdk/nativex/listener/a;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 662
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->f()V

    .line 663
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->h()V

    .line 664
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1a

    .line 668
    :goto_19
    return-void

    .line 666
    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_19
.end method

.method static synthetic b(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;Z)Z
    .registers 2

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->K:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 674
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->g()V

    .line 675
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->n:Z

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    .line 679
    :goto_16
    return-void

    .line 677
    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_16
.end method

.method static synthetic d(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->d:Z

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->w:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->w:Landroid/widget/ImageView;

    .line 683
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->m:Z

    if-eqz v0, :cond_20

    .line 684
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->w:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    :cond_20
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 689
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->w:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 690
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->w:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 692
    :cond_f
    return-void
.end method

.method static synthetic e(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->f()V

    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 711
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->x:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 712
    return-void
.end method

.method static synthetic f(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->h()V

    return-void
.end method

.method private g()V
    .registers 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_f

    .line 716
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->x:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 718
    :cond_f
    return-void
.end method

.method static synthetic g(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e:Z

    return v0
.end method

.method static synthetic h(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->u:Landroid/widget/ImageView;

    return-object v0
.end method

.method private h()V
    .registers 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->u:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 722
    return-void
.end method

.method private i()V
    .registers 3

    .prologue
    .line 889
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->F:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 890
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->F:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 892
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->E:Ljava/util/Timer;

    if-eqz v0, :cond_13

    .line 893
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->E:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 898
    :cond_13
    :goto_13
    return-void

    .line 896
    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method static synthetic i(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V
    .registers 5

    .prologue
    .line 60
    .line 3872
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->i()V

    .line 3873
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->E:Ljava/util/Timer;

    .line 3874
    new-instance v0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$8;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$8;-><init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    .line 3884
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->E:Ljava/util/Timer;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 60
    return-void
.end method

.method private j()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 902
    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_90

    if-nez v0, :cond_7

    move-object v0, v1

    .line 972
    :cond_6
    :goto_6
    return-object v0

    .line 906
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mintegral/msdk/videocommon/download/a;

    if-nez v0, :cond_3e

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 908
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->A:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/mintegral/msdk/videocommon/download/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/download/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mintegral/msdk/videocommon/download/a;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3e} :catch_97

    .line 913
    :cond_3e
    :goto_3e
    :try_start_3e
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v0, :cond_130

    .line 914
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v2

    .line 915
    const-string v0, "MediaViewPlayerView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u672c\u5730\u5df2\u4e0b\u8f7d\u5b8c \u62ff\u672c\u5730\u64ad\u653e\u5730\u5740\uff1aJinr state\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const/4 v0, 0x5

    if-ne v2, v0, :cond_9c

    .line 917
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 918
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    .line 920
    if-eqz v3, :cond_130

    .line 921
    const-string v3, "MediaViewPlayerView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u672c\u5730\u5df2\u4e0b\u8f7d\u5b8c \u62ff\u672c\u5730\u64ad\u653e\u5730\u5740\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_8e} :catch_90

    goto/16 :goto_6

    .line 970
    :catch_90
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_94
    move-object v0, v1

    .line 972
    goto/16 :goto_6

    .line 911
    :catch_97
    move-exception v0

    :try_start_98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    .line 924
    :cond_9c
    const/4 v0, 0x6

    if-ne v2, v0, :cond_130

    .line 925
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 926
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    .line 928
    if-eqz v3, :cond_130

    .line 929
    const-string v3, "MediaViewPlayerView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u672c\u5730\u5df2\u4e0b\u8f7d\u5b8c \u62ff\u672c\u5730\u64ad\u653e\u5730\u5740\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v3, ".dltmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_d3} :catch_90

    move-result v3

    if-eqz v3, :cond_6

    .line 932
    :try_start_d6
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/f/f;

    move-result-object v3

    .line 933
    iget-object v4, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/f/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 934
    new-instance v4, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$9;

    invoke-direct {v4, p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$9;-><init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    iget-object v5, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 950
    invoke-virtual {v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v5

    .line 934
    invoke-virtual {v3, v4, v5}, Lcom/mintegral/msdk/f/f;->a(Lcom/mintegral/msdk/f/b;Ljava/lang/String;)V

    .line 951
    iget-object v4, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/f/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 953
    const-string v3, "MediaViewPlayerView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "proxyUrl \u64ad\u653e\u5730\u5740\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_128} :catch_12a

    goto/16 :goto_6

    .line 956
    :catch_12a
    move-exception v2

    :try_start_12b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 964
    :cond_130
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    .line 965
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 966
    const-string v2, "MediaViewPlayerView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u672c\u5730\u5c1a\u672a\u4e0b\u8f7d\u5b8c \u62ff\u7f51\u7edc\u5730\u5740\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_150} :catch_90

    goto/16 :goto_6
.end method

.method static synthetic j(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->g()V

    return-void
.end method

.method static synthetic k(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/videocommon/view/MyImageView;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    return-object v0
.end method

.method private k()V
    .registers 5

    .prologue
    .line 977
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 978
    const-string v0, "MediaViewPlayerView"

    const-string v1, "playerview  dwLocalAddressplayError playurl is network return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :cond_f
    :goto_f
    return-void

    .line 981
    :cond_10
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    .line 982
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 983
    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    .line 984
    const-string v1, "MediaViewPlayerView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "playerview dwLocalAddressplayError \u7528\u7f51\u7edc\u5730\u5740\u6284\u5e95\u64ad\u653e"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_f

    .line 987
    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f
.end method

.method static synthetic l(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method static synthetic m(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/videocommon/download/a;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mintegral/msdk/videocommon/download/a;

    return-object v0
.end method

.method static synthetic n(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->j:Z

    return v0
.end method

.method static synthetic o(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b()V

    return-void
.end method

.method static synthetic p(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->i:Z

    return v0
.end method

.method static synthetic r(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->d:Z

    return v0
.end method

.method static synthetic s(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->h:Z

    return v0
.end method

.method static synthetic t(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->h:Z

    return v0
.end method

.method static synthetic u(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e:Z

    return v0
.end method

.method static synthetic v(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b:Z

    return v0
.end method

.method static synthetic w(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/playercommon/d;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    return-object v0
.end method


# virtual methods
.method public OnBufferingEnd()V
    .registers 1

    .prologue
    .line 783
    return-void
.end method

.method public OnBufferingStart(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 778
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v1

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v0, :cond_1a

    const-string v0, ""

    :goto_16
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/f/f;->b(Ljava/lang/String;)V

    .line 779
    return-void

    .line 778
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public closeSound()V
    .registers 5

    .prologue
    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->k:Z

    .line 408
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    if-eqz v0, :cond_1d

    .line 409
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->v:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mintegral_nativex_sound_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/d;->d()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1d} :catch_1e

    .line 415
    :cond_1d
    :goto_1d
    return-void

    .line 413
    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d
.end method

.method public curIsFullScreen()Z
    .registers 2

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->d:Z

    return v0
.end method

.method public getCampaign()Lcom/mintegral/msdk/out/Campaign;
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method public getIsActiviePause()Z
    .registers 2

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e:Z

    return v0
.end method

.method public gonePauseView()V
    .registers 3

    .prologue
    .line 642
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->F:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 643
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->F:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$6;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$6;-><init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 656
    :cond_e
    return-void
.end method

.method public halfLoadingViewisVisible()Z
    .registers 2

    .prologue
    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/d;->j()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_e

    move-result v0

    if-eqz v0, :cond_12

    .line 430
    const/4 v0, 0x1

    .line 435
    :goto_d
    return v0

    .line 433
    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 435
    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasPrepare()Z
    .registers 2

    .prologue
    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    if-eqz v0, :cond_f

    .line 357
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/d;->g()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 362
    :goto_a
    return v0

    .line 360
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 362
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public initPlayerViewData(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;ZLcom/mintegral/msdk/playercommon/c;Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;)Z
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 196
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 197
    const-string v2, "MediaViewPlayerView"

    const-string v3, "playUrl==null return "

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_f
    return v0

    .line 200
    :cond_10
    if-nez p2, :cond_22

    .line 201
    const-string v2, "MediaViewPlayerView"

    const-string v3, "campaign ==null return "

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_f

    .line 214
    :catch_1a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->a:Z

    :goto_20
    move v0, v1

    .line 217
    goto :goto_f

    .line 204
    :cond_22
    :try_start_22
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    .line 205
    iput-boolean p3, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b:Z

    .line 206
    iput-object p2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 207
    iput-object p5, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->G:Lcom/mintegral/msdk/videocommon/download/a;

    .line 208
    iput-object p6, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->A:Ljava/lang/String;

    .line 210
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    invoke-virtual {v2, v3, v4, p4}, Lcom/mintegral/msdk/playercommon/d;->a(Ljava/lang/String;Landroid/view/View;Lcom/mintegral/msdk/playercommon/c;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_39} :catch_1a

    .line 2832
    :try_start_39
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3b} :catch_55
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3b} :catch_1a

    if-nez v2, :cond_41

    .line 212
    :cond_3d
    :goto_3d
    const/4 v2, 0x1

    :try_start_3e
    iput-boolean v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->a:Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_40} :catch_1a

    goto :goto_20

    .line 2835
    :cond_41
    :try_start_41
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 2836
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2837
    const-string v2, "MediaViewPlayerView"

    const-string v3, "imageUrl isnull initPlayEndPic return"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_54} :catch_55
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_54} :catch_1a

    goto :goto_3d

    .line 2867
    :catch_55
    move-exception v2

    :try_start_56
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_1a

    goto :goto_3d

    .line 2840
    :cond_5a
    :try_start_5a
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 2843
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mintegral/msdk/base/common/c/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 2844
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2845
    iget-object v4, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    if-eqz v4, :cond_3d

    if-eqz v3, :cond_3d

    .line 2846
    iget-object v4, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    invoke-virtual {v4, v2}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setImageUrl(Ljava/lang/String;)V

    .line 2847
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2848
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setVisibility(I)V

    goto :goto_3d

    .line 2851
    :cond_95
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v3

    new-instance v4, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$7;

    invoke-direct {v4, p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$7;-><init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v3, v2, v4}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_a5} :catch_55
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_a5} :catch_1a

    goto :goto_3d
.end method

.method public isComplete()Z
    .registers 2

    .prologue
    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    if-eqz v0, :cond_f

    .line 368
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/d;->h()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 373
    :goto_a
    return v0

    .line 371
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 373
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    if-eqz v0, :cond_f

    .line 379
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/d;->i()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 384
    :goto_a
    return v0

    .line 382
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 384
    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onClickPlayButton()V
    .registers 4

    .prologue
    .line 566
    :try_start_0
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c()V

    .line 567
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->g()V

    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->setIsComplete(Z)V

    .line 569
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c:Z

    if-nez v0, :cond_4c

    .line 570
    const-string v0, "MediaViewPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startOrPlayVideo() hasPrepare():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsNeedToRepeatPrepare:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V

    .line 576
    :goto_3b
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e:Z

    if-eqz v0, :cond_48

    .line 577
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->D:Lcom/mintegral/msdk/nativex/listener/a;

    if-eqz v0, :cond_48

    .line 578
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->D:Lcom/mintegral/msdk/nativex/listener/a;

    invoke-interface {v0}, Lcom/mintegral/msdk/nativex/listener/a;->d()V

    .line 581
    :cond_48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e:Z

    .line 585
    :goto_4b
    return-void

    .line 573
    :cond_4c
    const-string v0, "MediaViewPlayerView"

    const-string v1, "\u70b9\u51fb\u64ad\u653e playVideo()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->playVideo()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_56} :catch_57

    goto :goto_3b

    .line 582
    :catch_57
    move-exception v0

    .line 583
    const-string v1, "MediaViewPlayerView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4b
.end method

.method public onClickPlayerView()V
    .registers 5

    .prologue
    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 593
    const-string v0, "MediaViewPlayerView"

    const-string v1, "playend is visibility return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :goto_13
    return-void

    .line 596
    :cond_14
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_27

    .line 597
    const-string v0, "MediaViewPlayerView"

    const-string v1, "isplaying return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_13

    .line 633
    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13

    .line 600
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->u:Landroid/widget/ImageView;

    if-nez v0, :cond_33

    .line 601
    const-string v0, "MediaViewPlayerView"

    const-string v1, "pause id is null return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 604
    :cond_33
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_49

    .line 605
    const-string v0, "MediaViewPlayerView"

    const-string v1, "gone durview"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->gonePauseView()V

    .line 607
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->i()V

    goto :goto_13

    .line 609
    :cond_49
    const-string v0, "MediaViewPlayerView"

    const-string v1, "show durview"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->z:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_59

    .line 611
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->z:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 613
    :cond_59
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->z:Landroid/view/animation/AlphaAnimation;

    .line 614
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->z:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 615
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->z:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 616
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->z:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$5;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$5;-><init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 629
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->f()V

    .line 630
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->x:Landroid/view/View;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->z:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_88} :catch_22

    goto :goto_13
.end method

.method public onPlayCompleted()V
    .registers 3

    .prologue
    .line 758
    const-string v0, "MediaViewPlayerView"

    const-string v1, "=========onPlayCompleted"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->I:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;

    if-eqz v0, :cond_11

    .line 760
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->I:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;->a()V

    .line 774
    :goto_10
    return-void

    .line 763
    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->j:Z

    if-eqz v0, :cond_25

    .line 764
    const-string v0, "MediaViewPlayerView"

    const-string v1, "\u64ad\u653e\u7ed3\u675f \u8c03\u7528onClickPlayButton"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->onClickPlayButton()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_20

    goto :goto_10

    .line 771
    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    .line 767
    :cond_25
    :try_start_25
    const-string v0, "MediaViewPlayerView"

    const-string v1, "\u64ad\u653e\u7ed3\u675f \u4e0d\u80fd\u5faa\u73af\u64ad\u653e \u663e\u793aendcardView"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_20

    goto :goto_10
.end method

.method public onPlayError(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 788
    :try_start_0
    const-string v0, "MediaViewPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlayError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c:Z

    .line 790
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b()V

    .line 791
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->k()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 795
    :goto_1d
    return-void

    .line 793
    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method public onPlayProgress(II)V
    .registers 9

    .prologue
    .line 734
    :try_start_0
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c()V

    .line 736
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->d()V

    .line 737
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e:Z

    .line 738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c:Z

    .line 740
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->A:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/c/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v2

    .line 741
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v1, :cond_60

    const-string v1, ""

    :goto_33
    invoke-virtual {v2}, Lcom/mintegral/msdk/c/d;->g()I

    move-result v4

    invoke-virtual {v2}, Lcom/mintegral/msdk/c/d;->f()I

    move-result v5

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/f/f;->a(Ljava/lang/String;IIII)V

    .line 742
    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->l:I

    if-ne v0, p1, :cond_5d

    .line 743
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v1

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v0, :cond_67

    const-string v0, ""

    :goto_5a
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/f/f;->b(Ljava/lang/String;)V

    .line 745
    :cond_5d
    iput p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->l:I

    .line 749
    :goto_5f
    return-void

    .line 741
    :cond_60
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    goto :goto_33

    .line 743
    :cond_67
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->C:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6c} :catch_6e

    move-result-object v0

    goto :goto_5a

    .line 746
    :catch_6e
    move-exception v0

    .line 747
    const-string v1, "MediaViewPlayerView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5f
.end method

.method public onPlayProgressMS(II)V
    .registers 5

    .prologue
    .line 753
    .line 3810
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    .line 3812
    if-lez p2, :cond_13

    .line 3813
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 3815
    :cond_13
    if-ltz p1, :cond_1c

    .line 3816
    add-int/lit8 v0, p1, 0x1

    .line 3817
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 3823
    :cond_1c
    :goto_1c
    return-void

    .line 3822
    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c
.end method

.method public onPlaySetDataSourceError(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 800
    :try_start_0
    const-string v0, "MediaViewPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlaySetDataSourceError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c:Z

    .line 802
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->k()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 806
    :goto_1a
    return-void

    .line 804
    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public onPlayStarted(I)V
    .registers 4

    .prologue
    .line 726
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->D:Lcom/mintegral/msdk/nativex/listener/a;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 727
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->D:Lcom/mintegral/msdk/nativex/listener/a;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/nativex/listener/a;->a(Ljava/lang/String;)V

    .line 729
    :cond_13
    return-void
.end method

.method public openSound()V
    .registers 5

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->k:Z

    .line 393
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    if-eqz v0, :cond_1d

    .line 394
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->v:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mintegral_nativex_sound_open"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/d;->e()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1d} :catch_1e

    .line 400
    :cond_1d
    :goto_1d
    return-void

    .line 398
    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    if-eqz v0, :cond_c

    .line 316
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/d;->a()V

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->f:Z

    .line 319
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->K:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_1c

    .line 320
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->K:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->pause()V

    .line 321
    const-string v0, "omsdk"

    const-string v1, "videoEvents.pause()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_1c
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    .line 327
    :goto_1f
    return-void

    .line 325
    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1f
.end method

.method public playVideo()V
    .registers 4

    .prologue
    .line 225
    :try_start_0
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->a:Z

    if-nez v0, :cond_c

    .line 226
    const-string v0, "MediaViewPlayerView"

    const-string v1, "playVideo() init failed \u64ad\u653e\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_b
    return-void

    .line 229
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    if-nez v0, :cond_1d

    .line 230
    const-string v0, "MediaViewPlayerView"

    const-string v1, "playVideo() mVideoFeedsPlayer is null \u64ad\u653e\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_b

    .line 261
    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 233
    :cond_1d
    :try_start_1d
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->g:Z

    if-nez v0, :cond_2c

    .line 234
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b()V

    .line 235
    const-string v0, "MediaViewPlayerView"

    const-string v1, "playVideo() mSurfaceTextureAvailable no init return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 238
    :cond_2c
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    :cond_3e
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 239
    :cond_48
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    .line 241
    :cond_4e
    const-string v0, "MediaViewPlayerView"

    const-string v1, "playVideo() play"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c()V

    .line 243
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->B:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->q:Landroid/view/Surface;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/playercommon/d;->a(Ljava/lang/String;Landroid/view/Surface;)V

    .line 244
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->f:Z

    if-nez v0, :cond_69

    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e:Z

    if-eqz v0, :cond_7c

    :cond_69
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->K:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_7c

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->f:Z

    .line 246
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->K:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->resume()V

    .line 247
    const-string v0, "omsdk"

    const-string v1, "videoEvents.resume()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_7c
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->k:Z

    if-eqz v0, :cond_89

    .line 254
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/d;->e()V

    .line 259
    :goto_85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c:Z

    goto :goto_b

    .line 256
    :cond_89
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/d;->d()V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_8e} :catch_18

    goto :goto_85
.end method

.method public registerView(Lcom/iab/omid/library/mintegral/adsession/AdSession;)V
    .registers 3

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->J:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 1099
    if-eqz p1, :cond_25

    .line 1100
    invoke-virtual {p1, p0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    .line 1101
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;)V

    .line 1102
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;)V

    .line 1103
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->s:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;)V

    .line 1104
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;)V

    .line 1105
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->u:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;)V

    .line 1106
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->v:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;)V

    .line 1108
    :cond_25
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    if-eqz v0, :cond_c

    .line 346
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/d;->c()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    .line 352
    :cond_c
    :goto_c
    return-void

    .line 350
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c
.end method

.method public setAllowLoopPlay(Z)V
    .registers 2

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->j:Z

    .line 493
    return-void
.end method

.method public setEnterFullScreen()V
    .registers 4

    .prologue
    .line 450
    :try_start_0
    const-string v0, "MediaViewPlayerView"

    const-string v1, "setEnterFullScreen"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->d:Z

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->h:Z

    .line 453
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->v:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    .line 458
    :goto_16
    return-void

    .line 455
    :catch_17
    move-exception v0

    .line 456
    const-string v1, "MediaViewPlayerView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public setExitFullScreen()V
    .registers 4

    .prologue
    .line 462
    :try_start_0
    const-string v0, "MediaViewPlayerView"

    const-string v1, "setExitFullScreen"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->d:Z

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c:Z

    .line 466
    const-string v0, "MediaViewPlayerView"

    const-string v1, "setExitFullScreen mIsNeedToRepeatPrepare=false"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->v:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->d()V

    .line 469
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_22

    .line 473
    :goto_21
    return-void

    .line 470
    :catch_22
    move-exception v0

    .line 471
    const-string v1, "MediaViewPlayerView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public setIsActivePause(Z)V
    .registers 2

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e:Z

    .line 481
    return-void
.end method

.method public setIsComplete(Z)V
    .registers 3

    .prologue
    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    if-eqz v0, :cond_9

    .line 441
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/playercommon/d;->b(Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 446
    :cond_9
    :goto_9
    return-void

    .line 444
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public setIsFrontDesk(Z)V
    .registers 3

    .prologue
    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    if-eqz v0, :cond_9

    .line 420
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/playercommon/d;->a(Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 425
    :cond_9
    :goto_9
    return-void

    .line 423
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public setMediaViewPlayListener(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->I:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;

    .line 122
    return-void
.end method

.method public setOnMediaViewPlayerViewListener(Lcom/mintegral/msdk/nativex/listener/a;)V
    .registers 2

    .prologue
    .line 496
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->D:Lcom/mintegral/msdk/nativex/listener/a;

    .line 497
    return-void
.end method

.method public setVideoEvents(Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;)V
    .registers 2

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->K:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    .line 1112
    return-void
.end method

.method public showPlayView()V
    .registers 3

    .prologue
    .line 638
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->t:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 639
    return-void
.end method

.method public showProgressView(Z)V
    .registers 4

    .prologue
    .line 695
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->n:Z

    .line 696
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_e

    .line 697
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->r:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 699
    :cond_e
    return-void

    .line 697
    :cond_f
    const/4 v0, 0x4

    goto :goto_b
.end method

.method public showSoundIndicator(Z)V
    .registers 3

    .prologue
    .line 702
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->m:Z

    .line 703
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->m:Z

    if-eqz v0, :cond_a

    .line 704
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->d()V

    .line 708
    :goto_9
    return-void

    .line 706
    :cond_a
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e()V

    goto :goto_9
.end method

.method public startOrPlayVideo()V
    .registers 4

    .prologue
    .line 267
    :try_start_0
    const-string v0, "MediaViewPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startOrPlayVideo() mIsNeedToRepeatPrepare:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mhasprepare:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->g:Z

    if-nez v0, :cond_33

    .line 269
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b()V

    .line 270
    const-string v0, "MediaViewPlayerView"

    const-string v1, "startOrPlayVideo() mSurfaceTextureAvailable no init return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3307
    :cond_32
    :goto_32
    return-void

    .line 273
    :cond_33
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c:Z

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 274
    :cond_3d
    const-string v0, "MediaViewPlayerView"

    const-string v1, "startOrPlayVideo() playVideo"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->playVideo()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    goto :goto_32

    .line 281
    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32

    .line 277
    :cond_4d
    :try_start_4d
    const-string v0, "MediaViewPlayerView"

    const-string v1, "startOrPlayVideo() start"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_54} :catch_48

    .line 3287
    :try_start_54
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    if-nez v0, :cond_6b

    .line 3288
    const-string v0, "MediaViewPlayerView"

    const-string v1, "start() mVideoFeedsPlayer is null return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_5f} :catch_60
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5f} :catch_48

    goto :goto_32

    .line 3305
    :catch_60
    move-exception v0

    .line 3306
    :try_start_61
    const-string v1, "MediaViewPlayerView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6a} :catch_48

    goto :goto_32

    .line 3291
    :cond_6b
    :try_start_6b
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c()V

    .line 3292
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->i:Z

    if-eqz v0, :cond_9f

    .line 3293
    const-string v0, "MediaViewPlayerView"

    const-string v1, "start() startOrPlayVideo need setSurface final"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3294
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->q:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/playercommon/d;->a(Landroid/view/Surface;)V

    .line 3295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->i:Z

    .line 3300
    :goto_83
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->f:Z

    if-nez v0, :cond_8b

    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e:Z

    if-eqz v0, :cond_32

    :cond_8b
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->K:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_32

    .line 3301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->f:Z

    .line 3302
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->K:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->resume()V

    .line 3303
    const-string v0, "omsdk"

    const-string v1, "videoEvents.resume()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 3297
    :cond_9f
    const-string v0, "MediaViewPlayerView"

    const-string v1, "start() startOrPlayVideo final"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3298
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    .line 3707
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/playercommon/d;->a(Landroid/view/Surface;)V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_ac} :catch_60
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_ac} :catch_48

    goto :goto_83
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    if-eqz v0, :cond_9

    .line 332
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->H:Lcom/mintegral/msdk/playercommon/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/d;->b()V

    .line 334
    :cond_9
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 338
    :goto_c
    return-void

    .line 336
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public unregisterView()V
    .registers 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->J:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    if-eqz v0, :cond_9

    .line 1116
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->J:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->removeAllFriendlyObstructions()V

    .line 1118
    :cond_9
    return-void
.end method
