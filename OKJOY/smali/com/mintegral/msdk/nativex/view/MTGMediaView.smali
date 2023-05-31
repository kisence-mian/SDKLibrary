.class public Lcom/mintegral/msdk/nativex/view/MTGMediaView;
.super Landroid/widget/LinearLayout;
.source "MTGMediaView.java"

# interfaces
.implements Lcom/mintegral/msdk/playercommon/c;
.implements Lcom/mintegral/msdk/video/js/bridge/IRewardBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/nativex/view/MTGMediaView$d;,
        Lcom/mintegral/msdk/nativex/view/MTGMediaView$b;,
        Lcom/mintegral/msdk/nativex/view/MTGMediaView$c;,
        Lcom/mintegral/msdk/nativex/view/MTGMediaView$f;,
        Lcom/mintegral/msdk/nativex/view/MTGMediaView$g;,
        Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;,
        Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;
    }
.end annotation


# static fields
.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_1_LANDING_PAGE:I = 0x1

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_2_NORMAL_FULLSCREEN:I = 0x2

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_3_NORMAL_FULLSCREEN_ENDCARD:I = 0x3

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_4_NORMAL_FULLSCREEN_LP:I = 0x4

.field public static final OPEN_FULLSCREEN_ON_VIDEO_TYPE_6_SMALLVIDEO:I = 0x6

.field public static final TAG:Ljava/lang/String; = "MTGMediaView"

.field public static final WHAT_VIEW_FULL_SCREEN:I = 0x2

.field public static final WHAT_VIEW_SMALL_SCREEN:I = 0x1

.field private static n:I

.field private static o:I


# instance fields
.field private A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Lcom/mintegral/msdk/videocommon/view/MyImageView;

.field private D:Landroid/widget/ProgressBar;

.field private E:Landroid/view/View;

.field private F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

.field private G:Landroid/widget/RelativeLayout;

.field private H:Landroid/widget/RelativeLayout;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/ProgressBar;

.field private L:Landroid/widget/RelativeLayout;

.field private M:I

.field private N:Landroid/os/Handler;

.field private O:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field private P:Ljava/util/Timer;

.field private Q:I

.field private R:I

.field private S:D

.field private T:D

.field private U:I

.field private V:I

.field private W:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

.field private Z:Landroid/hardware/SensorManager;

.field private a:Z

.field private aa:Landroid/hardware/Sensor;

.field private ab:Lcom/mintegral/msdk/videocommon/download/a;

.field private ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

.field private ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

.field private ae:I

.field private af:Z

.field private ag:Z

.field private ah:Landroid/widget/RelativeLayout;

.field private ai:Landroid/widget/ImageView;

.field private aj:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

.field private s:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

.field private t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

.field private u:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

.field private v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 157
    const/4 v0, 0x2

    sput v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->n:I

    .line 158
    const/4 v0, 0x1

    sput v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->o:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 342
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 137
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a:Z

    .line 139
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->b:Z

    .line 141
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c:Z

    .line 143
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->d:Z

    .line 144
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->e:Z

    .line 145
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->f:Z

    .line 146
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->g:Z

    .line 148
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h:Z

    .line 149
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i:Z

    .line 150
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->j:Z

    .line 153
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->k:Z

    .line 154
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l:Z

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->m:Ljava/util/ArrayList;

    .line 160
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->p:Z

    .line 161
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->q:Z

    .line 166
    iput-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 167
    iput-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->s:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    .line 168
    iput-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    .line 332
    iput-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    .line 333
    iput-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    .line 336
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->af:Z

    .line 337
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ag:Z

    .line 1760
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->aj:I

    .line 343
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a()V

    .line 344
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 347
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a:Z

    .line 139
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->b:Z

    .line 141
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c:Z

    .line 143
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->d:Z

    .line 144
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->e:Z

    .line 145
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->f:Z

    .line 146
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->g:Z

    .line 148
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h:Z

    .line 149
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i:Z

    .line 150
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->j:Z

    .line 153
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->k:Z

    .line 154
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l:Z

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->m:Ljava/util/ArrayList;

    .line 160
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->p:Z

    .line 161
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->q:Z

    .line 166
    iput-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 167
    iput-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->s:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    .line 168
    iput-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    .line 332
    iput-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    .line 333
    iput-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    .line 336
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->af:Z

    .line 337
    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ag:Z

    .line 1760
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->aj:I

    .line 348
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a()V

    .line 349
    return-void
.end method

.method private A()Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;
    .registers 4

    .prologue
    .line 2905
    :try_start_0
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getEndCardWebview hadStarLoad:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-endCardWebview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ag:Z

    if-eqz v0, :cond_2d

    .line 2907
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    .line 2915
    :goto_2c
    return-object v0

    .line 2909
    :cond_2d
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ag:Z

    if-nez v0, :cond_34

    .line 2910
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->B()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_36

    .line 2915
    :cond_34
    :goto_34
    const/4 v0, 0x0

    goto :goto_2c

    .line 2913
    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method static synthetic A(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->s()V

    return-void
.end method

.method private B()V
    .registers 7

    .prologue
    .line 2920
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNvT2()I

    move-result v0

    .line 2921
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    if-nez v1, :cond_2e

    .line 2922
    new-instance v1, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    .line 2923
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, p0}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->setObject(Ljava/lang/Object;)V

    .line 2924
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    new-instance v2, Lcom/mintegral/msdk/nativex/view/MTGMediaView$7;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$7;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->setBackListener(Lcom/mintegral/msdk/nativex/listener/b;)V

    .line 2930
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    new-instance v2, Lcom/mintegral/msdk/nativex/view/MTGMediaView$8;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$8;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->setWebViewListener(Lcom/mintegral/msdk/mtgjscommon/windvane/c;)V

    .line 2945
    :cond_2e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_91

    .line 2946
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v1

    .line 2947
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 2948
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    .line 2949
    const-string v0, ".zip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    const-string v0, "md5filename"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 2950
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2951
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 2952
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ag:Z

    .line 2953
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->loadUrl(Ljava/lang/String;)V

    .line 2982
    :cond_68
    :goto_68
    return-void

    .line 2956
    :cond_69
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/h;->a()Lcom/mintegral/msdk/videocommon/download/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2957
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2958
    const-string v0, "MTGMediaView"

    const-string v3, "load html..."

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ag:Z

    .line 2960
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8b} :catch_8c

    goto :goto_68

    .line 2980
    :catch_8c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_68

    .line 2965
    :cond_91
    const/4 v1, 0x4

    if-ne v0, v1, :cond_68

    .line 2967
    const/4 v0, 0x1

    :try_start_95
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ag:Z

    .line 2968
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_68

    .line 2969
    new-instance v0, Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 2970
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/webview/BrowserView$MTGDownloadListener;->setTitle(Ljava/lang/String;)V

    .line 2971
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 2972
    new-instance v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$d;-><init>(B)V

    .line 2973
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->setFilter(Lcom/mintegral/msdk/mtgjscommon/base/a;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_bb} :catch_8c

    goto :goto_68
.end method

