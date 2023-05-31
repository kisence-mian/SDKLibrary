.class public Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;
.super Landroid/widget/LinearLayout;
.source "VideoFeedsPlayerView.java"

# interfaces
.implements Lcom/mintegral/msdk/playercommon/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;
    }
.end annotation


# static fields
.field public static final INTERVAL_TIME_GONE_DUR_VIEW:J = 0xbb8L

.field public static final TAG:Ljava/lang/String; = "VideoFeedsPlayerView"


# instance fields
.field private A:I

.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Lcom/mintegral/msdk/videocommon/view/MyImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ProgressBar;

.field private m:Lcom/mintegral/msdk/playercommon/b;

.field private n:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Ljava/util/Timer;

.field private x:Landroid/os/Handler;

.field private y:Landroid/view/SurfaceHolder;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->p:Z

    .line 73
    iput-boolean v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->q:Z

    .line 76
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->r:Z

    .line 79
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->s:Z

    .line 81
    iput-boolean v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->t:Z

    .line 82
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->u:Z

    .line 85
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->v:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->x:Landroid/os/Handler;

    .line 585
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->A:I

    .line 98
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->a()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->p:Z

    .line 73
    iput-boolean v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->q:Z

    .line 76
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->r:Z

    .line 79
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->s:Z

    .line 81
    iput-boolean v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->t:Z

    .line 82
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->u:Z

    .line 85
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->v:Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->x:Landroid/os/Handler;

    .line 585
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->A:I

    .line 103
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->a()V

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->y:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method private static a(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 678
    const-string v0, ""

    .line 680
    :try_start_2
    const-string v1, "mm:ss"

    int-to-long v2, p0

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 681
    if-eqz v1, :cond_f

    .line 682
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10

    move-result-object v0

    .line 687
    :cond_f
    :goto_f
    return-object v0

    .line 685
    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method private a()V
    .registers 5

    .prologue
    .line 109
    :try_start_0
    new-instance v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$1;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->x:Landroid/os/Handler;

    .line 1167
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_feeds_player_view"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1168
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1169
    if-eqz v1, :cond_128

    .line 1170
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_feeds_rl_playroot"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->a:Landroid/widget/RelativeLayout;

    .line 1172
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_feeds_ll_sur_container"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->b:Landroid/widget/LinearLayout;

    .line 1173
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_feeds_ll_loading"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->c:Landroid/widget/LinearLayout;

    .line 1175
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_feeds_ll_pro_dur"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->d:Landroid/widget/LinearLayout;

    .line 1176
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_feeds_tv_cur_pos"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->e:Landroid/widget/TextView;

    .line 1177
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_feeds_progress"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->f:Landroid/widget/ProgressBar;

    .line 1178
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_feeds_tv_alldur"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->g:Landroid/widget/TextView;

    .line 1179
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_feeds_iv_sound"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->h:Landroid/widget/ImageView;

    .line 1180
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_feeds_probar"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->l:Landroid/widget/ProgressBar;

    .line 1182
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_feeds_rl_playend"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->i:Landroid/widget/RelativeLayout;

    .line 1183
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_feeds_iv_playend_pic"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/view/MyImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->j:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    .line 1184
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_feeds_iv_play"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->k:Landroid/widget/ImageView;

    .line 1185
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->k:Landroid/widget/ImageView;

    new-instance v2, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$2;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$2;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1203
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->addSurfaceView()V

    .line 1204
    const/4 v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->addView(Landroid/view/View;II)V

    .line 2125
    :cond_128
    new-instance v0, Lcom/mintegral/msdk/playercommon/b;

    invoke-direct {v0}, Lcom/mintegral/msdk/playercommon/b;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    .line 2126
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0, p0}, Lcom/mintegral/msdk/playercommon/b;->a(Lcom/mintegral/msdk/playercommon/c;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_134} :catch_135

    .line 121
    :goto_134
    return-void

    .line 119
    :catch_135
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_134
.end method

.method static synthetic a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;Z)Z
    .registers 2

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->r:Z

    return p1
.end method

.method private b()V
    .registers 2

    .prologue
    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->w:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 284
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->w:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 290
    :cond_9
    :goto_9
    return-void

    .line 287
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method static synthetic b(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;Z)Z
    .registers 2

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->q:Z

    return p1
.end method

.method private c()V
    .registers 3

    .prologue
    .line 643
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->i:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 645
    return-void
.end method

.method static synthetic c(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->v:Z

    return v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;Z)Z
    .registers 2

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->u:Z

    return p1
