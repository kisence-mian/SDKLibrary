.class public Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;
.super Landroid/app/Activity;
.source "VideoFeedsActivity.java"


# static fields
.field public static final INTENT_CAMPAIGN:Ljava/lang/String; = "campaign"

.field public static final INTENT_CUR_PLA_POSSITION:Ljava/lang/String; = "CurrentionPlayPosition"

.field public static final INTENT_PLAY_URL:Ljava/lang/String; = "playurl"

.field public static final INTENT_TASK:Ljava/lang/String; = "camapignTask"

.field public static final INTENT_UNIT_ID:Ljava/lang/String; = "unitId"

.field public static final TAG:Ljava/lang/String; = "VideoFeedsActivity"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

.field private d:Lcom/mintegral/msdk/videocommon/view/MyImageView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/mintegral/msdk/videocommon/view/StarLevelView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private l:Ljava/lang/String;

.field private m:Landroid/graphics/Bitmap;

.field private n:Lcom/mintegral/msdk/click/a;

.field private o:Lcom/mintegral/msdk/videofeeds/c/d;

.field private p:Lcom/mintegral/msdk/videofeeds/c/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->m:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)Lcom/mintegral/msdk/videocommon/view/MyImageView;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->d:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 122
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "unitId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->a:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CurrentionPlayPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->b:I

    .line 124
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 125
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playurl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->l:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 130
    :cond_39
    :goto_39
    return-void

    .line 128
    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method static synthetic b(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)Lcom/mintegral/msdk/click/a;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->n:Lcom/mintegral/msdk/click/a;

    return-object v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)Lcom/mintegral/msdk/videofeeds/c/d;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->o:Lcom/mintegral/msdk/videofeeds/c/d;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    :try_start_3
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_feeds_activity"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 89
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c6

    .line 90
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->setContentView(I)V

    .line 91
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->a()V

    .line 1134
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_feeds_vfpv"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->c:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    .line 1136
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_feeds_iv_icon"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/view/MyImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->d:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    .line 1137
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_feeds_tv_appName"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->e:Landroid/widget/TextView;

    .line 1138
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_feeds_sv_level"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/view/StarLevelView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->f:Lcom/mintegral/msdk/videocommon/view/StarLevelView;

    .line 1139
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_feeds_tv_desc"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->g:Landroid/widget/TextView;

    .line 1140
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_feeds_tv_cta"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->h:Landroid/widget/TextView;

    .line 1141
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_feeds_rl_main"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->i:Landroid/widget/RelativeLayout;

    .line 1142
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_rl_close"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->j:Landroid/widget/RelativeLayout;

    .line 1147
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_15f

    .line 1148
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_da

    .line 1149
    invoke-static {p0}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$1;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$1;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    .line 1165
    :cond_da
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1168
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRating()D

    move-result-wide v0

    .line 1169
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_130

    .line 1170
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 1172
    :cond_130
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->f:Lcom/mintegral/msdk/videocommon/view/StarLevelView;

    invoke-virtual {v2, v0, v1}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->initScore(D)V

    .line 1174
    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->e:Ljava/util/Map;

    if-eqz v0, :cond_1b8

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b8

    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->a:Ljava/lang/String;

    .line 1175
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 1177
    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videofeeds/c/a;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->p:Lcom/mintegral/msdk/videofeeds/c/a;

    .line 1178
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->p:Lcom/mintegral/msdk/videofeeds/c/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/c/a;->a()Lcom/mintegral/msdk/videofeeds/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->o:Lcom/mintegral/msdk/videofeeds/c/d;
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15f} :catch_1bc

    .line 1214
    :cond_15f
    :goto_15f
    :try_start_15f
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_17e

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17e

    .line 1215
    new-instance v0, Lcom/mintegral/msdk/click/a;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->n:Lcom/mintegral/msdk/click/a;

    .line 1216
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->i:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$2;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1255
    :cond_17e
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->j:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$3;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity$3;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_188} :catch_1c1

    .line 2197
    :goto_188
    :try_start_188
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b0

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_1b0

    .line 2198
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->c:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->k:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->p:Lcom/mintegral/msdk/videofeeds/c/a;

    iget-object v4, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->initVFPData(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/playercommon/c;Ljava/lang/String;)Z

    move-result v0

    .line 2199
    if-eqz v0, :cond_1b0

    .line 2200
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->c:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->setFullScreen()V

    .line 2201
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->c:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    iget v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->b:I

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->playVideo(I)V
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_1b0} :catch_1bc

    .line 113
    :cond_1b0
    :goto_1b0
    const-string v0, "VideoFeedsActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_1b7
    return-void

    .line 1180
    :cond_1b8
    :try_start_1b8
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->finish()V
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1bb} :catch_1bc

    goto :goto_15f

    .line 111
    :catch_1bc
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b0

    .line 1263
    :catch_1c1
    move-exception v0

    :try_start_1c2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_188

    .line 98
    :cond_1c6
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->a()V

    .line 99
    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->e:Ljava/util/Map;

    if-eqz v0, :cond_1fa

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1fa

    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->a:Ljava/lang/String;

    .line 100
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 102
    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videofeeds/c/a;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->p:Lcom/mintegral/msdk/videofeeds/c/a;

    .line 103
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->p:Lcom/mintegral/msdk/videofeeds/c/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/c/a;->a()Lcom/mintegral/msdk/videofeeds/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->o:Lcom/mintegral/msdk/videofeeds/c/d;

    .line 104
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->o:Lcom/mintegral/msdk/videofeeds/c/d;

    const-string v1, "not found resource"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/videofeeds/c/d;->a(Ljava/lang/String;)V

    .line 106
    :cond_1fa
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->finish()V
    :try_end_1fd
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1fd} :catch_1bc

    goto :goto_1b7
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 300
    const-string v0, "VideoFeedsActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    :try_start_a
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2325
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->d:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->m:Landroid/graphics/Bitmap;

    .line 304
    :cond_1f
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->c:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    if-eqz v0, :cond_51

    .line 306
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->c:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->release()V

    .line 308
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->c:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getCurPosition()I

    move-result v0

    .line 309
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mintegral.msdk.adview"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    const-string v2, "cur_position"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 312
    const-string v1, "VideoFeedsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDestory curPosition:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_51} :catch_52

    .line 318
    :cond_51
    :goto_51
    return-void

    .line 315
    :catch_52
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 273
    :try_start_3
    const-string v0, "VideoFeedsActivity"

    const-string v1, "onPause activity"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->c:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    if-eqz v0, :cond_13

    .line 275
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->c:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->pause()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    .line 281
    :cond_13
    :goto_13
    return-void

    .line 278
    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 288
    :try_start_3
    const-string v0, "VideoFeedsActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->c:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    if-eqz v0, :cond_13

    .line 290
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsActivity;->c:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->onResume()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    .line 295
    :cond_13
    :goto_13
    return-void

    .line 293
    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method