.method static synthetic B(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->q:Z

    return v0
.end method

.method static synthetic C(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->J:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic D(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)F
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v()F

    move-result v0

    return v0
.end method

.method static synthetic E(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->j:Z

    return v0
.end method

.method static synthetic F(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y()V

    return-void
.end method

.method static synthetic G(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h()V

    return-void
.end method

.method static synthetic H(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->f()V

    return-void
.end method

.method static synthetic I(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->g()V

    return-void
.end method

.method static synthetic J(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->N:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic K(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->x()V

    return-void
.end method

.method static synthetic L(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->e()V

    return-void
.end method

.method static synthetic M(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->d()V

    return-void
.end method

.method static synthetic N(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 6

    .prologue
    .line 115
    .line 25554
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_41

    .line 25555
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v0

    .line 25556
    if-eqz v0, :cond_41

    iget-boolean v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->b:Z

    if-nez v1, :cond_41

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->h()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 25557
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->b:Z

    .line 25558
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/j;->h()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 115
    :cond_41
    return-void
.end method

.method static synthetic O(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 6

    .prologue
    .line 115
    .line 25564
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_41

    .line 25565
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v0

    .line 25566
    if-eqz v0, :cond_41

    iget-boolean v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->c:Z

    if-nez v1, :cond_41

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->i()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 25567
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->c:Z

    .line 25568
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/j;->i()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 115
    :cond_41
    return-void
.end method

.method static synthetic P(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 6

    .prologue
    .line 115
    .line 25574
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_41

    .line 25575
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v0

    .line 25576
    if-eqz v0, :cond_41

    iget-boolean v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->e:Z

    if-nez v1, :cond_41

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->k()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 25577
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->e:Z

    .line 25578
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/j;->k()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 115
    :cond_41
    return-void
.end method

.method static synthetic Q(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 6

    .prologue
    .line 115
    .line 25584
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_41

    .line 25585
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v0

    .line 25586
    if-eqz v0, :cond_41

    iget-boolean v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->f:Z

    if-nez v1, :cond_41

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->l()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 25587
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->f:Z

    .line 25588
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/j;->l()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 115
    :cond_41
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/nativex/view/MTGMediaView;I)I
    .registers 2

    .prologue
    .line 115
    iput p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->U:I

    return p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;)Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    return-object p1
.end method

.method private a(Z)Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;
    .registers 6

    .prologue
    .line 1253
    const/4 v0, 0x0

    .line 1254
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_75

    .line 1255
    const-string v1, "MTGMediaView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initCurDisplayMode appname:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 1258
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1259
    sget-object v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    .line 1260
    const-string v1, "MTGMediaView"

    const-string v2, "\u6ca1\u6709\u89c6\u9891 \u53ea\u6709\u5927\u56fe \u663e\u793a\u5927\u56fe"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_40
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGifUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1264
    const-string v1, "MTGMediaView"

    const-string v2, "\u6ca1\u6709\u89c6\u9891 \u6709gif\u56fe \u663e\u793agif\u56fe"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1266
    const-string v0, "MTGMediaView"

    const-string v1, "\u6ca1\u6709\u89c6\u9891 \u6ca1\u6709\u5927\u56fe \u6709gif\u56fe \u663e\u793agif\u56fe"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    sget-object v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->d:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    .line 1269
    :cond_68
    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$g;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$g;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 1270
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->z:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v2, v1}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1271
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->j()V

    .line 1313
    :cond_75
    :goto_75
    return-object v0

    .line 1274
    :cond_76
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_135

    iget-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->g:Z

    if-eqz v1, :cond_135

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v1, :cond_135

    .line 1275
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b4

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 1276
    sget-object v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->b:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    .line 1277
    const-string v1, "MTGMediaView"

    const-string v2, "\u53ea\u6709\u89c6\u9891 \u6ca1\u6709\u5927\u56fe \u663e\u793a\u89c6\u9891"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a5} :catch_a6

    goto :goto_75

    .line 1310
    :catch_a6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1312
    const-string v0, "MTGMediaView"

    const-string v1, "\u9ed8\u8ba4\u663e\u793a\u5927\u56fe"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    sget-object v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    goto :goto_75

    .line 1278
    :cond_b4
    :try_start_b4
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1280
    const-string v0, "MTGMediaView"

    const-string v1, "\u6709\u89c6\u9891 \u53c8\u6709\u5927\u56fe \u8fdb\u5165\u5224\u65ad\u903b\u8f91"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11623
    const/16 v0, 0x64

    .line 11624
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->p()Lcom/mintegral/msdk/c/d;

    move-result-object v1

    if-eqz v1, :cond_e3

    .line 11625
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->p()Lcom/mintegral/msdk/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->f()I

    move-result v0

    .line 1282
    :cond_e3
    const-string v1, "MTGMediaView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readyRate:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-static {v1, v0}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/videocommon/download/a;I)Z

    move-result v0

    .line 1284
    if-eqz v0, :cond_10a

    .line 1285
    sget-object v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->b:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    .line 1286
    const-string v1, "MTGMediaView"

    const-string v2, "\u6ee1\u8db3readyrate \u663e\u793a\u89c6\u9891"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_75

    .line 1288
    :cond_10a
    sget-object v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    .line 1289
    const-string v1, "MTGMediaView"

    const-string v2, "\u6ca1\u6709\u6ee1\u8db3readyrate \u6682\u65f6\u663e\u793a\u5927\u56fe \u5224\u65ad\u662f\u5426\u76d1\u542c\u4e0b\u8f7d"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    if-eqz p1, :cond_75

    .line 1291
    iget-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a:Z

    if-eqz v1, :cond_12c

    .line 1292
    const-string v1, "MTGMediaView"

    const-string v2, "\u53ef\u4ee5\u76d1\u542c\u4e0b\u8f7d \u4e0b\u8f7d\u6ee1\u8db3readyrate\u4e4b\u540e \u663e\u793a\u5927\u56fe"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$f;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$f;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 1294
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v2, v1}, Lcom/mintegral/msdk/videocommon/download/a;->b(Lcom/mintegral/msdk/videocommon/listener/a;)V

    goto/16 :goto_75

    .line 1296
    :cond_12c
    const-string v1, "MTGMediaView"

    const-string v2, "\u5f00\u53d1\u8005\u7981\u6b62\u76d1\u542c\u4e0b\u8f7d \u4e00\u76f4\u663e\u793a\u5927\u56fe"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_75

    .line 1302
    :cond_135
    const-string v1, "MTGMediaView"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u7248\u672c\u5c0f\u4e8e4.0\u6216\u8005\u6ca1\u6709\u5f00\u542f\u786c\u4ef6\u52a0\u901f \u663e\u793a\u5927\u56fe isHard:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->g:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " downloadtask:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v0, :cond_15e

    const/4 v0, 0x1

    :goto_14f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    sget-object v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;
    :try_end_15c
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_15c} :catch_a6

    goto/16 :goto_75

    .line 1302
    :cond_15e
    const/4 v0, 0x0

    goto :goto_14f
.end method

.method private static a(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 258
    const-string v0, ""

    .line 260
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 261
    const-string v2, "code"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 264
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1e} :catch_20

    move-result-object v0

    .line 270
    :cond_1f
    :goto_1f
    return-object v0

    .line 268
    :catch_20
    move-exception v1

    const-string v1, "MTGMediaView"

    const-string v2, "code to string is error"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 277
    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_23

    .line 278
    invoke-static {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseCamplistToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    .line 279
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 280
    const-string v3, "campaignList"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v1, "unit_id"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v1, "sdk_info"

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_24

    move-result-object v0

    .line 289
    :cond_23
    :goto_23
    return-object v0

    .line 287
    :catch_24
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method private a()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 353
    .line 3408
    :try_start_1
    new-instance v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$1;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->N:Landroid/os/Handler;

    .line 4389
    const-string v0, "MTGMediaView"

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4390
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_nativex_mtgmediaview"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4391
    if-ne v0, v3, :cond_25

    .line 4392
    const-string v0, "MTGMediaView"

    const-string v1, "can not find mediaview resource"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4393
    :goto_24
    return-void

    .line 4395
    :cond_25
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4396
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_rl_mediaview_root"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->x:Landroid/widget/RelativeLayout;

    .line 4397
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_ll_playerview_container"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->w:Landroid/widget/RelativeLayout;

    .line 4398
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_my_big_img"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/view/MyImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->C:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    .line 4399
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_fb_mediaview_layout"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->B:Landroid/widget/RelativeLayout;

    .line 4400
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_native_pb"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->D:Landroid/widget/ProgressBar;

    .line 4401
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_nativex_webview_layout"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y:Landroid/widget/RelativeLayout;

    .line 4402
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_nativex_webview_layout_webview"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->z:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    .line 4403
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->x:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 4404
    const/4 v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->addView(Landroid/view/View;II)V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c9} :catch_cb

    goto/16 :goto_24

    .line 356
    :catch_cb
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_24
.end method

.method private a(II)V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 2665
    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_91

    .line 2666
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v3

    .line 2667
    if-eqz v3, :cond_91

    iget-boolean v0, v3, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->i:Z

    if-nez v0, :cond_91

    if-eqz p2, :cond_91

    .line 2668
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->g()Ljava/util/List;

    move-result-object v4

    .line 2669
    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0x64

    div-int v5, v0, p2

    .line 2670
    if-eqz v4, :cond_91

    .line 2671
    :goto_25
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_88

    .line 2672
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2673
    if-eqz v0, :cond_85

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_85

    .line 2674
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2675
    :goto_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 2676
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2677
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2678
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2679
    if-gt v1, v5, :cond_9b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 2680
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v1, v7

    .line 2683
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v7, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v8, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v8}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v0, v7, v8, v1, v9}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 2684
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 2685
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2686
    add-int/lit8 v0, v2, -0x1

    :goto_83
    move v2, v0

    .line 2688
    goto :goto_41

    .line 2671
    :cond_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 2691
    :cond_88
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_91

    .line 2692
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->i:Z
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_91} :catch_92

    .line 2700
    :cond_91
    :goto_91
    return-void

    .line 2698
    :catch_92
    move-exception v0

    const-string v0, ""

    const-string v1, "reportPlayPercentageData error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    :cond_9b
    move v0, v2

    goto :goto_83
.end method

.method private a(Landroid/view/View;FF)V
    .registers 16

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    .line 2380
    if-nez p1, :cond_f

    .line 2381
    :try_start_7
    const-string v0, "MTGMediaView"

    const-string v1, "setPlayViewParamsByVidoWH view is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14464
    :goto_e
    return-void

    .line 2384
    :cond_f
    iget-wide v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->S:D

    cmpg-double v4, v4, v0

    if-lez v4, :cond_1b

    iget-wide v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->T:D
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_17} :catch_2a

    cmpg-double v4, v4, v0

    if-gtz v4, :cond_60

    .line 14443
    :cond_1b
    if-nez p1, :cond_2f

    .line 14444
    :try_start_1d
    const-string v0, "MTGMediaView"

    const-string v1, "setPlayViewParamsDefault view is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_24} :catch_2a

    goto :goto_e

    .line 14463
    :catch_25
    move-exception v0

    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_e

    .line 2437
    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 14447
    :cond_2f
    :try_start_2f
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i:Z

    if-eqz v0, :cond_43

    .line 14449
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 14450
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 14451
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 14452
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    .line 14455
    :cond_43
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 14456
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v()F

    move-result v1

    .line 14457
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 14458
    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 14459
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14460
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_5f} :catch_25
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_5f} :catch_2a

    goto :goto_e

    .line 2388
    :cond_60
    :try_start_60
    iget-wide v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->S:D

    iget-wide v6, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->T:D

    div-double v6, v4, v6

    .line 2390
    cmpl-float v4, p2, v8

    if-lez v4, :cond_71

    cmpl-float v4, p3, v8

    if-lez v4, :cond_71

    .line 2391
    div-float v0, p2, p3

    float-to-double v0, v0

    .line 2393
    :cond_71
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/Double;)D

    move-result-wide v8

    .line 2394
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/lang/Double;)D

    move-result-wide v10

    .line 2395
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2397
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2398
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 15366
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x3

    if-lt v4, v5, :cond_107

    const/4 v4, 0x1

    .line 2398
    :goto_a3
    if-eqz v4, :cond_aa

    iget-boolean v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i:Z

    if-eqz v4, :cond_aa

    const/4 v3, 0x1

    .line 2399
    :cond_aa
    cmpl-double v4, v8, v10

    if-lez v4, :cond_10b

    .line 2400
    float-to-double v4, p2

    iget-wide v6, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->T:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->S:D

    div-double/2addr v4, v6

    .line 2401
    const-string v6, "MTGMediaView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " setPlayView \u5bbd\u94fa\u6ee1 playerViewHeight:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " onMeasure mDevWidth "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " * mDevHeight *****"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    const/4 v6, -0x1

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2403
    if-eqz v3, :cond_109

    :goto_e6
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2404
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2406
    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2407
    double-to-int v2, v4

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2408
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2432
    :goto_f9
    iget-boolean v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h:Z

    if-nez v2, :cond_102

    .line 2433
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2435
    :cond_102
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_e

    :cond_107
    move v4, v3

    .line 15366
    goto :goto_a3

    .line 2403
    :cond_109
    double-to-int v2, v4

    goto :goto_e6

    .line 2410
    :cond_10b
    cmpg-double v4, v8, v10

    if-gez v4, :cond_158

    .line 2412
    float-to-double v4, p3

    mul-double/2addr v4, v6

    .line 2413
    if-eqz v3, :cond_156

    :goto_113
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2414
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2415
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2417
    double-to-int v2, v4

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2418
    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2419
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2421
    const-string v2, "MTGMediaView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "setPlayView \u9ad8\u94fa\u6ee1 playerViewWidth:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDevWidth "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " * mDevHeight *****"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f9

    .line 2413
    :cond_156
    double-to-int v2, v4

    goto :goto_113

    .line 2424
    :cond_158
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2425
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2427
    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2428
    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2429
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2430
    const-string v2, "MTGMediaView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setPlayView \u94fa\u6ee1\u7236\u5e03\u5c40  videoWHDivide_final\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  screenWHDivide_final\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_189
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_189} :catch_2a

    goto/16 :goto_f9
.end method

.method static synthetic a(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 7

    .prologue
    .line 15378
    :try_start_0
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    .line 16195
    :cond_6
    :goto_6
    return-void

    .line 15382
    :cond_7
    invoke-direct {p0, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Landroid/view/View;)Z

    move-result v1

    .line 15383
    if-eqz v1, :cond_2b

    .line 15384
    const/4 v0, 0x0

    .line 15385
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->p()Lcom/mintegral/msdk/c/d;

    move-result-object v2

    .line 15386
    if-eqz v2, :cond_18

    .line 15387
    invoke-virtual {v2}, Lcom/mintegral/msdk/c/d;->c()I

    move-result v0

    .line 15389
    :cond_18
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->N:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 15390
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 15391
    iput-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15392
    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->N:Landroid/os/Handler;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 15394
    :cond_2b
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v2, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->b:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v0, v2, :cond_6

    .line 15395
    if-eqz v1, :cond_a4

    .line 15396
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-nez v0, :cond_47

    .line 15397
    const-string v0, "MTGMediaView"

    const-string v1, "onpreDraw addPlayerView"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15398
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->m()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_6

    .line 15419
    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 15400
    :cond_47
    :try_start_47
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getCampaign()Lcom/mintegral/msdk/out/Campaign;

    move-result-object v1

    if-eq v0, v1, :cond_73

    .line 15401
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->release()V

    .line 15402
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->m()V

    .line 15403
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 15404
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 15406
    :cond_68
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->requestLayout()V

    .line 15407
    const-string v0, "MTGMediaView"

    const-string v1, "playerview realese and addplayerview"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_72} :catch_42

    goto :goto_6

    .line 15425
    :cond_73
    :try_start_73
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_6

    .line 15429
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15433
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15437
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v0

    if-nez v0, :cond_6

    .line 15441
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15443
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_9c} :catch_9e

    goto/16 :goto_6

    .line 15446
    :catch_9e
    move-exception v0

    :try_start_9f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a2} :catch_42

    goto/16 :goto_6

    .line 15452
    :cond_a4
    :try_start_a4
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15454
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15455
    const-string v0, "MTGMediaView"

    const-string v1, "isPlaying pasue======"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_bf} :catch_d0

    .line 16190
    :try_start_bf
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_6

    .line 16191
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->pause()V
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_c8} :catch_ca

    goto/16 :goto_6

    .line 16194
    :catch_ca
    move-exception v0

    :try_start_cb
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_ce} :catch_d0

    goto/16 :goto_6

    .line 15465
    :catch_d0
    move-exception v0

    :try_start_d1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d4
    .catch Ljava/lang/Throwable; {:try_start_d1 .. :try_end_d4} :catch_42

    goto/16 :goto_6