.end method

.method private d()Z
    .registers 3

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 693
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v1, :cond_b

    .line 694
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v1}, Lcom/mintegral/msdk/playercommon/b;->k()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 699
    :cond_b
    :goto_b
    return v0

    .line 697
    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method static synthetic d(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->r:Z

    return v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->b()V

    return-void
.end method

.method static synthetic g(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)V
    .registers 5

    .prologue
    .line 3259
    :try_start_0
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->b()V

    .line 3260
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->w:Ljava/util/Timer;

    .line 3261
    new-instance v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$5;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)V

    .line 3273
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->w:Ljava/util/Timer;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 3276
    :goto_16
    return-void

    .line 3275
    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method static synthetic h(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->q:Z

    return v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/playercommon/b;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    return-object v0
.end method

.method static synthetic k(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->x:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method static synthetic m(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Lcom/mintegral/msdk/videocommon/view/MyImageView;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->j:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->s:Z

    return v0
.end method

.method static synthetic o(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->t:Z

    return v0
.end method

.method static synthetic p(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->u:Z

    return v0
.end method

.method static synthetic q(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->t:Z

    return v0
.end method

.method static synthetic s(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->v:Z

    return v0
.end method


# virtual methods
.method public OnBufferingEnd()V
    .registers 1

    .prologue
    .line 719
    return-void
.end method

.method public OnBufferingStart(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 658
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v1

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v0, :cond_1a

    const-string v0, ""

    :goto_16
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/f/f;->b(Ljava/lang/String;)V

    .line 659
    return-void

    .line 658
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public addSurfaceView()V
    .registers 5

    .prologue
    .line 141
    :try_start_0
    const-string v0, "VideoFeedsPlayerView"

    const-string v1, "addSurfaceView"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->y:Landroid/view/SurfaceHolder;

    .line 144
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->y:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 145
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->y:Landroid/view/SurfaceHolder;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 146
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->y:Landroid/view/SurfaceHolder;

    new-instance v2, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$a;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;B)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 147
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    .line 151
    :goto_32
    return-void

    .line 149
    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32
.end method

.method public closeSound()V
    .registers 2

    .prologue
    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_9

    .line 506
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->g()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 511
    :cond_9
    :goto_9
    return-void

    .line 509
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public getCurPosition()I
    .registers 3

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 483
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v1, :cond_b

    .line 484
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v1}, Lcom/mintegral/msdk/playercommon/b;->i()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 490
    :cond_b
    :goto_b
    return v0

    .line 487
    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public hideTrackProgress()V
    .registers 3

    .prologue
    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->l:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 715
    :goto_7
    return-void

    .line 713
    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public initVFPData(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/playercommon/c;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 303
    const-string v1, "VideoFeedsPlayerView"

    const-string v2, "playUrl==null"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_f
    return v0

    .line 307
    :cond_10
    if-nez p2, :cond_1a

    .line 308
    const-string v1, "VideoFeedsPlayerView"

    const-string v2, "campaign==null"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 312
    :cond_1a
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->o:Ljava/lang/String;

    .line 313
    iput-object p2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 2328
    :try_start_1e
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_20} :catch_56

    if-nez v0, :cond_31

    .line 316
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, p3}, Lcom/mintegral/msdk/playercommon/b;->a(Ljava/lang/String;Landroid/view/View;Lcom/mintegral/msdk/playercommon/c;)Z

    .line 318
    iput-boolean v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->p:Z

    move v0, v1

    .line 319
    goto :goto_f

    .line 2331
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 2332
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 2335
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 2338
    iput-object p4, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->z:Ljava/lang/String;

    .line 2339
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v2

    new-instance v3, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$6;

    invoke-direct {v3, p0, p4}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$6;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_55} :catch_56

    goto :goto_22

    .line 2374
    :catch_56
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_22
.end method

.method public onPlayCompleted()V
    .registers 3

    .prologue
    .line 622
    :try_start_0
    const-string v0, "VideoFeedsPlayerView"

    const-string v1, "=========onPlayCompleted"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->v:Z

    .line 624
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->showPlayEndView()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 629
    :goto_d
    return-void

    .line 626
    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public onPlayError(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 650
    :try_start_0
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->showPlayEndView()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 654
    :goto_3
    return-void

    .line 652
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public onPlayProgress(II)V
    .registers 9

    .prologue
    .line 589
    const-string v0, "VideoFeedsPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlayProgresscur PlayPosition:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " allDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->c()V

    .line 593
    if-ltz p1, :cond_39

    .line 594
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 596
    mul-int/lit16 v0, p1, 0x3e8

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 598
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    :cond_39
    if-lez p2, :cond_51

    .line 603
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 605
    mul-int/lit16 v0, p2, 0x3e8

    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 607
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    :cond_51
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/c/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v2

    .line 611
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v1, :cond_a5

    const-string v1, ""

    :goto_78
    invoke-virtual {v2}, Lcom/mintegral/msdk/c/d;->g()I

    move-result v4

    invoke-virtual {v2}, Lcom/mintegral/msdk/c/d;->f()I

    move-result v5

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/f/f;->a(Ljava/lang/String;IIII)V

    .line 612
    iget v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->A:I

    if-ne v0, p1, :cond_a2

    .line 613
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v1

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v0, :cond_ac

    const-string v0, ""

    :goto_9f
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/f/f;->b(Ljava/lang/String;)V

    .line 615
    :cond_a2
    iput p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->A:I

    .line 616
    return-void

    .line 611
    :cond_a5
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    goto :goto_78

    .line 613
    :cond_ac
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    goto :goto_9f
.end method

.method public onPlayProgressMS(II)V
    .registers 5

    .prologue
    .line 582
    const-string v0, "VideoFeedsPlayerView"

    const-string v1, "onPlayProgressMS"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method public onPlaySetDataSourceError(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 664
    :try_start_0
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->showPlayEndView()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 668
    :goto_3
    return-void

    .line 666
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public onPlayStarted(I)V
    .registers 5

    .prologue
    .line 576
    const-string v0, "VideoFeedsPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlayStarted allDuration:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->c()V

    .line 578
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 451
    :try_start_0
    const-string v1, "VideoFeedsPlayerView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "mRlPlayRoot.isShown():"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4f

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mIsSurfaceHolderDestoryed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->u:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mIsFirstCreateHolder:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->t:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->t:Z

    if-nez v0, :cond_4e

    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->u:Z

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4e

    .line 453
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->d()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_51

    .line 458
    :cond_4e
    :goto_4e
    return-void

    .line 451
    :cond_4f
    const/4 v0, 0x0

    goto :goto_12

    .line 456
    :catch_51
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e
.end method

.method public openSound()V
    .registers 2

    .prologue
    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_9

    .line 496
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->h()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 501
    :cond_9
    :goto_9
    return-void

    .line 499
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_9

    .line 410
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->b()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 415
    :cond_9
    :goto_9
    return-void

    .line 413
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public playVideo(I)V
    .registers 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    if-nez v0, :cond_c

    .line 385
    const-string v0, "VideoFeedsPlayerView"

    const-string v1, "player init error \u64ad\u653e\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :goto_b
    return-void

    .line 388
    :cond_c
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->p:Z

    if-nez v0, :cond_18

    .line 389
    const-string v0, "VideoFeedsPlayerView"

    const-string v1, "vfp init failed \u64ad\u653e\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 393
    :cond_18
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->s:Z

    if-eqz v0, :cond_29

    .line 394
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->h()V

    .line 401
    :goto_21
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mintegral/msdk/playercommon/b;->a(Ljava/lang/String;I)V

    goto :goto_b

    .line 396
    :cond_29
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->g()V

    goto :goto_21
.end method

.method public release()V
    .registers 2

    .prologue
    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_9

    .line 466
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->f()V

    .line 468
    :cond_9
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->b()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    .line 472
    :goto_c
    return-void

    .line 470
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c
.end method

.method public removeSurface()V
    .registers 3

    .prologue
    .line 158
    :try_start_0
    const-string v0, "VideoFeedsPlayerView"

    const-string v1, "removeSurface"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 164
    :goto_c
    return-void

    .line 161
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public setFullScreen()V
    .registers 3

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->s:Z

    .line 2215
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$3;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$3;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2232
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView$4;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    return-void
.end method

.method public showPlayEndView()V
    .registers 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->i:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 637
    return-void
.end method

.method public showTrackProgress()V
    .registers 3

    .prologue
    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->l:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 708
    :goto_6
    return-void

    .line 706
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public start()V
    .registers 2

    .prologue
    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_9

    .line 424
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/playercommon/b;->d()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 429
    :cond_9
    :goto_9
    return-void

    .line 427
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public start(I)V
    .registers 3

    .prologue
    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    if-eqz v0, :cond_9

    .line 438
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->m:Lcom/mintegral/msdk/playercommon/b;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/playercommon/b;->b(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 443
    :cond_9
    :goto_9
    return-void

    .line 441
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method
