.class public final Lcom/sigmob/sdk/splash/SplashAdView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static r:F

.field private static s:F


# instance fields
.field private a:Lcom/sigmob/sdk/splash/e;

.field private b:Landroid/content/Context;

.field private c:Landroid/app/Activity;

.field private d:J

.field private e:Landroid/widget/RelativeLayout;

.field private f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private g:Lcom/sigmob/sdk/splash/d;

.field private h:Lcom/sigmob/volley/toolbox/s;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/view/View$OnTouchListener;

.field private q:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x41c80000    # 25.0f

    sput v0, Lcom/sigmob/sdk/splash/SplashAdView;->r:F

    const/high16 v0, 0x41500000    # 13.0f

    sput v0, Lcom/sigmob/sdk/splash/SplashAdView;->s:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->q:F

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->c:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/splash/SplashAdView;)J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->d:J

    return-wide v0
.end method

.method private a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 14

    const-string v0, "handleUrlAction: "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v6

    iget-object v1, v6, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v0, :cond_b8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, v6, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/utils/o;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, v6, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->g:Lcom/sigmob/sdk/splash/d;

    invoke-virtual {v1}, Lcom/sigmob/sdk/splash/d;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    :goto_3b
    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/sigmob/sdk/base/common/utils/ad;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/utils/ad;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/utils/ab;->a:Lcom/sigmob/sdk/base/common/utils/ab;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sigmob/sdk/base/common/utils/ab;

    const/4 v3, 0x0

    sget-object v4, Lcom/sigmob/sdk/base/common/utils/ab;->b:Lcom/sigmob/sdk/base/common/utils/ab;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sigmob/sdk/base/common/utils/ab;->e:Lcom/sigmob/sdk/base/common/utils/ab;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/utils/ad;->a(Lcom/sigmob/sdk/base/common/utils/ab;[Lcom/sigmob/sdk/base/common/utils/ab;)Lcom/sigmob/sdk/base/common/utils/ad;

    move-result-object v9

    new-instance v0, Lcom/sigmob/sdk/splash/SplashAdView$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/splash/SplashAdView$4;-><init>(Lcom/sigmob/sdk/splash/SplashAdView;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/Context;ILcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)V

    invoke-virtual {v9, v0}, Lcom/sigmob/sdk/base/common/utils/ad;->a(Lcom/sigmob/sdk/base/common/utils/ae;)Lcom/sigmob/sdk/base/common/utils/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ad;->a()Lcom/sigmob/sdk/base/common/utils/ad;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ad;->a(Z)Lcom/sigmob/sdk/base/common/utils/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ad;->b()Lcom/sigmob/sdk/base/common/utils/ac;

    move-result-object v0

    invoke-virtual {v0, p1, v8}, Lcom/sigmob/sdk/base/common/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_85
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "final_url"

    iget-object v1, v6, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->H:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/util/Map;)V

    :cond_b0
    iget-object v0, v6, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->D:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p2, v1}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    goto :goto_3b

    :cond_b8
    iget-object v0, v6, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    goto :goto_3b
.end method