.end method

.method static synthetic a(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 22885
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

    if-eqz v0, :cond_9

    .line 22886
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/out/OnMTGMediaViewListener;->onStartRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 22890
    :cond_9
    :goto_9
    return-void

    .line 22889
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method private a(Landroid/view/View;)Z
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 1590
    if-eqz p1, :cond_9

    :try_start_3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    .line 1619
    :cond_9
    :goto_9
    return v0

    .line 1593
    :cond_a
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1594
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1597
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v1, v2

    int-to-long v2, v1

    .line 1598
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    mul-int/2addr v1, v4

    int-to-long v4, v1

    .line 1599
    long-to-float v1, v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v1, v6

    float-to-long v6, v1

    .line 1600
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_9

    .line 1603
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->n(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1607
    iget-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->e:Z

    if-eqz v1, :cond_9

    .line 1611
    cmp-long v1, v2, v6

    if-ltz v1, :cond_9

    .line 1612
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->isShown()Z
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_49} :catch_4e

    move-result v1

    if-eqz v1, :cond_9

    .line 1613
    const/4 v0, 0x1

    goto :goto_9

    .line 1617
    :catch_4e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method static synthetic a(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Landroid/view/View;)Z
    .registers 3

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Z)Z
    .registers 2

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/mintegral/msdk/nativex/view/MTGMediaView;I)I
    .registers 2

    .prologue
    .line 115
    iput p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->V:I

    return p1
.end method

.method private b()V
    .registers 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v0, :cond_a

    .line 373
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/a;->b(Lcom/mintegral/msdk/videocommon/listener/a;)V

    .line 375
    :cond_a
    return-void
.end method

.method static synthetic b(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 115
    .line 16607
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 16609
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/mintegral/msdk/mtgnative/e/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/mtgnative/d/a;)V

    .line 16611
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v0

    .line 16612
    iget-boolean v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->a:Z

    if-nez v1, :cond_81

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v2, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->b:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v1, v2, :cond_81

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 16613
    iput-boolean v5, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->a:Z

    .line 16614
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v3

    .line 16615
    const-string v0, "is_video=1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 16616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16617
    const-string v1, "?"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 16618
    const-string v1, "&is_video=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16622
    :goto_59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 16624
    :cond_5d
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "change impressionurl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16627
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 115
    :cond_81
    return-void

    .line 16620
    :cond_82
    const-string v1, "?is_video=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59
.end method

.method static synthetic b(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 23905
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

    if-eqz v0, :cond_9

    .line 23906
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/out/OnMTGMediaViewListener;->onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 23910
    :cond_9
    :goto_9
    return-void

    .line 23909
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method static synthetic b(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Z)Z
    .registers 2

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method private c()V
    .registers 4

    .prologue
    .line 659
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Z)Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    .line 660
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDisplay mCurDisplayMode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->changeNoticeURL()V

    .line 663
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->c:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_24} :catch_4c

    if-ne v0, v1, :cond_57

    .line 8010
    :try_start_26
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->B:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8011
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->w:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8012
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->C:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setVisibility(I)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_3a} :catch_47

    .line 8938
    :goto_3a
    :try_start_3a
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativead()Ljava/lang/Object;

    .line 688
    :cond_43
    :goto_43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->p:Z

    .line 692
    :goto_46
    return-void

    .line 8014
    :catch_47
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_4b} :catch_4c

    goto :goto_3a

    .line 689
    :catch_4c
    move-exception v0

    .line 690
    const-string v1, "MTGMediaView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_46

    .line 666
    :cond_57
    :try_start_57
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v0, v1, :cond_fa

    .line 667
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_6f} :catch_4c

    if-eqz v0, :cond_95

    .line 669
    :try_start_71
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->C:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    .line 670
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/mintegral/adsession/AdSession;)Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->s:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    .line 671
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->start()V

    .line 672
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->s:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    if-eqz v0, :cond_8e

    .line 673
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->s:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->impressionOccurred()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8e} :catch_ea
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_8e} :catch_4c

    .line 678
    :cond_8e
    :goto_8e
    :try_start_8e
    const-string v0, "omsdk"

    const-string v1, "native adSession start, impressionOccurred"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_95} :catch_4c

    .line 9020
    :cond_95
    :try_start_95
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->C:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/widget/ImageView;)V

    .line 9021
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->C:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setVisibility(I)V

    .line 9022
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->B:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9023
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->w:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9024
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_b5} :catch_f5

    .line 9057
    :goto_b5
    :try_start_b5
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_43

    .line 9060
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 9061
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 9064
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 9067
    const-string v1, "MTGMediaView"

    const-string v2, "fillBigimage startOrPlayVideo"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9068
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v1

    new-instance v2, Lcom/mintegral/msdk/nativex/view/MTGMediaView$12;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$12;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    invoke-virtual {v1, v0, v2}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_e2} :catch_e4

    goto/16 :goto_43

    .line 9096
    :catch_e4
    move-exception v0

    :try_start_e5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_43

    .line 675
    :catch_ea
    move-exception v0

    .line 676
    const-string v1, "omsdk"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    .line 9026
    :catch_f5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b5

    .line 682
    :cond_fa
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->b:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v0, v1, :cond_105

    .line 683
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->d()V

    goto/16 :goto_43

    .line 684
    :cond_105
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->d:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v0, v1, :cond_43

    .line 685
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->j()V

    .line 686
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->e()V
    :try_end_111
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_111} :catch_4c

    goto/16 :goto_43
.end method

