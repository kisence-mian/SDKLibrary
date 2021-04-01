.class public Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;
.super Landroid/widget/LinearLayout;
.source "VideoFeedsAdView.java"


# static fields
.field public static final HEIGHT_DEFAUL:F = 720.0f

.field public static final INTENT_DATA_CUR_POSITION:Ljava/lang/String; = "cur_position"

.field public static final INTENT_FILTERN_ACTION:Ljava/lang/String; = "com.mintegral.msdk.adview"

.field public static final WIDTH_DEFAUL:F = 1280.0f

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/mintegral/msdk/videocommon/view/MyImageView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/mintegral/msdk/videocommon/view/StarLevelView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

.field private i:Landroid/graphics/Bitmap;

.field private j:Lcom/mintegral/msdk/click/a;

.field private k:Ljava/lang/String;

.field private l:Lcom/mintegral/msdk/videocommon/download/a;

.field private m:Landroid/content/Context;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field private n:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private o:Z

.field private p:Z

.field private q:Lcom/mintegral/msdk/videofeeds/c/a;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Lcom/mintegral/msdk/c/d;

.field private u:Lcom/mintegral/msdk/videofeeds/c/d;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-class v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->o:Z

    .line 84
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->p:Z

    .line 104
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->v:Z

    .line 814
    new-instance v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)V

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 107
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->o:Z

    .line 84
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->p:Z

    .line 104
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->v:Z

    .line 814
    new-instance v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$3;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)V

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 112
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method private static a(Ljava/lang/String;)F
    .registers 3

    .prologue
    .line 778
    const/4 v0, 0x0

    .line 780
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 781
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 786
    :cond_b
    :goto_b
    return v0

    .line 784
    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method static synthetic a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->i:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 294
    const-string v1, ""

    .line 298
    :try_start_3
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->l:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v2, :cond_c

    .line 364
    :cond_b
    :goto_b
    return-object v0

    .line 302
    :cond_c
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->l:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v2

    .line 303
    const/4 v3, 0x5

    if-ne v2, v3, :cond_41

    .line 305
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v2, "\u8fdb\u6765\u7684\u65f6\u5019 \u53d1\u73b0\u5df2\u7ecf\u4e0b\u8f7d\u597d \u83b7\u53d6\u672c\u5730\u6587\u4ef6\u5730\u5740"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->l:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 308
    :cond_33
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v2, "localurl\u4e3a\u7a7a \u6216\u8005\u672c\u5730\u6587\u4ef6 \u4e0d\u5b58\u5728 \u83b7\u53d6\u7f51\u7edcurl"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 314
    :cond_41
    const/4 v3, 0x6

    if-ne v2, v3, :cond_dc

    .line 315
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->l:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 316
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    .line 318
    if-eqz v3, :cond_d9

    .line 319
    sget-object v3, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

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

    .line 320
    const-string v3, ".dltmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_78} :catch_d5

    move-result v3

    if-eqz v3, :cond_b

    .line 322
    :try_start_7b
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/f/f;

    move-result-object v3

    .line 323
    iget-object v4, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/f/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 324
    new-instance v4, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$1;

    invoke-direct {v4, p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$1;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)V

    iget-object v5, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 340
    invoke-virtual {v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v5

    .line 324
    invoke-virtual {v3, v4, v5}, Lcom/mintegral/msdk/f/f;->a(Lcom/mintegral/msdk/f/b;Ljava/lang/String;)V

    .line 341
    iget-object v4, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/f/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    sget-object v3, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

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
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_cd} :catch_cf

    goto/16 :goto_b

    .line 345
    :catch_cf
    move-exception v2

    :try_start_d0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_d5

    goto/16 :goto_b

    .line 361
    :catch_d5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d9
    move-object v0, v1

    goto/16 :goto_b

    .line 352
    :cond_dc
    :try_start_dc
    sget-object v2, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v3, "\u8fdb\u6765\u7684\u65f6\u5019 \u6ca1\u6709\u4e0b\u8f7d\u597d \u83b7\u53d6\u7f51\u7edcurl"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 354
    sget-object v2, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v3, "\u83b7\u53d6videoUrl\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 357
    :cond_f8
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_fd} :catch_d5

    move-result-object v0

    goto/16 :goto_b
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 117
    :try_start_1
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->m:Landroid/content/Context;

    .line 118
    const-string v0, "mintegral_feeds_ad_view"

    const-string v1, "layout"

    invoke-static {p1, v0, v1}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 119
    if-eq v0, v2, :cond_88

    .line 120
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 121
    const-string v0, "mintegral_feeds_ll_main"

    const-string v2, "id"

    invoke-static {p1, v0, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->b:Landroid/widget/LinearLayout;

    .line 122
    const-string v0, "mintegral_feeds_iv_icon"

    const-string v2, "id"

    invoke-static {p1, v0, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/view/MyImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->c:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    .line 123
    const-string v0, "mintegral_feeds_tv_appName"

    const-string v2, "id"

    invoke-static {p1, v0, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->d:Landroid/widget/TextView;

    .line 124
    const-string v0, "mintegral_feeds_sv_level"

    const-string v2, "id"

    invoke-static {p1, v0, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/view/StarLevelView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->e:Lcom/mintegral/msdk/videocommon/view/StarLevelView;

    .line 125
    const-string v0, "mintegral_feeds_tv_desc"

    const-string v2, "id"

    invoke-static {p1, v0, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->f:Landroid/widget/TextView;

    .line 126
    const-string v0, "mintegral_feeds_tv_cta"

    const-string v2, "id"

    invoke-static {p1, v0, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->g:Landroid/widget/TextView;

    .line 127
    const-string v0, "mintegral_feeds_vfpv"

    const-string v2, "id"

    invoke-static {p1, v0, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    .line 128
    const/4 v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->addView(Landroid/view/View;II)V

    .line 139
    :cond_87
    :goto_87
    return-void

    .line 130
    :cond_88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->v:Z

    .line 131
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v1, "not found resource"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->u:Lcom/mintegral/msdk/videofeeds/c/d;

    if-eqz v0, :cond_87

    .line 133
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->u:Lcom/mintegral/msdk/videofeeds/c/d;

    const-string v1, "not found resource"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/videofeeds/c/d;->a(Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9d} :catch_9e

    goto :goto_87

    .line 137
    :catch_9e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_87
.end method

.method static synthetic b(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/videocommon/download/a;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->l:Lcom/mintegral/msdk/videocommon/download/a;

    return-object v0
.end method

.method private b()Z
    .registers 3

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 441
    :try_start_1
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 442
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-result v0

    .line 447
    :cond_f
    :goto_f
    return v0

    .line 445
    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method static synthetic c(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/videocommon/view/MyImageView;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->c:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/click/a;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->j:Lcom/mintegral/msdk/click/a;

    return-object v0
.end method

.method static synthetic f(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/videofeeds/c/d;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->u:Lcom/mintegral/msdk/videofeeds/c/d;

    return-object v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)V
    .registers 2

    .prologue
    .line 3926
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    if-eqz v0, :cond_9

    .line 3927
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->showTrackProgress()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 3931
    :cond_9
    :goto_9
    return-void

    .line 3930
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method static synthetic h(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)V
    .registers 2

    .prologue
    .line 3936
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    if-eqz v0, :cond_9

    .line 3937
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->hideTrackProgress()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 3941
    :cond_9
    :goto_9
    return-void

    .line 3940
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method static synthetic i(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 216
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 219
    :try_start_3
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->r:Z

    if-eqz v0, :cond_19

    .line 221
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->o:Z

    if-nez v0, :cond_18

    .line 222
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->play()V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->o:Z

    .line 237
    :cond_18
    :goto_18
    return-void

    .line 226
    :cond_19
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->u:Lcom/mintegral/msdk/videofeeds/c/d;

    if-eqz v0, :cond_18

    .line 227
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->u:Lcom/mintegral/msdk/videofeeds/c/d;

    const-string v1, "player init error"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/videofeeds/c/d;->a(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_25

    goto :goto_18

    .line 234
    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 204
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 207
    :try_start_3
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 212
    :goto_a
    return-void

    .line 209
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 243
    :try_start_3
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=============onWindowFocusChanged hasWindowFocus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->r:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->o:Z

    if-eqz v0, :cond_31

    .line 245
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->p:Z

    if-nez v0, :cond_31

    .line 246
    if-eqz p1, :cond_32

    .line 247
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged start "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->addSurfaceView()V

    .line 260
    :cond_31
    :goto_31
    return-void

    .line 251
    :cond_32
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v1, "onWindowFocusChanged pause \u6682\u505c"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->removeSurface()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3e} :catch_3f

    goto :goto_31

    .line 258
    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    if-eqz v0, :cond_9

    .line 499
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->pause()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 504
    :cond_9
    :goto_9
    return-void

    .line 502
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public play()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 374
    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->r:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_67

    if-eqz v0, :cond_61

    .line 1876
    :try_start_9
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1877
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_1e

    .line 1878
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/mintegral/msdk/videocommon/a/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_62

    .line 377
    :cond_1e
    :goto_1e
    :try_start_1e
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->l:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v0, :cond_28

    .line 378
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->l:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/videocommon/download/a;->a(Z)V

    .line 380
    :cond_28
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->l:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/videocommon/download/a;->b(Z)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2e} :catch_67

    .line 2404
    :try_start_2e
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->t:Lcom/mintegral/msdk/c/d;

    if-eqz v0, :cond_ac

    .line 2405
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->t:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->n()I

    move-result v0

    .line 2406
    sget-object v2, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "========autoPlayType\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    :goto_4c
    if-ne v0, v1, :cond_7e

    .line 2411
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->b()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 2412
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v1, "========wifi\u4e0b\u81ea\u52a8\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->playVideo(I)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_61} :catch_79

    .line 2431
    :cond_61
    :goto_61
    return-void

    .line 1882
    :catch_62
    move-exception v0

    :try_start_63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_1e

    .line 388
    :catch_67
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_61

    .line 2415
    :cond_6c
    :try_start_6c
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v1, "========wifi\u4e0b\u81ea\u52a8\u64ad\u653e \u4f46\u76ee\u524d\u4e0d\u662fwifi\u73af\u5883 \u73b0\u5728\u4e3a\u70b9\u51fb\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->showPlayEndView()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_78} :catch_79

    goto :goto_61

    .line 2430
    :catch_79
    move-exception v0

    :try_start_7a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_67

    goto :goto_61

    .line 2419
    :cond_7e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_8e

    .line 2420
    :try_start_81
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v1, "========\u70b9\u51fb\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->showPlayEndView()V

    goto :goto_61

    .line 2422
    :cond_8e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_9f

    .line 2423
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v1, "========\u81ea\u52a8\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->playVideo(I)V

    goto :goto_61

    .line 2426
    :cond_9f
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v1, "=======else \u70b9\u51fb\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->showPlayEndView()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_ab} :catch_79

    goto :goto_61

    :cond_ac
    move v0, v1

    goto :goto_4c
.end method

.method public release()V
    .registers 3

    .prologue
    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    if-eqz v0, :cond_9

    .line 512
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->release()V

    .line 514
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 515
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->c:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->i:Landroid/graphics/Bitmap;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1e} :catch_2e

    .line 2535
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->l:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v0, :cond_28

    .line 2536
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->l:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/a;->b(Z)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_29
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_28} :catch_2e

    .line 2541
    :cond_28
    :goto_28
    return-void

    .line 2540
    :catch_29
    move-exception v0

    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_28

    .line 525
    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_28
.end method

.method public resume()V
    .registers 3

    .prologue
    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    if-eqz v0, :cond_10

    .line 485
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v1, "onResume========"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->onResume()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 491
    :cond_10
    :goto_10
    return-void

    .line 489
    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10
.end method

.method public setDatas(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/high16 v6, 0x44a00000    # 1280.0f

    const/4 v7, 0x0

    .line 553
    :try_start_3
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->v:Z

    if-eqz v0, :cond_8

    .line 605
    :cond_7
    :goto_7
    return-void

    .line 556
    :cond_8
    if-nez p1, :cond_17

    .line 557
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v1, "\u6570\u636e\u8bbe\u7f6e\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_12

    goto :goto_7

    .line 603
    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 561
    :cond_17
    :try_start_17
    const-string v0, "unit_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 562
    const-string v0, "unit_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 563
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2ec

    .line 564
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->k:Ljava/lang/String;

    .line 571
    :cond_2d
    :goto_2d
    sget-object v0, Lcom/mintegral/msdk/videofeeds/a/a;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 572
    sget-object v0, Lcom/mintegral/msdk/videofeeds/a/a;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_45

    instance-of v1, v0, Lcom/mintegral/msdk/videofeeds/c/d;

    if-eqz v1, :cond_45

    .line 574
    check-cast v0, Lcom/mintegral/msdk/videofeeds/c/d;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->u:Lcom/mintegral/msdk/videofeeds/c/d;

    .line 578
    :cond_45
    sget-object v0, Lcom/mintegral/msdk/videofeeds/a/a;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 579
    sget-object v0, Lcom/mintegral/msdk/videofeeds/a/a;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 580
    if-eqz v0, :cond_5d

    instance-of v1, v0, Lcom/mintegral/msdk/c/d;

    if-eqz v1, :cond_5d

    .line 581
    check-cast v0, Lcom/mintegral/msdk/c/d;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->t:Lcom/mintegral/msdk/c/d;

    .line 586
    :cond_5d
    sget-object v0, Lcom/mintegral/msdk/videofeeds/a/a;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 587
    sget-object v0, Lcom/mintegral/msdk/videofeeds/a/a;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_7

    instance-of v1, v0, Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v1, :cond_7

    .line 589
    check-cast v0, Lcom/mintegral/msdk/videocommon/download/a;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->l:Lcom/mintegral/msdk/videocommon/download/a;

    .line 590
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->l:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v0, :cond_7

    .line 591
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->l:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->l()Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_7

    .line 593
    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_83} :catch_12

    .line 3268
    const/4 v0, 0x0

    :try_start_84
    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->r:Z

    .line 3269
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    if-eqz v0, :cond_da

    .line 3270
    new-instance v0, Lcom/mintegral/msdk/videofeeds/c/a;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->l:Lcom/mintegral/msdk/videocommon/download/a;

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v4, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->u:Lcom/mintegral/msdk/videofeeds/c/d;

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/videofeeds/c/a;-><init>(Lcom/mintegral/msdk/videocommon/download/a;Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Lcom/mintegral/msdk/videofeeds/c/d;)V

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->q:Lcom/mintegral/msdk/videofeeds/c/a;

    .line 3272
    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->e:Ljava/util/Map;

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b4

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->q:Lcom/mintegral/msdk/videofeeds/c/a;

    if-eqz v0, :cond_b4

    .line 3274
    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->q:Lcom/mintegral/msdk/videofeeds/c/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3276
    :cond_b4
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->l:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_c2

    .line 3277
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->s:Ljava/lang/String;

    .line 3279
    :cond_c2
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_da

    .line 3280
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->q:Lcom/mintegral/msdk/videofeeds/c/a;

    iget-object v4, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->initVFPData(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/playercommon/c;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->r:Z
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_da} :catch_2f5

    .line 3615
    :cond_da
    :goto_da
    if-eqz p1, :cond_2c9

    .line 3617
    :try_start_dc
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_fe

    .line 3618
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$2;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView$2;-><init>(Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;)V

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    .line 3635
    :cond_fe
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3636
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3637
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3638
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRating()D

    move-result-wide v0

    .line 3639
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_154

    .line 3640
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 3642
    :cond_154
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->e:Lcom/mintegral/msdk/videocommon/view/StarLevelView;

    invoke-virtual {v2, v0, v1}, Lcom/mintegral/msdk/videocommon/view/StarLevelView;->initScore(D)V

    .line 3645
    const-string v0, "video_feeds_main_color"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 3646
    const-string v0, "video_feeds_main_color"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3647
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3650
    :cond_172
    const-string v0, "video_feeds_cta_color"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 3651
    const-string v0, "video_feeds_cta_color"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3652
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3655
    :cond_18b
    const-string v0, "video_feeds_desc_font"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 3657
    const-string v0, "video_feeds_desc_font"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3658
    packed-switch v0, :pswitch_data_368

    .line 3678
    :cond_1a2
    :goto_1a2
    const-string v0, "video_feeds_desc_size"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 3679
    const-string v0, "video_feeds_desc_size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3680
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3683
    :cond_1bd
    const-string v0, "video_feeds_desc_color"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 3684
    const-string v0, "video_feeds_desc_color"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3685
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3688
    :cond_1de
    const-string v0, "video_feeds_title_font"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 3689
    const-string v0, "video_feeds_title_font"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3690
    packed-switch v0, :pswitch_data_376

    .line 3709
    :cond_1f5
    :goto_1f5
    const-string v0, "video_feeds_title_size"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_210

    .line 3710
    const-string v0, "video_feeds_title_size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3711
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3714
    :cond_210
    const-string v0, "video_feeds_title_color"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_231

    .line 3715
    const-string v0, "video_feeds_title_color"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3716
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_231
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_231} :catch_12

    .line 3729
    :cond_231
    :try_start_231
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->n:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    .line 3732
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_364

    .line 3734
    sget-object v1, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "videoResolution:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3735
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3737
    if-eqz v0, :cond_364

    array-length v1, v0

    if-lez v1, :cond_364

    .line 3738
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 3739
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 3740
    invoke-static {v1}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a(Ljava/lang/String;)F

    move-result v1

    .line 3741
    invoke-static {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a(Ljava/lang/String;)F

    move-result v0

    .line 3745
    :goto_26a
    cmpg-float v2, v1, v7

    if-gtz v2, :cond_361

    move v3, v6

    .line 3749
    :goto_26f
    cmpg-float v1, v0, v7

    if-gtz v1, :cond_35e

    .line 3750
    const/high16 v0, 0x44340000    # 720.0f

    move v2, v0

    .line 3752
    :goto_276
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->f(Landroid/content/Context;)F

    move-result v0

    .line 3753
    cmpg-float v1, v0, v7

    if-gtz v1, :cond_35b

    move v1, v6

    .line 3757
    :goto_283
    mul-float v0, v1, v2

    div-float v2, v0, v3

    .line 3759
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3760
    const/4 v3, -0x1

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3761
    float-to-int v3, v2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3762
    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3764
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adView width:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " height:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  getWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    .line 3765
    invoke-virtual {v2}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3764
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c9
    .catch Ljava/lang/Exception; {:try_start_231 .. :try_end_2c9} :catch_355

    .line 3794
    :cond_2c9
    :goto_2c9
    :try_start_2c9
    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3795
    new-instance v0, Lcom/mintegral/msdk/click/a;

    invoke-virtual {p0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->j:Lcom/mintegral/msdk/click/a;

    .line 3797
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3798
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 566
    :cond_2ec
    sget-object v0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->a:Ljava/lang/String;

    const-string v1, "unitId error format"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 3284
    :catch_2f5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_da

    .line 3660
    :pswitch_2fb
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->f:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1a2

    .line 3663
    :pswitch_304
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->f:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1a2

    .line 3666
    :pswitch_30d
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->f:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1a2

    .line 3669
    :pswitch_316
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->f:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1a2

    .line 3672
    :pswitch_31f
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->f:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1a2

    .line 3692
    :pswitch_328
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->d:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1f5

    .line 3695
    :pswitch_331
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->d:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1f5

    .line 3698
    :pswitch_33a
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->d:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1f5

    .line 3701
    :pswitch_343
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->d:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1f5

    .line 3704
    :pswitch_34c
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->d:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1f5

    .line 3767
    :catch_355
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_359
    .catch Ljava/lang/Exception; {:try_start_2c9 .. :try_end_359} :catch_12

    goto/16 :goto_2c9

    :cond_35b
    move v1, v0

    goto/16 :goto_283

    :cond_35e
    move v2, v0

    goto/16 :goto_276

    :cond_361
    move v3, v1

    goto/16 :goto_26f

    :cond_364
    move v1, v7

    move v0, v7

    goto/16 :goto_26a

    .line 3658
    :pswitch_data_368
    .packed-switch 0x1
        :pswitch_2fb
        :pswitch_304
        :pswitch_30d
        :pswitch_316
        :pswitch_31f
    .end packed-switch

    .line 3690
    :pswitch_data_376
    .packed-switch 0x1
        :pswitch_328
        :pswitch_331
        :pswitch_33a
        :pswitch_343
        :pswitch_34c
    .end packed-switch
.end method

.method public start()V
    .registers 2

    .prologue
    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    if-eqz v0, :cond_9

    .line 471
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;->h:Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsPlayerView;->start()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 476
    :cond_9
    :goto_9
    return-void

    .line 474
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method