.method static synthetic a(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    const-string v0, "handleClick: "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->g:Lcom/sigmob/sdk/splash/d;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/sdk/splash/d;->b(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->d:J

    const-string v1, "com.sigmob.action.interstitial.click"

    invoke-static {v0, v2, v3, v1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)V

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0, v0, v1, p1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;)V
    .registers 11

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    iget-object v1, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "is_deeplink"

    const-string v1, "0"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "target_url"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coordinate"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "click"

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    :try_start_3c
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    const-string v1, "\u5f53\u524d\u6b63\u5728\u52aa\u529b\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u7b49"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_48} :catch_9a

    :goto_48
    return-void

    :cond_49
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_8a

    new-instance v0, Lcom/sigmob/sdk/base/c/e;

    new-instance v1, Lcom/sigmob/sdk/splash/SplashAdView$3;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/splash/SplashAdView$3;-><init>(Lcom/sigmob/sdk/splash/SplashAdView;)V

    invoke-direct {v0, v7, v1, v6}, Lcom/sigmob/sdk/base/c/e;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/c/f;I)V

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->a()Lcom/sigmob/sdk/base/c/t;

    move-result-object v1

    if-nez v1, :cond_81

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->t:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request queue is null"

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/base/common/t;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    :goto_74
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->g:Lcom/sigmob/sdk/splash/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/d;->l()Z

    move-result v0

    if-nez v0, :cond_98

    move v0, v6

    :goto_7d
    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    goto :goto_48

    :cond_81
    const-string v2, "GDTRequestConvert"

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/c/e;->b(Ljava/lang/Object;)Lcom/sigmob/volley/q;

    invoke-virtual {v1, v0}, Lcom/sigmob/volley/u;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/q;

    goto :goto_74

    :cond_8a
    iput-object v7, p0, Lcom/sigmob/sdk/splash/SplashAdView;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0, v7, v1}, Lcom/sigmob/sdk/base/common/t;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_74

    :cond_98
    const/4 v0, 0x0

    goto :goto_7d

    :catch_9a
    move-exception v0

    goto :goto_48
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "category"

    invoke-interface {v6, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "platform"

    invoke-interface {v6, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const-string v1, "sub_category"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_message"

    invoke-interface {v6, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v2, "9"

    const/4 v3, 0x2

    move-object v4, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_10

    const-string v1, "sub_category"

    invoke-interface {v6, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v1, "platform"

    const-string v2, "sigmob"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_1c

    invoke-interface {v6, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1c
    const-string v1, "placement_id"

    invoke-interface {v6, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "5"

    const/4 v3, 0x2

    move-object v1, p3

    move-object v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/sdk/splash/SplashAdView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->i:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/content/Context;)V
    .registers 8

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/splash/e;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/splash/e;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    iget-wide v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->d:J

    iput-wide v2, v0, Lcom/sigmob/sdk/splash/e;->b:J

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    invoke-virtual {p0, v1, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->o:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/sigmob/sdk/splash/SplashAdView;->r:F

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->o:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sigmob/sdk/splash/SplashAdView$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/splash/SplashAdView$1;-><init>(Lcom/sigmob/sdk/splash/SplashAdView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/sigmob/sdk/splash/SplashAdView$2;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/splash/SplashAdView$2;-><init>(Lcom/sigmob/sdk/splash/SplashAdView;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->p:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->o:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->p:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic c(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .registers 8

    const/4 v5, 0x0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    invoke-static {}, Lcom/sigmob/sdk/base/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v2, "#dadada"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4, p1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_73

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v3, Lcom/sigmob/sdk/splash/SplashAdView;->r:F

    iget v4, p0, Lcom/sigmob/sdk/splash/SplashAdView;->q:F

    mul-float/2addr v3, v4

    invoke-static {v3, p1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_5a
    :goto_5a
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3, p1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v3, "#B3505050"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0, v2}, Lcom/sigmob/sdk/splash/SplashAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_73
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-boolean v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->j:Z

    if-nez v3, :cond_5a

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->i()I

    move-result v3

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_5a
.end method

.method static synthetic d(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .registers 9

    const/4 v6, -0x2

    const/4 v5, 0x0

    sget v0, Lcom/sigmob/sdk/splash/SplashAdView;->r:F

    iget v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->q:F

    mul-float/2addr v0, v1

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    div-int/lit8 v0, v0, 0x2

    const-string v2, "#B3505050"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v5, v0, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v2, v0

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_85

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3c
    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v5, v0, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    const/4 v1, 0x1

    sget v2, Lcom/sigmob/sdk/splash/SplashAdView;->s:F

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    const-string v1, "#dadada"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_85
    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3c
.end method

.method static synthetic e(Lcom/sigmob/sdk/splash/SplashAdView;)Lcom/sigmob/sdk/splash/d;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->g:Lcom/sigmob/sdk/splash/d;

    return-object v0
.end method

.method private e(Landroid/content/Context;)V
    .registers 8

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_logo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->k:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2, p1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v3, p1}, Lcom/sigmob/sdk/base/common/utils/b;->b(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-boolean v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->j:Z

    if-nez v2, :cond_42

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->i()I

    move-result v2

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_42
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->k:Landroid/widget/ImageView;

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->k:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_6d

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_6d
    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/sigmob/sdk/base/c/i;->b()Lcom/sigmob/volley/toolbox/p;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_logo()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/splash/SplashAdView$5;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/splash/SplashAdView$5;-><init>(Lcom/sigmob/sdk/splash/SplashAdView;)V

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/volley/toolbox/p;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/t;)Lcom/sigmob/volley/toolbox/s;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->h:Lcom/sigmob/volley/toolbox/s;

    goto :goto_e
.end method

.method static synthetic f(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/sigmob/sdk/splash/SplashAdView;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->k:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 3

    const/16 v1, 0x8

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/e;->setVisibility(I)V

    :cond_e
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 13

    const/4 v10, -0x2

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    :goto_20
    return-void

    :cond_21
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->click_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_4f

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->o:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    :cond_4f
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->p:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    const v1, 0x4d666666    # 2.41591904E8f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1, p1}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/CompanionEndcard;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "8250"

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->as()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x42140000    # 37.0f

    invoke-virtual {v1, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {v9, p1}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {v9, p1}, Lcom/sigmob/sdk/base/common/utils/b;->c(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v6, v6, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_20
.end method

.method a(Z)V
    .registers 7

    const/4 v4, 0x0

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->d:J

    const-string v1, "com.sigmob.action.interstitial.dismiss"

    invoke-static {v0, v2, v3, v1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_11
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    invoke-virtual {v0, v4}, Lcom/sigmob/sdk/splash/e;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->h:Lcom/sigmob/volley/toolbox/s;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->h:Lcom/sigmob/volley/toolbox/s;

    invoke-virtual {v0}, Lcom/sigmob/volley/toolbox/s;->a()V

    iput-object v4, p0, Lcom/sigmob/sdk/splash/SplashAdView;->h:Lcom/sigmob/volley/toolbox/s;

    :cond_21
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/sigmob/sdk/splash/d;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/splash/d;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->g:Lcom/sigmob/sdk/splash/d;

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->c(Landroid/content/Context;)V

    :goto_26
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->d(Landroid/content/Context;)V

    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4a

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->c(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_26

    :catch_42
    move-exception v0

    const-string v1, "setupAd error"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_2c

    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->e(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4f} :catch_42

    goto :goto_26
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x4

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/e;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    return v0
.end method

.method public getDuration()I
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/e;->getDuration()I

    move-result v0

    return v0
.end method

.method public setBroadcastIdentifier(J)V
    .registers 4

    iput-wide p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->d:J

    return-void
.end method

.method public setDuration(I)V
    .registers 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    if-lez p1, :cond_52

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_56

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sigmob/sdk/base/b;->c([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :pswitch_2e
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sigmob/sdk/base/b;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :pswitch_40
    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->l:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sigmob/sdk/base/b;->b([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_52
    invoke-virtual {p0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Z)V

    goto :goto_6

    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_2e
        :pswitch_40
    .end packed-switch
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/splash/e;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_9
    return-void
.end method

.method public setShowAppLogo(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->j:Z

    return-void
.end method

.method public setVisibility(I)V
    .registers 8

    const/4 v3, 0x0

    if-nez p1, :cond_1a

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->a:Lcom/sigmob/sdk/splash/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/e;->a()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->g:Lcom/sigmob/sdk/splash/d;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/SplashAdView;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1, v3, v2}, Lcom/sigmob/sdk/splash/d;->a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_19
    return-void

    :cond_1a
    :try_start_1a
    const-string v1, "splashAdBlock"

    iget-object v0, p0, Lcom/sigmob/sdk/splash/SplashAdView;->f:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SPLASH_ADBLOCK:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/v;->a()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "debug "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_4b} :catch_4c

    goto :goto_19

    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_19
.end method