.method static synthetic c(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 24895
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

    if-eqz v0, :cond_9

    .line 24896
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

    invoke-interface {v0, p1, p2}, Lcom/mintegral/msdk/out/OnMTGMediaViewListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 24900
    :cond_9
    :goto_9
    return-void

    .line 24899
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method static synthetic c(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Z)Z
    .registers 2

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->af:Z

    return p1
.end method

.method static synthetic d(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    return-object v0
.end method

.method private d()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 695
    .line 9310
    :try_start_2
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 9311
    :cond_12
    const-string v0, "MTGMediaView"

    const-string v1, "campaign is null initVideoWH return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_19} :catch_5e

    .line 696
    :cond_19
    :goto_19
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i()V

    .line 697
    return-void

    .line 9314
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    .line 9315
    const-string v1, "MTGMediaView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "videoResolution:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9317
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9318
    if-eqz v0, :cond_19

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    .line 9319
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 9320
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 9321
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->c(Ljava/lang/String;)D

    move-result-wide v2

    .line 9322
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->c(Ljava/lang/String;)D

    move-result-wide v0

    .line 9323
    cmpl-double v4, v2, v6

    if-lez v4, :cond_19

    cmpl-double v4, v0, v6

    if-lez v4, :cond_19

    .line 9324
    iput-wide v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->S:D

    .line 9325
    iput-wide v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->T:D
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_5d} :catch_5e

    goto :goto_19

    .line 9329
    :catch_5e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_19
.end method

.method private e()V
    .registers 3

    .prologue
    .line 700
    .line 10043
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->w:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10044
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->C:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setVisibility(I)V

    .line 10045
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->B:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10046
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10047
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->z:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->setVisibility(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_22

    .line 10050
    :goto_21
    return-void

    .line 10049
    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_21
.end method

.method static synthetic e(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h:Z

    return v0
.end method

.method private f()V
    .registers 5

    .prologue
    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v0, v1, :cond_60

    .line 773
    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    if-eqz v0, :cond_60

    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->V:I

    if-eqz v0, :cond_60

    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->U:I

    if-eqz v0, :cond_60

    .line 774
    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    iget v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->V:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->U:I

    div-int v1, v0, v1

    .line 775
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->C:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    if-eqz v0, :cond_60

    if-eqz v1, :cond_60

    .line 776
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->C:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 777
    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 778
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 779
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->C:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    invoke-virtual {v2, v0}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    const-string v0, "MTGMediaView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initBitImageViewWHByDevWh onMeasure mdevWidth:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDevHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finalHeigt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_60} :catch_61

    .line 788
    :cond_60
    :goto_60
    return-void

    .line 786
    :catch_61
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_60
.end method

.method static synthetic f(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 6

    .prologue
    .line 115
    .line 17594
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_41

    .line 17595
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v0

    .line 17596
    if-eqz v0, :cond_41

    iget-boolean v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->g:Z

    if-nez v1, :cond_41

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->q()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 17597
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->g:Z

    .line 17600
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/j;->q()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 115
    :cond_41
    return-void
.end method

.method static synthetic g(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    return-object v0
.end method

.method private g()V
    .registers 5

    .prologue
    .line 792
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->d:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v0, v1, :cond_6f

    .line 793
    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    if-eqz v0, :cond_70

    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->V:I

    if-eqz v0, :cond_70

    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->U:I

    if-eqz v0, :cond_70

    .line 794
    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    iget v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->V:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->U:I

    div-int v1, v0, v1

    .line 795
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6f

    if-eqz v1, :cond_6f

    .line 796
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 797
    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 798
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 799
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 800
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    const-string v0, "MTGMediaView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initGifImageViewWHByDevWh onMeasure mdevWidth:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDevHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finalHeigt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 802
    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_6f
    :goto_6f
    return-void

    .line 804
    :cond_70
    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    if-eqz v0, :cond_6f

    .line 805
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6f

    .line 806
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 807
    iget v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 809
    iget v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    mul-int/lit16 v1, v1, 0x273

    div-int/lit16 v1, v1, 0x4b0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 810
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 811
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initGifImageViewWHByDevWh onMeasure mdevWidth:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDevHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 813
    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 812
    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c2} :catch_c3

    goto :goto_6f

    .line 818
    :catch_c3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6f
.end method

.method private h()V
    .registers 5

    .prologue
    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->b:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v0, v1, :cond_44

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->w:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_44

    .line 825
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v()F

    move-result v0

    float-to-int v1, v0

    .line 826
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->k(Landroid/content/Context;)I

    move-result v2

    .line 827
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h:Z

    if-nez v0, :cond_45

    .line 828
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 829
    iget v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 830
    iget v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 831
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 832
    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    :goto_35
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h:Z

    if-nez v0, :cond_61

    .line 841
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    iget v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Landroid/view/View;FF)V

    .line 849
    :cond_44
    :goto_44
    return-void

    .line 834
    :cond_45
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 835
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 836
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 837
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 838
    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_35

    .line 847
    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44

    .line 843
    :cond_61
    :try_start_61
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Landroid/view/View;FF)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_68} :catch_5c

    goto :goto_44
.end method

.method static synthetic h(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->d:Z

    return v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Landroid/view/View;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    return-object v0
.end method

.method private i()V
    .registers 3

    .prologue
    .line 1032
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->w:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1033
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->C:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/view/MyImageView;->setVisibility(I)V

    .line 1034
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->B:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1035
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 1039
    :goto_1b
    return-void

    .line 1037
    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1b
.end method

.method private j()V
    .registers 7

    .prologue
    .line 1102
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v0, :cond_5

    .line 1129
    :cond_4
    :goto_4
    return-void

    .line 1105
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGifUrl()Ljava/lang/String;

    move-result-object v0

    .line 1106
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1109
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1112
    const-string v1, "MTGMediaView"

    const-string v2, "fillGifimage"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const-string v1, "<!DOCTYPE html><html lang=\"en\"><head>  <meta charset=\"UTF-8\">  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">  <title>Document</title>  <style>  *{    margin: 0;    padding: 0;  }  html, body{    width: 100%;    height: 100%;  }  body{    background-image: url(\'gifUrl\');    background-position: center;    background-size: contain;    background-repeat: no-repeat;  }  </style></head><body></body></html>"

    .line 1115
    const-string v2, "gifUrl"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1116
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->z:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    const/4 v1, 0x0

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->z:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->setInterceptTouch(Z)V

    .line 1118
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$13;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$13;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_4

    .line 1127
    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic j(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 17819
    :try_start_2
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getRootView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_18

    .line 17820
    :cond_10
    const-string v0, "MTGMediaView"

    const-string v1, "rootView is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17959
    :cond_17
    :goto_17
    return-void

    .line 17823
    :cond_18
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->handleViewStyleResult$21377bb9()I

    move-result v0

    .line 17824
    if-eqz v0, :cond_17

    .line 17828
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getFullScreenViewByStyle$746bf0f5(Landroid/content/Context;I)Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    .line 17829
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    if-nez v0, :cond_3d

    .line 17830
    const-string v0, "MTGMediaView"

    const-string v1, "mFullScreenViewUI is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_34

    goto :goto_17

    .line 17955
    :catch_34
    move-exception v0

    .line 17956
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_17

    .line 17957
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    .line 17834
    :cond_3d
    :try_start_3d
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t()Z

    move-result v0

    .line 17835
    if-nez v0, :cond_4b

    .line 17836
    const-string v0, "MTGMediaView"

    const-string v1, "fullViewFailed return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 17839
    :cond_4b
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(Landroid/content/Context;)Lcom/mintegral/msdk/nativex/view/mtgfullview/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    iget v1, v1, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->style$161ffeb8:I

    iget-object v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v5, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    invoke-virtual {v0, v1, v4, v5}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(ILcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;)V

    .line 17840
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h:Z

    .line 17841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->q:Z

    .line 17842
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_73

    .line 17843
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->setEnterFullScreen()V

    .line 17844
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->setIsActivePause(Z)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_73} :catch_34

    .line 18853
    :cond_73
    :try_start_73
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

    if-eqz v0, :cond_7c

    .line 18854
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

    invoke-interface {v0}, Lcom/mintegral/msdk/out/OnMTGMediaViewListener;->onEnterFullscreen()V

    .line 18856
    :cond_7c
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_8e

    .line 18857
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->FULLSCREEN:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->playerStateChange(Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;)V

    .line 18858
    const-string v0, "omsdk"

    const-string v1, "NV playerStateChange, FULLSCREEN"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_8e} :catch_c5

    .line 17847
    :cond_8e
    :goto_8e
    :try_start_8e
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 17848
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17849
    iput-object v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    .line 17850
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 17851
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 17853
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 17854
    :goto_b8
    if-ge v3, v5, :cond_ca

    .line 17855
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eq v6, v7, :cond_ca

    .line 17854
    add-int/lit8 v3, v3, 0x1

    goto :goto_b8

    .line 18861
    :catch_c5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8e

    .line 17858
    :cond_ca
    iput v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->M:I

    .line 17859
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17860
    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 17861
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getWidth()I

    move-result v7

    .line 17862
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getHeight()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 17863
    invoke-virtual {v1, v5, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 17864
    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17865
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x1

    invoke-direct {v1, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 17868
    const/16 v3, 0x65

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 17869
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17872
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17873
    iget-object v5, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->L:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v5, v6, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17874
    invoke-virtual {v0, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17875
    const/high16 v1, -0x1000000

    .line 17876
    sget-object v3, Lcom/mintegral/msdk/nativex/view/MTGMediaView$9;->a:[I

    iget-object v5, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    iget v5, v5, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->style$161ffeb8:I

    add-int/lit8 v5, v5, -0x1

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_266

    .line 17885
    :goto_122
    :pswitch_122
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 17886
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->setId(I)V

    .line 17887
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17888
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 17889
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 17890
    const/4 v0, 0x1

    aget v0, v2, v0

    iput v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ae:I

    .line 17891
    const-string v0, "MTGMediaView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mFullViewStartY:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ae:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17892
    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ae:I

    if-nez v0, :cond_175

    .line 17893
    const-string v0, "MTGMediaView"

    const-string v2, "addfullview \u589e\u52a0\u72b6\u6001\u680f\u9ad8\u5ea6 \u6c89\u6d78\u5f0f\u65f6contentview\u7684\u9ad8\u5ea6\u548c\u5c4f\u5e55\u9ad8\u5ea6\u4e00\u6837"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17895
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_244

    .line 17896
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 17897
    if-eqz v0, :cond_175

    .line 17898
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17905
    :cond_175
    :goto_175
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_17a} :catch_34

    .line 19273
    :try_start_17a
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->u()V

    .line 19274
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->G:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v()F

    move-result v1

    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->w()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Landroid/view/View;FF)V

    .line 19275
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(Landroid/content/Context;)Lcom/mintegral/msdk/nativex/view/mtgfullview/a;

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    iget-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i:Z

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;Z)V

    .line 19276
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i:Z

    if-eqz v0, :cond_254

    .line 19277
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y()V

    .line 19281
    :goto_19f
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->N:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$6;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$6;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1ab
    .catch Ljava/lang/Throwable; {:try_start_17a .. :try_end_1ab} :catch_259
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_1ab} :catch_34

    .line 20200
    :goto_1ab
    :try_start_1ab
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 20201
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 20202
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$2;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 20216
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$3;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$3;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20222
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->H:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$4;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$4;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20228
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->J:Landroid/widget/TextView;

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$5;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$5;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1de} :catch_25f

    .line 17908
    :goto_1de
    :try_start_1de
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_1e7

    .line 17909
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    .line 17911
    :cond_1e7
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {v1, p0, v2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$16;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->setMediaViewPlayListener(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$a;)V

    .line 17952
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->B()V

    .line 20713
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_238

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_238

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->k:Z

    if-nez v0, :cond_238

    .line 20714
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_238

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    if-eqz v0, :cond_238

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->f()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_238

    .line 20715
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->k:Z

    .line 20716
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->z()V

    .line 17954
    :cond_238
    const-string v0, "MTGMediaView"

    const-string v1, "mediaview add to full screen"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_241
    move v1, v2

    .line 17880
    goto/16 :goto_122

    .line 17901
    :cond_244
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/k;->e(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
    :try_end_252
    .catch Ljava/lang/Exception; {:try_start_1de .. :try_end_252} :catch_34

    goto/16 :goto_175

    .line 19279
    :cond_254
    :try_start_254
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->x()V
    :try_end_257
    .catch Ljava/lang/Throwable; {:try_start_254 .. :try_end_257} :catch_259
    .catch Ljava/lang/Exception; {:try_start_254 .. :try_end_257} :catch_34

    goto/16 :goto_19f

    .line 19303
    :catch_259
    move-exception v0

    :try_start_25a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1ab

    .line 20244
    :catch_25f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_25a .. :try_end_263} :catch_34

    goto/16 :goto_1de

    .line 17876
    nop

    :pswitch_data_266
    .packed-switch 0x1
        :pswitch_122
        :pswitch_241
    .end packed-switch
.end method

.method private k()V
    .registers 6

    .prologue
    .line 1132
    .line 10915
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

    if-eqz v0, :cond_b

    .line 10916
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/OnMTGMediaViewListener;->onVideoAdClicked(Lcom/mintegral/msdk/out/Campaign;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_1a

    .line 1133
    :cond_b
    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1197
    :cond_19
    :goto_19
    return-void

    .line 10919
    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_1f

    goto :goto_b

    .line 1195
    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    .line 11543
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isReportClick()Z

    move-result v0

    if-nez v0, :cond_64

    .line 11544
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setReportClick(Z)V

    .line 11545
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->j()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 11548
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/j;->j()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1137
    :cond_64
    new-instance v0, Lcom/mintegral/msdk/click/a;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1138
    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$14;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$14;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 1193
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_7e} :catch_1f

    goto :goto_19
.end method

.method static synthetic k(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 3

    .prologue
    .line 21250
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-nez v0, :cond_c

    .line 21251
    const-string v0, "MTGMediaView"

    const-string v1, "playerview is null return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21257
    :goto_b
    return-void

    .line 21254
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->onClickPlayerView()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_b

    .line 21256
    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b
.end method

.method private l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1242
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1243
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    .line 1248
    :goto_16
    return-object v0

    .line 1246
    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1248
    :cond_1b
    const/4 v0, 0x0

    goto :goto_16
.end method

.method static synthetic l(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->k()V

    return-void
.end method

.method static synthetic m(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    return-object v0
.end method

.method private m()V
    .registers 8

    .prologue
    .line 1328
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v0, :cond_b

    .line 1329
    const-string v0, "MTGMediaView"

    const-string v1, "campaign is null addPlayerView return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    :cond_b
    const-string v0, "MTGMediaView"

    const-string v1, "specSize addPlayerView"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1333
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1334
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1336
    :cond_2b
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i()V

    .line 1337
    new-instance v0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    .line 1339
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->k:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    .line 1340
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    .line 1341
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->f:Z

    if-eqz v0, :cond_d3

    .line 1342
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    .line 1347
    :goto_50
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->b:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->setAllowLoopPlay(Z)V

    .line 1348
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->q()Z

    move-result v3

    iget-object v5, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->initPlayerViewData(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;ZLcom/mintegral/msdk/playercommon/c;Lcom/mintegral/msdk/videocommon/download/a;Ljava/lang/String;)Z

    .line 1349
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$b;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$b;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->setOnMediaViewPlayerViewListener(Lcom/mintegral/msdk/nativex/listener/a;)V

    .line 1350
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->w:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_80} :catch_da

    .line 11706
    :try_start_80
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-nez v0, :cond_df

    .line 11707
    const-string v0, "MTGMediaView"

    const-string v1, "setPlayerViewListener playerview is null return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_8b} :catch_ea

    .line 1352
    :goto_8b
    :try_start_8b
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    if-eqz v0, :cond_d2

    .line 1353
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_9a

    .line 1354
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->registerView(Lcom/iab/omid/library/mintegral/adsession/AdSession;)V

    .line 1356
    :cond_9a
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/mintegral/adsession/AdSession;)Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->s:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    .line 1357
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-static {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->createVideoEvents(Lcom/iab/omid/library/mintegral/adsession/AdSession;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    .line 1358
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->start()V

    .line 1359
    const/4 v0, 0x1

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/video/Position;->STANDALONE:Lcom/iab/omid/library/mintegral/adsession/video/Position;

    invoke-static {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;->createVastPropertiesForNonSkippableVideo(ZLcom/iab/omid/library/mintegral/adsession/video/Position;)Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;

    move-result-object v0

    .line 1360
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v1, v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->loaded(Lcom/iab/omid/library/mintegral/adsession/video/VastProperties;)V

    .line 1361
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->setVideoEvents(Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;)V
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_c2} :catch_da

    .line 1363
    :try_start_c2
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->s:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    if-eqz v0, :cond_cb

    .line 1364
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->s:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->impressionOccurred()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_cb} :catch_ef
    .catch Ljava/lang/Throwable; {:try_start_c2 .. :try_end_cb} :catch_da

    .line 1369
    :cond_cb
    :goto_cb
    :try_start_cb
    const-string v0, "omsdk"

    const-string v1, "NV adSession start, impressionOccurred"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    :cond_d2
    :goto_d2
    return-void

    .line 1344
    :cond_d3
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->closeSound()V
    :try_end_d8
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_d8} :catch_da

    goto/16 :goto_50

    .line 1372
    :catch_da
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d2

    .line 11710
    :cond_df
    :try_start_df
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$11;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_e9
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_e9} :catch_ea

    goto :goto_8b

    .line 11744
    :catch_ea
    move-exception v0

    :try_start_eb
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8b

    .line 1366
    :catch_ef
    move-exception v0

    .line 1367
    const-string v1, "omsdk"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f9
    .catch Ljava/lang/Throwable; {:try_start_eb .. :try_end_f9} :catch_da

    goto :goto_cb
.end method

.method static synthetic n(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/videocommon/view/MyImageView;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->C:Lcom/mintegral/msdk/videocommon/view/MyImageView;

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 1471
    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 1531
    :cond_6
    :goto_6
    return-object v0

    .line 1474
    :cond_7
    const-string v0, "MTGMediaView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPlayUrl curDisplay:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    if-eqz v0, :cond_11b

    .line 1476
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->h()I

    move-result v2

    .line 1477
    const-string v0, "MTGMediaView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downloadState:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    const/4 v0, 0x5

    if-ne v2, v0, :cond_87

    .line 1479
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 1480
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_11b

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v3}, Lcom/mintegral/msdk/videocommon/download/a;->d()J

    move-result-wide v4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/k;->b(Ljava/io/File;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_11b

    .line 1481
    const-string v3, "MTGMediaView"

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

    invoke-static {v3, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_80} :catch_81

    goto :goto_6

    .line 1529
    :catch_81
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_85
    move-object v0, v1

    .line 1531
    goto :goto_6

    .line 1484
    :cond_87
    const/4 v0, 0x6

    if-ne v2, v0, :cond_11b

    .line 1485
    :try_start_8a
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 1486
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    .line 1488
    if-eqz v3, :cond_11b

    .line 1489
    const-string v3, "MTGMediaView"

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

    .line 1490
    const-string v3, ".dltmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_be} :catch_81

    move-result v3

    if-eqz v3, :cond_6

    .line 1492
    :try_start_c1
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/f/f;

    move-result-object v3

    .line 1493
    iget-object v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/f/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1494
    new-instance v4, Lcom/mintegral/msdk/nativex/view/MTGMediaView$15;

    invoke-direct {v4, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$15;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    iget-object v5, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1510
    invoke-virtual {v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v5

    .line 1494
    invoke-virtual {v3, v4, v5}, Lcom/mintegral/msdk/f/f;->a(Lcom/mintegral/msdk/f/b;Ljava/lang/String;)V

    .line 1511
    iget-object v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/f/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1512
    const-string v3, "MTGMediaView"

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
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_113} :catch_115

    goto/16 :goto_6

    .line 1515
    :catch_115
    move-exception v2

    :try_start_116
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 1523
    :cond_11b
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    .line 1524
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 1525
    const-string v2, "MTGMediaView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u672c\u5730\u5c1a\u672a\u4e0b\u8f7d\u5b8c \u62ff\u7f51\u7edc\u5730\u5740\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_13b} :catch_81

    goto/16 :goto_6
.end method

.method private o()V
    .registers 2

    .prologue
    .line 1580
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->P:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 1581
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->P:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 1586
    :cond_9
    :goto_9
    return-void

    .line 1584
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method static synthetic o(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 3

    .prologue
    .line 22202
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->D:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 22203
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->D:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 22207
    :cond_a
    :goto_a
    return-void

    .line 22206
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method private p()Lcom/mintegral/msdk/c/d;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1632
    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    move-object v0, v1

    .line 1650
    :cond_12
    :goto_12
    return-object v0

    .line 1635
    :cond_13
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    .line 1636
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 1637
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1638
    :cond_2d
    invoke-static {v2}, Lcom/mintegral/msdk/c/d;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    goto :goto_12

    .line 1640
    :cond_32
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {v0, v2}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    .line 1641
    if-nez v0, :cond_12

    .line 1644
    invoke-static {v2}, Lcom/mintegral/msdk/c/d;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_40

    move-result-object v0

    goto :goto_12

    .line 1648
    :catch_40
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 1650
    goto :goto_12
.end method

.method static synthetic p(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 3

    .prologue
    .line 22222
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->K:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 22223
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->K:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 22227
    :cond_a
    :goto_a
    return-void

    .line 22226
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method static synthetic q(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 3

    .prologue
    .line 23212
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->D:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 23213
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->D:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 23217
    :cond_b
    :goto_b
    return-void

    .line 23216
    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method private q()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1655
    :try_start_2
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->p()Lcom/mintegral/msdk/c/d;

    move-result-object v2

    .line 1656
    if-nez v2, :cond_9

    .line 1689
    :cond_8
    :goto_8
    return v0

    .line 1659
    :cond_9
    invoke-virtual {v2}, Lcom/mintegral/msdk/c/d;->n()I

    move-result v2

    .line 1660
    const-string v3, "MTGMediaView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "========autoPlayType\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    if-ne v2, v1, :cond_43

    .line 1662
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1663
    const-string v2, "MTGMediaView"

    const-string v3, "========wifi\u4e0b\u81ea\u52a8\u64ad\u653e"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1664
    goto :goto_8

    .line 1666
    :cond_36
    const-string v1, "MTGMediaView"

    const-string v2, "========wifi\u4e0b\u81ea\u52a8\u64ad\u653e \u4f46\u76ee\u524d\u4e0d\u662fwifi\u73af\u5883 \u73b0\u5728\u4e3a\u70b9\u51fb\u64ad\u653e"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3d} :catch_3e

    goto :goto_8

    .line 1687
    :catch_3e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 1669
    :cond_43
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4e

    .line 1670
    :try_start_46
    const-string v1, "MTGMediaView"

    const-string v2, "========\u70b9\u51fb\u64ad\u653e"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1672
    :cond_4e
    const/4 v3, 0x3

    if-ne v2, v3, :cond_64

    .line 1673
    const-string v2, "MTGMediaView"

    const-string v3, "========\u6709\u7f51\u81ea\u52a8\u64ad\u653e"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    .line 1675
    goto :goto_8

    .line 1678
    :cond_64
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1679
    const-string v2, "MTGMediaView"

    const-string v3, "========else wifi\u4e0b\u81ea\u52a8\u64ad\u653e"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1680
    goto :goto_8

    .line 1682
    :cond_77
    const-string v1, "MTGMediaView"

    const-string v2, "========else wifi\u4e0b\u81ea\u52a8\u64ad\u653e \u4f46\u76ee\u524d\u4e0d\u662fwifi\u73af\u5883 \u73b0\u5728\u4e3a\u70b9\u51fb\u64ad\u653e"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_7e} :catch_3e

    goto :goto_8
.end method

.method private r()Landroid/view/View;
    .registers 5

    .prologue
    .line 1968
    :try_start_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ah:Landroid/widget/RelativeLayout;

    .line 1969
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1970
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ah:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1972
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    .line 1973
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1974
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1975
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1976
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1977
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1978
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1979
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1980
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mintegral_nativex_close"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1981
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$17;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$17;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1987
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1988
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1990
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ah:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1991
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ah:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1992
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ah:Landroid/widget/RelativeLayout;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a0} :catch_a1

    .line 1996
    :goto_a0
    return-object v0

    .line 1994
    :catch_a1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1996
    const/4 v0, 0x0

    goto :goto_a0
.end method

.method static synthetic r(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 3

    .prologue
    .line 23232
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->K:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 23233
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->K:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 23237
    :cond_b
    :goto_b
    return-void

    .line 23236
    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method static synthetic s(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/videocommon/download/a;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    return-object v0
.end method

.method private s()V
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 2036
    :try_start_1
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2038
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getRootView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 2040
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getRootView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2042
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getRootView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x67

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2043
    if-nez v3, :cond_294

    .line 2044
    if-eqz v2, :cond_294

    .line 2045
    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v10, v3

    .line 2048
    :goto_3f
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 2049
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mintegral_full_rl_playcontainer"

    const-string v7, "id"

    invoke-static {v4, v5, v7}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2048
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2050
    if-nez v3, :cond_291

    .line 2051
    if-eqz v10, :cond_291

    .line 2052
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mintegral_full_rl_playcontainer"

    const-string v5, "id"

    invoke-static {v3, v4, v5}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v9, v3

    .line 2055
    :goto_6c
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 2056
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mintegral_full_player_parent"

    const-string v7, "id"

    invoke-static {v4, v5, v7}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2055
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2057
    if-nez v3, :cond_28e

    .line 2058
    if-eqz v9, :cond_28e

    .line 2059
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mintegral_full_player_parent"

    const-string v5, "id"

    invoke-static {v3, v4, v5}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v8, v3

    .line 2062
    :goto_99
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mintegral_full_pb_loading"

    const-string v7, "id"

    invoke-static {v4, v5, v7}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 2063
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "mintegral_full_rl_install"

    const-string v11, "id"

    invoke-static {v5, v7, v11}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 2064
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v11, "mintegral_full_ll_pro_dur"

    const-string v12, "id"

    invoke-static {v7, v11, v12}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 2066
    if-eqz v1, :cond_28b

    .line 2067
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    move-object v7, v6

    .line 2069
    :goto_e4
    if-eqz v10, :cond_1a4

    .line 2070
    invoke-virtual {v10, v5}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2077
    :cond_e9
    :goto_e9
    iget-object v5, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ah:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_106

    .line 2078
    if-eqz v10, :cond_1bc

    .line 2079
    iget-object v5, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ah:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v5}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2085
    :cond_f4
    :goto_f4
    iget-object v5, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->setBackListener(Lcom/mintegral/msdk/nativex/listener/b;)V

    .line 2086
    iget-object v5, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->setObject(Ljava/lang/Object;)V

    .line 2087
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    .line 2088
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ah:Landroid/widget/RelativeLayout;

    .line 2090
    :cond_106
    if-eqz v10, :cond_1d3

    .line 2091
    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2097
    :cond_10b
    :goto_10b
    if-eqz v10, :cond_1e6

    .line 2098
    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2104
    :cond_110
    :goto_110
    if-eqz v8, :cond_117

    .line 2105
    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2107
    :cond_117
    if-eqz v9, :cond_1f9

    .line 2108
    invoke-virtual {v9, v8}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2114
    :cond_11c
    :goto_11c
    if-eqz v10, :cond_20c

    .line 2115
    invoke-virtual {v10, v9}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2125
    :cond_121
    :goto_121
    if-eqz v2, :cond_22c

    .line 2126
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2137
    :cond_126
    :goto_126
    if-eqz v0, :cond_12d

    .line 2138
    if-eqz v2, :cond_25b

    .line 2139
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2149
    :cond_12d
    :goto_12d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->setVisibility(I)V

    .line 2150
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->requestLayout()V

    .line 2151
    if-eqz v7, :cond_160

    .line 2152
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_153

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, v7, :cond_153

    .line 2153
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2155
    :cond_153
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->M:I

    invoke-virtual {v7, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2156
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2157
    invoke-virtual {v7}, Landroid/view/ViewGroup;->invalidate()V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_160} :catch_1b7

    .line 13868
    :cond_160
    :try_start_160
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    .line 13869
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->k:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    .line 13871
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

    if-eqz v0, :cond_177

    .line 13872
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

    invoke-interface {v0}, Lcom/mintegral/msdk/out/OnMTGMediaViewListener;->onExitFullscreen()V

    .line 13874
    :cond_177
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_189

    .line 13875
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    sget-object v1, Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;->NORMAL:Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->playerStateChange(Lcom/iab/omid/library/mintegral/adsession/video/PlayerState;)V

    .line 13876
    const-string v0, "omsdk"

    const-string v1, "NV playerStateChange, NORMAL"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_189} :catch_27e

    .line 2160
    :cond_189
    :goto_189
    const/4 v0, 0x0

    :try_start_18a
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h:Z

    .line 2161
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_1a3

    .line 2162
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->setExitFullScreen()V

    .line 2163
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->f:Z

    if-eqz v0, :cond_284

    .line 2164
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    .line 2168
    :goto_19e
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->gonePauseView()V

    .line 2173
    :cond_1a3
    :goto_1a3
    return-void

    .line 2072
    :cond_1a4
    if-eqz v5, :cond_e9

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_e9

    .line 2073
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_1b5} :catch_1b7

    goto/16 :goto_e9

    .line 2171
    :catch_1b7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a3

    .line 2081
    :cond_1bc
    :try_start_1bc
    iget-object v5, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ah:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_f4

    .line 2082
    iget-object v5, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ah:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ah:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_f4

    .line 2093
    :cond_1d3
    if-eqz v4, :cond_10b

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_10b

    .line 2094
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_10b

    .line 2100
    :cond_1e6
    if-eqz v3, :cond_110

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_110

    .line 2101
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_110

    .line 2110
    :cond_1f9
    if-eqz v8, :cond_11c

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_11c

    .line 2111
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_11c

    .line 2117
    :cond_20c
    if-eqz v9, :cond_21f

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_21f

    .line 2118
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_121

    .line 2120
    :cond_21f
    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    if-eqz v3, :cond_121

    .line 2121
    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    iget-object v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->removeView(Landroid/view/View;)V

    goto/16 :goto_121

    .line 2128
    :cond_22c
    if-eqz v10, :cond_23f

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_23f

    .line 2129
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_126

    .line 2131
    :cond_23f
    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    if-eqz v3, :cond_126

    .line 2132
    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2133
    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_126

    .line 2141
    :cond_25b
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2142
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_12d

    .line 2143
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2144
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12d

    .line 13879
    :catch_27e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_189

    .line 2166
    :cond_284
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->closeSound()V
    :try_end_289
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_289} :catch_1b7

    goto/16 :goto_19e

    :cond_28b
    move-object v7, v6

    goto/16 :goto_e4

    :cond_28e
    move-object v8, v3

    goto/16 :goto_99

    :cond_291
    move-object v9, v3

    goto/16 :goto_6c

    :cond_294
    move-object v10, v3

    goto/16 :goto_3f
.end method

.method static synthetic t(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A()Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    move-result-object v0

    return-object v0
.end method

.method private t()Z
    .registers 2

    .prologue
    .line 2176
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getMintegralFullPlayContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->G:Landroid/widget/RelativeLayout;

    .line 2177
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getMintegralFullPlayerParent()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->L:Landroid/widget/RelativeLayout;

    .line 2178
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getMintegralFullClose()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->H:Landroid/widget/RelativeLayout;

    .line 2179
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getMintegralFullIvClose()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->I:Landroid/widget/ImageView;

    .line 2180
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getMintegralFullTvInstall()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->J:Landroid/widget/TextView;

    .line 2181
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getMintegralFullPb()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->K:Landroid/widget/ProgressBar;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_30} :catch_32

    .line 2182
    const/4 v0, 0x1

    .line 2186
    :goto_31
    return v0

    .line 2184
    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2186
    const/4 v0, 0x0

    goto :goto_31
.end method

.method static synthetic u(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Landroid/view/View;
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private u()V
    .registers 3

    .prologue
    .line 2262
    :try_start_0
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->j(Landroid/content/Context;)I

    move-result v0

    .line 2263
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->k(Landroid/content/Context;)I

    move-result v1

    .line 2264
    if-lt v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i:Z

    .line 2265
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i:Z

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->j:Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1c

    .line 2269
    :goto_19
    return-void

    .line 2264
    :cond_1a
    const/4 v0, 0x0

    goto :goto_13

    .line 2267
    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_19
.end method

.method private v()F
    .registers 3

    .prologue
    .line 2335
    :try_start_0
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->j(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 2336
    iget-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i:Z

    if-eqz v1, :cond_17

    .line 2337
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->l(Landroid/content/Context;)I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_18

    move-result v1

    .line 2338
    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 2343
    :cond_17
    :goto_17
    return v0

    .line 2342
    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2343
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static synthetic v(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->af:Z

    return v0
.end method

.method private w()F
    .registers 3

    .prologue
    .line 2349
    :try_start_0
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->k(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 2350
    iget-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i:Z

    if-nez v1, :cond_17

    .line 2351
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->l(Landroid/content/Context;)I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_18

    move-result v1

    .line 2352
    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 2357
    :cond_17
    :goto_17
    return v0

    .line 2356
    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2357
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static synthetic w(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    return-object v0
.end method

.method static synthetic x(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private x()V
    .registers 5

    .prologue
    .line 2476
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->H:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    if-eqz v0, :cond_59

    .line 2477
    :cond_8
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2478
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2479
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2480
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2481
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2482
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->H:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4c

    .line 2483
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2485
    :cond_4c
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    if-eqz v1, :cond_55

    .line 2486
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2488
    :cond_55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->updateViewManger(Z)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_59} :catch_5a

    .line 2493
    :cond_59
    :goto_59
    return-void

    .line 2491
    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_59
.end method

.method static synthetic y(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->A:Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    return-object v0
.end method

.method private y()V
    .registers 5

    .prologue
    .line 2496
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->H:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    if-eqz v0, :cond_70

    .line 2497
    :cond_8
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2498
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2499
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2500
    iget v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ae:I

    if-nez v1, :cond_71

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 2501
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->l(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2505
    :goto_4e
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2506
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->H:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_63

    .line 2507
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->H:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2509
    :cond_63
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    if-eqz v1, :cond_6c

    .line 2510
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2512
    :cond_6c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->updateViewManger(Z)V

    .line 2517
    :cond_70
    :goto_70
    return-void

    .line 2503
    :cond_71
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7d} :catch_7e

    goto :goto_4e

    .line 2515
    :catch_7e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_70
.end method

.method private z()V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 2723
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 2724
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->f()[Ljava/lang/String;

    move-result-object v8

    .line 2726
    iget-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i:Z

    if-eqz v1, :cond_56

    .line 2727
    sget v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->n:I

    move v7, v1

    .line 2731
    :goto_1e
    array-length v9, v8

    move v6, v0

    :goto_20
    if-ge v6, v9, :cond_5e

    aget-object v0, v8, v6

    .line 2732
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 2733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&orienation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2734
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2731
    :cond_52
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_20

    .line 2729
    :cond_56
    sget v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->o:I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_58} :catch_5a

    move v7, v1

    goto :goto_1e

    .line 2739
    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2741
    :cond_5e
    return-void
.end method

.method static synthetic z(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i:Z

    return v0
.end method


# virtual methods
.method public OnBufferingEnd()V
    .registers 3

    .prologue
    .line 1804
    const-string v0, "bufferend"

    const-string v1, "bufferend"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_17

    .line 1806
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->bufferFinish()V

    .line 1807
    const-string v0, "omsdk"

    const-string v1, "videoEvents.bufferFinish()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    :cond_17
    return-void
.end method

.method public OnBufferingStart(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1795
    const-string v0, "bufferMsg"

    invoke-static {v0, p1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_15

    .line 1797
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->bufferStart()V

    .line 1798
    const-string v0, "omsdk"

    const-string v1, "videoEvents.bufferStart()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    :cond_15
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v1

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v0, :cond_2f

    const-string v0, ""

    :goto_2b
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/f/f;->b(Ljava/lang/String;)V

    .line 1801
    return-void

    .line 1800
    :cond_2f
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 925
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 926
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

    if-eqz v0, :cond_1c

    .line 928
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

    invoke-interface {v0}, Lcom/mintegral/msdk/out/OnMTGMediaViewListener;->onVideoStart()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 934
    :cond_1c
    :goto_1c
    return-void

    .line 932
    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method public canShowVideo()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2793
    .line 2794
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Z)Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    move-result-object v1

    .line 2795
    sget-object v2, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->b:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-eq v1, v2, :cond_d

    sget-object v2, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->c:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v1, v2, :cond_e

    .line 2796
    :cond_d
    const/4 v0, 0x1

    .line 2798
    :cond_e
    return v0
.end method

.method public changeNoticeURL()V
    .registers 5

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_33

    .line 2745
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v1

    .line 2746
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 2747
    const-string v0, "is_video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2748
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v2, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->b:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v0, v2, :cond_34

    .line 2749
    const-string v0, "is_video=2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 2750
    const-string v0, "is_video=2"

    const-string v2, "is_video=1"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2772
    :goto_2e
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 2775
    :cond_33
    return-void

    .line 2752
    :cond_34
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v2, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v0, v2, :cond_83

    .line 2753
    const-string v0, "is_video=1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 2754
    const-string v0, "is_video=1"

    const-string v2, "is_video=2"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 2758
    :cond_4b
    const-string v0, ""

    .line 2759
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v3, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->b:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v2, v3, :cond_70

    .line 2760
    const-string v0, "1"

    .line 2764
    :cond_55
    :goto_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2765
    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 2766
    const-string v1, "&is_video="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2770
    :goto_6b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 2761
    :cond_70
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v3, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v2, v3, :cond_55

    .line 2762
    const-string v0, "2"

    goto :goto_55

    .line 2768
    :cond_79
    const-string v1, "?is_video="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6b

    :cond_83
    move-object v0, v1

    goto :goto_2e
.end method

.method public destory()V
    .registers 2

    .prologue
    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_9

    .line 648
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->release()V

    .line 650
    :cond_9
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->b()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    .line 655
    :goto_c
    return-void

    .line 653
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c
.end method

.method public exitFullScreen()V
    .registers 4

    .prologue
    .line 2004
    :try_start_0
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->s()V

    .line 2005
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=========webview close mAllowLoopPlay:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->b:Z

    if-eqz v0, :cond_29

    .line 2007
    const-string v0, "MTGMediaView"

    const-string v1, "\u64ad\u653e\u7ed3\u675f \u8c03\u7528onClickPlayButton"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->onClickPlayButton()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 2014
    :cond_29
    :goto_29
    return-void

    .line 2012
    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public getAddNVT2ToNoticeURL()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2778
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_31

    .line 2779
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v0

    .line 2780
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 2781
    const-string v1, "nv_t2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 2782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2783
    const-string v0, "&nv_t2="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNvT2()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2784
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2789
    :cond_30
    :goto_30
    return-object v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 178
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l()Ljava/lang/String;

    move-result-object v1

    .line 181
    const-string v2, "MAL_10.2.42,3.0.1"

    .line 182
    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_23
    const-string v1, "MTGMediaView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "====getEndScreenInfo-mCampaign.name:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    :goto_43
    return-void

    .line 186
    :cond_44
    const-string v0, ""
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_46} :catch_47

    goto :goto_23

    .line 191
    :catch_47
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_43
.end method

.method public getFullScreenViewByStyle$746bf0f5(Landroid/content/Context;I)Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;
    .registers 6

    .prologue
    .line 3205
    const/4 v0, 0x0

    .line 3206
    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$9;->a:[I

    add-int/lit8 v2, p2, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1a

    .line 3215
    :goto_a
    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->setStytle$64568c2d(I)V

    .line 3216
    return-object v0

    .line 3208
    :pswitch_e
    new-instance v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;

    invoke-direct {v0, p1}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;-><init>(Landroid/content/Context;)V

    goto :goto_a

    .line 3212
    :pswitch_14
    new-instance v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralFullView;

    invoke-direct {v0, p1}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralFullView;-><init>(Landroid/content/Context;)V

    goto :goto_a

    .line 3206
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_14
        :pswitch_e
    .end packed-switch
.end method

.method public handleViewStyleResult$21377bb9()I
    .registers 3

    .prologue
    .line 3100
    const/4 v0, 0x0

    .line 3101
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNvT2()I

    move-result v1

    .line 3102
    packed-switch v1, :pswitch_data_1c

    .line 3121
    :goto_a
    :pswitch_a
    return v0

    .line 3104
    :pswitch_b
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->k()V

    goto :goto_a

    .line 3107
    :pswitch_f
    sget v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;->b:I

    goto :goto_a

    .line 3110
    :pswitch_12
    sget v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;->b:I

    goto :goto_a

    .line 3113
    :pswitch_15
    sget v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;->b:I

    goto :goto_a

    .line 3116
    :pswitch_18
    sget v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;->a:I

    goto :goto_a

    .line 3102
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_b
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_a
        :pswitch_18
    .end packed-switch
.end method

.method public handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 255
    return-void
.end method

.method public hideEndCardWebViewCloseBtn()V
    .registers 3

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 2030
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2032
    :cond_13
    return-void
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->k()V

    .line 198
    return-void
.end method

.method public ismCurIsFullScreen()Z
    .registers 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h:Z

    return v0
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 203
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 10

    .prologue
    .line 441
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 443
    :try_start_3
    const-string v1, "MTGMediaView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onAttachedToWindow start:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v0, :cond_9a

    const-string v0, ""

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c:Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1f} :catch_a7

    if-eqz v0, :cond_51

    .line 5378
    :try_start_21
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Z:Landroid/hardware/SensorManager;

    .line 5379
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Z:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->aa:Landroid/hardware/Sensor;

    .line 5380
    new-instance v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;B)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->W:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    .line 5381
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Z:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->W:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->aa:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 5382
    const-string v0, "MTGMediaView"

    const-string v1, "register sensorlistener"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_51} :catch_a2

    .line 447
    :cond_51
    :goto_51
    :try_start_51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5d

    .line 448
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->g:Z

    .line 450
    :cond_5d
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_60} :catch_a7

    .line 5565
    :try_start_60
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->o()V

    .line 5566
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->P:Ljava/util/Timer;

    .line 5567
    iget-object v8, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->P:Ljava/util/Timer;

    new-instance v0, Lcom/mintegral/msdk/nativex/a/a;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->N:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h:Z

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->E:Landroid/view/View;

    iget-object v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/nativex/a/a;-><init>(Landroid/os/Handler;ZLandroid/view/View;Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x12c

    move-object v2, v8

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_83} :catch_ac

    .line 452
    :goto_83
    :try_start_83
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAttachedToWindow setDisplay finalmCurDisplayMode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :goto_99
    return-void

    .line 443
    :cond_9a
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 5384
    :catch_a2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_a6} :catch_a7

    goto :goto_51

    .line 454
    :catch_a7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_99

    .line 5569
    :catch_ac
    move-exception v0

    :try_start_ad
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_b0} :catch_a7

    goto :goto_83
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 460
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 462
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->u:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    if-eqz v0, :cond_c

    .line 463
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->u:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->d()V

    .line 465
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    if-eqz v0, :cond_28

    .line 466
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_19

    .line 467
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->unregisterView()V

    .line 469
    :cond_19
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->finish()V

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 471
    const-string v0, "omsdk"

    const-string v1, "adSession finish"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_28
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_2f

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    .line 476
    :cond_2f
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->s:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    if-eqz v0, :cond_36

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->s:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    .line 479
    :cond_36
    const-string v1, "MTGMediaView"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onDetachedFromWindow appname:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_77

    const-string v0, ""

    :goto_4d
    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->o()V

    .line 5574
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->N:Landroid/os/Handler;

    if-eqz v0, :cond_5d

    .line 5575
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->N:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_5d} :catch_83

    .line 6362
    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Z:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->W:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    if-eqz v0, :cond_73

    .line 6363
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Z:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->W:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 6364
    const-string v0, "MTGMediaView"

    const-string v1, "unRegister sensorlistener"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_73} :catch_7e

    .line 484
    :cond_73
    :goto_73
    :try_start_73
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->b()V

    .line 488
    :goto_76
    return-void

    .line 479
    :cond_77
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    .line 6367
    :catch_7e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_82} :catch_83

    goto :goto_73

    .line 486
    :catch_83
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_76
.end method

.method protected onMeasure(II)V
    .registers 7

    .prologue
    .line 511
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 513
    :try_start_3
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    .line 514
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    .line 515
    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    if-nez v0, :cond_2f

    .line 516
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    .line 517
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMeasure \u5bbd\u5ea6\u4e3a0 \u8c03\u7528getMeasuredWidth mDevWidth:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_2f
    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    if-nez v0, :cond_4f

    .line 520
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    .line 521
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMeasure \u9ad8\u5ea6\u4e3a0 \u8c03\u7528getMeasuredHeight mDevWidth:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_4f
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMeasure pre mDevWidth "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDevHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurDisplayMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurIsLandScape:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    if-nez v0, :cond_ae

    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    if-nez v0, :cond_ae

    .line 525
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    .line 526
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMeasure \u5bbd\u5ea6\u548c\u9ad8\u5ea6\u90fd\u4e3a0 \u5bbd\u5ea6\u53d6\u5c4f\u5e55\u5bbd\u5ea6mDevWidth:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_ae
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->b:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v0, v1, :cond_116

    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h:Z

    if-nez v0, :cond_116

    .line 529
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 530
    iget v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    if-eqz v1, :cond_ce

    if-eqz v0, :cond_c7

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_ce

    :cond_c7
    if-eqz v0, :cond_f0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f0

    .line 534
    :cond_ce
    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->T:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->S:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    .line 535
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMeasure mDevHeight\u4e3a0\u5e76\u4e14\u8bbe\u7f6eWRAP_CONTENT \u62ff\u89c6\u9891\u5bbd\u9ad8\u7b97\u9ad8\u5ea6mDevHeight:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_f0
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMeasure after mDevWidth "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->R:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " * mDevHeight *****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h()V

    .line 547
    :cond_115
    :goto_115
    return-void

    .line 539
    :cond_116
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v0, v1, :cond_129

    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h:Z

    if-nez v0, :cond_129

    .line 540
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->f()V
    :try_end_123
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_123} :catch_124

    goto :goto_115

    .line 545
    :catch_124
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_115

    .line 541
    :cond_129
    :try_start_129
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->d:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v0, v1, :cond_115

    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h:Z

    if-nez v0, :cond_115

    .line 542
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->g()V
    :try_end_136
    .catch Ljava/lang/Throwable; {:try_start_129 .. :try_end_136} :catch_124

    goto :goto_115
.end method

.method public onPlayCompleted()V
    .registers 3

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_10

    .line 1708
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->complete()V

    .line 1709
    const-string v0, "omsdk"

    const-string v1, "videoEvents.complete()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    :cond_10
    return-void
.end method

.method public onPlayError(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 1716
    :try_start_0
    const-string v0, "error"

    invoke-static {v0, p1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12703
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->d:Z

    if-nez v0, :cond_5e

    .line 12704
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->m()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 12705
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->d:Z

    .line 12706
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/j;->m()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5e} :catch_f9

    .line 12734
    :cond_5e
    :try_start_5e
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    move-result-object v6

    .line 12735
    const/4 v0, 0x0

    .line 12736
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ca

    .line 12737
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    .line 12738
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000021"

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 12739
    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12747
    :cond_94
    :goto_94
    if-eqz v0, :cond_be

    .line 12748
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 12749
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->e(Ljava/lang/String;)V

    .line 12750
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 12751
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 12752
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    .line 12753
    invoke-virtual {v6, v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/entity/q;)J
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_be} :catch_f4
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_be} :catch_f9

    .line 1721
    :cond_be
    :goto_be
    :try_start_be
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_be .. :try_end_c9} :catch_f9

    .line 1725
    :goto_c9
    return-void

    .line 12741
    :cond_ca
    :try_start_ca
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 12742
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    .line 12743
    new-instance v0, Lcom/mintegral/msdk/base/entity/q;

    const-string v1, "2000021"

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 12744
    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/base/entity/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_f3} :catch_f4
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_f3} :catch_f9

    goto :goto_94

    .line 12756
    :catch_f4
    move-exception v0

    :try_start_f5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f8
    .catch Ljava/lang/Throwable; {:try_start_f5 .. :try_end_f8} :catch_f9

    goto :goto_be

    .line 1723
    :catch_f9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c9
.end method

.method public onPlayProgress(II)V
    .registers 15

    .prologue
    const/16 v11, 0x4b

    const/16 v10, 0x32

    const/16 v9, 0x19

    .line 1763
    .line 13634
    :try_start_6
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_95

    .line 13635
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v6

    .line 13636
    if-eqz v6, :cond_95

    iget-boolean v0, v6, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->h:Z

    if-nez v0, :cond_95

    iget-object v0, v6, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->l:Ljava/util/Map;

    if-eqz v0, :cond_95

    iget-object v0, v6, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_95

    .line 13637
    iget-object v7, v6, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->l:Ljava/util/Map;

    .line 13638
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportAdvImp pre advImpMap.size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13639
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 13642
    :cond_44
    :goto_44
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 13643
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 13644
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 13645
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 13646
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_44

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 13647
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 13648
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 13649
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportAdvImp remove value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_90} :catch_91

    goto :goto_44

    .line 13659
    :catch_91
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1764
    :cond_95
    :goto_95
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(II)V

    .line 1765
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_dc

    .line 1766
    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    .line 1767
    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, p2

    .line 1768
    const-string v2, "omsdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPlayProgress: mCurPlayPosition = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " percent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nextPercent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    if-gt v0, v9, :cond_155

    if-ge v9, v1, :cond_155

    .line 1770
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->firstQuartile()V

    .line 1771
    const-string v0, "omsdk"

    const-string v1, "videoEvents.firstQuartile()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    :cond_dc
    :goto_dc
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/c/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v2

    .line 1781
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v1, :cond_179

    const-string v1, ""

    :goto_105
    invoke-virtual {v2}, Lcom/mintegral/msdk/c/d;->g()I

    move-result v4

    invoke-virtual {v2}, Lcom/mintegral/msdk/c/d;->f()I

    move-result v5

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/f/f;->a(Ljava/lang/String;IIII)V

    .line 1782
    iget v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->aj:I

    if-ne v0, p1, :cond_12f

    .line 1783
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/f/f;

    move-result-object v1

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v0, :cond_180

    const-string v0, ""

    :goto_12c
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/f/f;->b(Ljava/lang/String;)V

    .line 1785
    :cond_12f
    iput p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->aj:I

    .line 1786
    return-void

    .line 13652
    :cond_132
    :try_start_132
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportAdvImp advImpMap after size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13653
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_95

    .line 13654
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->h:Z
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_153} :catch_91

    goto/16 :goto_95

    .line 1772
    :cond_155
    if-gt v0, v10, :cond_167

    if-ge v10, v1, :cond_167

    .line 1773
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->midpoint()V

    .line 1774
    const-string v0, "omsdk"

    const-string v1, "videoEvents.midpoint()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_dc

    .line 1775
    :cond_167
    if-gt v0, v11, :cond_dc

    if-ge v11, v1, :cond_dc

    .line 1776
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->thirdQuartile()V

    .line 1777
    const-string v0, "omsdk"

    const-string v1, "videoEvents.thirdQuartile()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_dc

    .line 1781
    :cond_179
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    goto :goto_105

    .line 1783
    :cond_180
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    goto :goto_12c
.end method

.method public onPlayProgressMS(II)V
    .registers 3

    .prologue
    .line 1791
    return-void
.end method

.method public onPlaySetDataSourceError(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1813
    const-string v0, "errorstr"

    invoke-static {v0, p1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    return-void
.end method

.method public onPlayStarted(I)V
    .registers 5

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_43

    .line 1695
    const-string v0, "omsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoEvents.start() allDuration = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/a/b;->b(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    :try_start_2a
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    int-to-float v2, p1

    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->f:Z

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/a/b;->b(Landroid/content/Context;)F

    move-result v0

    :goto_39
    invoke-virtual {v1, v2, v0}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->start(FF)V
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_3c} :catch_46

    .line 1701
    :goto_3c
    const-string v0, "omsdk"

    const-string v1, "videoEvents.start()"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    :cond_43
    return-void

    .line 1697
    :cond_44
    const/4 v0, 0x0

    goto :goto_39

    .line 1698
    :catch_46
    move-exception v0

    .line 1699
    const-string v1, "omsdk"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5

    .prologue
    .line 492
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 494
    :try_start_3
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasWindowFocus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->e:Z

    .line 496
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ac:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    sget-object v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;->b:Lcom/mintegral/msdk/nativex/view/MTGMediaView$a;

    if-ne v0, v1, :cond_28

    .line 6468
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_28

    .line 6469
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->setIsFrontDesk(Z)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_28} :catch_5b

    .line 6536
    :cond_28
    :try_start_28
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h:Z

    if-nez v0, :cond_3e

    .line 6537
    const-string v0, "MTGMediaView"

    const-string v1, "initFullPlayeron WindowFocuse \u5728\u534a\u5c4f return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_33} :catch_56

    .line 501
    :cond_33
    :goto_33
    :try_start_33
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->requestLayout()V

    .line 502
    const-string v0, "MTGMediaView"

    const-string v1, "onWindowFocusChanged reqeusetlaytout"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_3d} :catch_5b

    .line 506
    :goto_3d
    return-void

    .line 6540
    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_8e

    .line 6541
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->e:Z

    if-eqz v0, :cond_81

    .line 6542
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 6543
    const-string v0, "MTGMediaView"

    const-string v1, "fullscreen windowfocuse true isPlaying do nothing return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_55} :catch_56

    goto :goto_33

    .line 6558
    :catch_56
    move-exception v0

    :try_start_57
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_33

    .line 504
    :catch_5b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3d

    .line 6545
    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getIsActiviePause()Z

    move-result v0

    if-nez v0, :cond_33

    .line 6546
    const-string v0, "MTGMediaView"

    const-string v1, "fullscreen windowfocuse true startOrPlayVideo"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6547
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->onClickPlayButton()V

    goto :goto_33

    .line 6551
    :cond_81
    const-string v0, "MTGMediaView"

    const-string v1, "fullscreen windowfocuse false pasue======"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6552
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->pause()V

    goto :goto_33

    .line 6555
    :cond_8e
    const-string v0, "MTGMediaView"

    const-string v1, "fullscreen playerview is null return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_95} :catch_56

    goto :goto_33
.end method

.method public setAllowLoopPlay(Z)V
    .registers 2

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->b:Z

    .line 634
    return-void
.end method

.method public setAllowScreenChange(Z)V
    .registers 2

    .prologue
    .line 637
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c:Z

    .line 638
    return-void
.end method

.method public setAllowVideoRefresh(Z)V
    .registers 2

    .prologue
    .line 629
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a:Z

    .line 630
    return-void
.end method

.method public setIsAllowFullScreen(Z)V
    .registers 2

    .prologue
    .line 625
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->d:Z

    .line 626
    return-void
.end method

.method public setNativeAd(Lcom/mintegral/msdk/out/Campaign;)V
    .registers 8

    .prologue
    .line 551
    if-nez p1, :cond_a

    .line 552
    :try_start_2
    const-string v0, "MTGMediaView"

    const-string v1, "setNativeAd campaign is null return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_9
    :goto_9
    return-void

    .line 555
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-ne v0, p1, :cond_1f

    .line 556
    const-string v0, "MTGMediaView"

    const-string v1, "setNativeAd has init return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_9

    .line 616
    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 7317
    :cond_1f
    const/4 v0, 0x1

    :try_start_20
    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->e:Z

    .line 7319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->g:Z

    .line 7320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->h:Z

    .line 7321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->i:Z

    .line 7322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->j:Z

    .line 7323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->q:Z

    .line 560
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->u()V

    .line 561
    check-cast p1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 562
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    move-result-object v0

    if-nez v0, :cond_6c

    .line 563
    new-instance v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx$b;-><init>()V

    .line 564
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdvImpList()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx$b;->l:Ljava/util/Map;

    .line 565
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setMediaViewHolder(Lcom/mintegral/msdk/base/entity/CampaignEx$b;)V

    .line 566
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNativeAd mediaViewHolder appname:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v1

    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mintegral/msdk/videocommon/download/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/download/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ab:Lcom/mintegral/msdk/videocommon/download/a;

    .line 570
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNativeAd cid"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->p:Z

    if-eqz v0, :cond_f9

    .line 572
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    if-eqz v0, :cond_eb

    .line 573
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_dc

    .line 574
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->unregisterView()V

    .line 576
    :cond_dc
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->finish()V

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 578
    const-string v0, "omsdk"

    const-string v1, "adSession finish"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_eb
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    if-eqz v0, :cond_f2

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->t:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    .line 583
    :cond_f2
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->s:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    if-eqz v0, :cond_f9

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->s:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    .line 587
    :cond_f9
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v0, :cond_168

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isActiveOm()Z

    move-result v0

    if-eqz v0, :cond_168

    .line 588
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->u:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    if-nez v0, :cond_114

    .line 589
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->u:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    .line 591
    :cond_114
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->u:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->c()V

    .line 592
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->u:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->a()D

    .line 593
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->u:Lcom/mintegral/msdk/mtgjscommon/mraid/d;

    new-instance v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$10;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView$10;-><init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgjscommon/mraid/d;->a(Lcom/mintegral/msdk/mtgjscommon/mraid/d$b;)V

    .line 607
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOmid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/a/b;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/AdSession;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 608
    const-string v0, "omsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adSession.Create "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r:Lcom/iab/omid/library/mintegral/adsession/AdSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_168
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->p:Z

    if-eqz v0, :cond_9

    .line 612
    const-string v0, "MTGMediaView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNativeAd setDisplay appname:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c()V
    :try_end_189
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_189} :catch_1a

    goto/16 :goto_9
.end method

.method public setOnMediaViewListener(Lcom/mintegral/msdk/out/OnMTGMediaViewListener;)V
    .registers 2

    .prologue
    .line 621
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ad:Lcom/mintegral/msdk/out/OnMTGMediaViewListener;

    .line 622
    return-void
.end method

.method public setOrientation(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 250
    return-void
.end method

.method public setProgressVisibility(Z)V
    .registers 4

    .prologue
    .line 3159
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->k:Z

    .line 3160
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_d

    .line 3161
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->k:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    .line 3163
    :cond_d
    return-void
.end method

.method public setSoundIndicatorVisibility(Z)V
    .registers 4

    .prologue
    .line 3171
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l:Z

    .line 3172
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_d

    .line 3173
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    iget-boolean v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    .line 3175
    :cond_d
    return-void
.end method

.method public setVideoSoundOnOff(Z)V
    .registers 3

    .prologue
    .line 3183
    iput-boolean p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->f:Z

    .line 3184
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    if-eqz v0, :cond_f

    .line 3185
    iget-boolean v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->f:Z

    if-eqz v0, :cond_10

    .line 3186
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    .line 3192
    :cond_f
    :goto_f
    return-void

    .line 3188
    :cond_10
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->closeSound()V

    goto :goto_f
.end method

.method public showEndCardWebViewCloseBtn()V
    .registers 3

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    .line 2021
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ai:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2023
    :cond_12
    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 209
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_28

    move-result v0

    if-nez v0, :cond_12

    .line 211
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    const-string v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_37

    .line 223
    :cond_12
    :goto_12
    :try_start_12
    const-string v0, "MTGMediaView"

    const-string v1, "SHOW CLOSE BTN "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->showEndCardWebViewCloseBtn()V

    .line 226
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_27} :catch_28

    .line 233
    :goto_27
    return-void

    .line 229
    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 232
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    invoke-static {v3}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_27

    :catch_37
    move-exception v0

    goto :goto_12
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 238
    :try_start_0
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->exitFullScreen()V

    .line 239
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 245
    :goto_e
    return-void

    .line 242
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public updateViewManger(Z)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2523
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(Landroid/content/Context;)Lcom/mintegral/msdk/nativex/view/mtgfullview/a;

    move-result-object v3

    .line 2525
    if-eqz v3, :cond_26

    .line 2526
    :try_start_c
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    invoke-static {v2}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;)V

    .line 2527
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->v:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v2}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result v2

    if-nez v2, :cond_36

    move v2, v0

    .line 2528
    :goto_1a
    iget-object v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    invoke-virtual {v3, p1, v2, v4}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(ZZLcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;)V

    .line 2529
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    iget v4, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->ae:I

    invoke-virtual {v3, p1, v2, v4}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(ZLcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;I)V

    .line 2531
    :cond_26
    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    instance-of v2, v2, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;

    if-eqz v2, :cond_35

    .line 2532
    if-eqz v3, :cond_35

    .line 2533
    if-nez p1, :cond_38

    :goto_30
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->F:Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(ZLcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;)V
    :try_end_35
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_35} :catch_3a

    .line 2539
    :cond_35
    :goto_35
    return-void

    :cond_36
    move v2, v1

    .line 2527
    goto :goto_1a

    :cond_38
    move v0, v1

    .line 2533
    goto :goto_30

    .line 2537
    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_35
.end method
