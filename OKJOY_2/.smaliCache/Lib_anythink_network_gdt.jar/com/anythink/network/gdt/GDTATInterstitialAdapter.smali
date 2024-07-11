.class public Lcom/anythink/network/gdt/GDTATInterstitialAdapter;
.super Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

# interfaces
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field e:I

.field f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-class v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->d:Z

    .line 33
    iput v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->e:I

    return-void
.end method

.method static synthetic a(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 38
    const-string v0, "0"

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->f:Ljava/lang/String;

    .line 39
    const-string v0, "is_fullscreen"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 40
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->f:Ljava/lang/String;

    .line 43
    :cond_14
    new-instance v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->c:Ljava/lang/String;

    new-instance v3, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;

    invoke-direct {v3, p0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;-><init>(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 112
    nop

    .line 1227
    nop

    .line 1231
    nop

    .line 1232
    nop

    .line 1233
    nop

    .line 1234
    const-string v0, "video_muted"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 1235
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_41

    .line 1234
    :cond_40
    move v0, v2

    .line 1237
    :goto_41
    const-string v1, "video_autoplay"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_57

    .line 1238
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_58

    .line 1237
    :cond_57
    move v1, v4

    .line 1240
    :goto_58
    const-string v3, "video_duration"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_6e

    .line 1241
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_6f

    .line 1240
    :cond_6e
    move p2, v6

    .line 1244
    :goto_6f
    new-instance v3, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    if-ne v0, v4, :cond_78

    move v5, v4

    goto :goto_79

    :cond_78
    move v5, v2

    .line 1245
    :goto_79
    invoke-virtual {v3, v5}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v3

    if-ne v0, v4, :cond_80

    move v2, v4

    .line 1246
    :cond_80
    invoke-virtual {v3, v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v0

    .line 1247
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v0

    .line 1248
    invoke-virtual {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v0

    .line 1249
    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v2, v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    .line 1250
    if-eq p2, v6, :cond_98

    .line 1251
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, p2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMaxVideoDuration(I)V

    .line 1254
    :cond_98
    iget-object p2, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    invoke-static {p1, v1}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoPlayPolicy(I)V

    .line 114
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->f:Ljava/lang/String;

    const-string p2, "1"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 115
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadFullScreenAD()V

    return-void

    .line 117
    :cond_b4
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadAD()V

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .registers 10

    .line 24
    nop

    .line 2038
    const-string v0, "0"

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->f:Ljava/lang/String;

    .line 2039
    const-string v0, "is_fullscreen"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2040
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->f:Ljava/lang/String;

    .line 2043
    :cond_15
    new-instance v0, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->c:Ljava/lang/String;

    new-instance v3, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;

    invoke-direct {v3, p0}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$1;-><init>(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V

    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 2112
    nop

    .line 2227
    nop

    .line 2231
    nop

    .line 2232
    nop

    .line 2233
    nop

    .line 2234
    const-string v0, "video_muted"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    .line 2235
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_42

    .line 2234
    :cond_41
    move v0, v2

    .line 2237
    :goto_42
    const-string v1, "video_autoplay"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_58

    .line 2238
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_59

    .line 2237
    :cond_58
    move v1, v4

    .line 2240
    :goto_59
    const-string v3, "video_duration"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_6f

    .line 2241
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_70

    .line 2240
    :cond_6f
    move p2, v6

    .line 2244
    :goto_70
    new-instance v3, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    if-ne v0, v4, :cond_79

    move v5, v4

    goto :goto_7a

    :cond_79
    move v5, v2

    .line 2245
    :goto_7a
    invoke-virtual {v3, v5}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v3

    if-ne v0, v4, :cond_81

    move v2, v4

    .line 2246
    :cond_81
    invoke-virtual {v3, v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v0

    .line 2247
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v0

    .line 2248
    invoke-virtual {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v0

    .line 2249
    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v2, v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    .line 2250
    if-eq p2, v6, :cond_99

    .line 2251
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, p2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMaxVideoDuration(I)V

    .line 2254
    :cond_99
    iget-object p2, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    invoke-static {p1, v1}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoPlayPolicy(I)V

    .line 2114
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->f:Ljava/lang/String;

    const-string p2, "1"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b5

    .line 2115
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {p0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadFullScreenAD()V

    return-void

    .line 2117
    :cond_b5
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {p0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->loadAD()V

    .line 24
    return-void
.end method

.method static synthetic b(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private b(Landroid/content/Context;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-nez v0, :cond_5

    .line 228
    return-void

    .line 231
    :cond_5
    nop

    .line 232
    nop

    .line 233
    nop

    .line 234
    const-string v0, "video_muted"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 235
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1f

    .line 234
    :cond_1e
    move v0, v2

    .line 237
    :goto_1f
    const-string v1, "video_autoplay"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_35

    .line 238
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_36

    .line 237
    :cond_35
    move v1, v4

    .line 240
    :goto_36
    const-string v3, "video_duration"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_4c

    .line 241
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_4d

    .line 240
    :cond_4c
    move p2, v6

    .line 244
    :goto_4d
    new-instance v3, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {v3}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    if-ne v0, v4, :cond_56

    move v5, v4

    goto :goto_57

    :cond_56
    move v5, v2

    .line 245
    :goto_57
    invoke-virtual {v3, v5}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v3

    if-ne v0, v4, :cond_5e

    move v2, v4

    .line 246
    :cond_5e
    invoke-virtual {v3, v2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object v0

    .line 249
    iget-object v2, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v2, v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    .line 250
    if-eq p2, v6, :cond_76

    .line 251
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, p2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMaxVideoDuration(I)V

    .line 254
    :cond_76
    iget-object p2, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    invoke-static {p1, v1}, Lcom/anythink/network/gdt/GDTATInitManager;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setVideoPlayPolicy(I)V

    .line 255
    return-void
.end method

.method static synthetic c(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic e(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic f(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic g(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic h(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic i(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    return-object p0
.end method

.method static synthetic k(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method static synthetic l(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-eqz v0, :cond_f

    .line 207
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMediaListener(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;)V

    .line 208
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->destroy()V

    .line 209
    iput-object v1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 211
    :cond_f
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .registers 2

    .line 150
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    .line 220
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/gdt/GDTATInitManager;->getNetworkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .registers 2

    .line 123
    iget-boolean v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->d:Z

    return v0
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 155
    nop

    .line 156
    nop

    .line 158
    const-string p3, "app_id"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_15

    .line 159
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_16

    .line 158
    :cond_15
    move-object p3, v1

    .line 162
    :goto_16
    const-string v0, "unit_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 163
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 162
    :cond_27
    move-object v0, v1

    .line 166
    :goto_28
    const-string v2, "unit_version"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 167
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->e:I

    .line 170
    :cond_3e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_6f

    .line 177
    :cond_4b
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_5b

    .line 178
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_5a

    .line 179
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, "GDT context must be activity."

    invoke-interface {p1, v1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_5a
    return-void

    .line 184
    :cond_5b
    iput-object p3, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->b:Ljava/lang/String;

    .line 185
    iput-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->c:Ljava/lang/String;

    .line 186
    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->d:Z

    .line 189
    invoke-static {}, Lcom/anythink/network/gdt/GDTATInitManager;->getInstance()Lcom/anythink/network/gdt/GDTATInitManager;

    move-result-object p3

    new-instance v0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/network/gdt/GDTATInterstitialAdapter$2;-><init>(Lcom/anythink/network/gdt/GDTATInterstitialAdapter;Landroid/content/Context;Ljava/util/Map;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/anythink/network/gdt/GDTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/gdt/GDTATInitManager$OnInitCallback;)V

    .line 202
    return-void

    .line 171
    :cond_6f
    :goto_6f
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    if-eqz p1, :cond_7a

    .line 172
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    const-string p2, "GDT appid or unitId is empty."

    invoke-interface {p1, v1, p2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_7a
    return-void
.end method

.method public onVideoComplete()V
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz v0, :cond_9

    .line 286
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoEnd()V

    .line 288
    :cond_9
    return-void
.end method

.method public onVideoError(Lcom/qq/e/comm/util/AdError;)V
    .registers 5

    .line 292
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz v0, :cond_1e

    .line 293
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_1e
    return-void
.end method

.method public onVideoInit()V
    .registers 1

    .line 260
    return-void
.end method

.method public onVideoLoading()V
    .registers 1

    .line 265
    return-void
.end method

.method public onVideoPageClose()V
    .registers 1

    .line 305
    return-void
.end method

.method public onVideoPageOpen()V
    .registers 1

    .line 300
    return-void
.end method

.method public onVideoPause()V
    .registers 1

    .line 281
    return-void
.end method

.method public onVideoReady(J)V
    .registers 3

    .line 269
    return-void
.end method

.method public onVideoStart()V
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    if-eqz v0, :cond_9

    .line 274
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->mImpressListener:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    invoke-interface {v0}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart()V

    .line 276
    :cond_9
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    if-eqz v0, :cond_2e

    .line 130
    invoke-virtual {v0, p0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->setMediaListener(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;)V

    .line 132
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->f:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 133
    if-eqz p1, :cond_19

    .line 134
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->showFullScreenAD(Landroid/app/Activity;)V

    return-void

    .line 136
    :cond_19
    sget-object p1, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Gdt (Full Screen) show fail: context need be Activity"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 139
    :cond_21
    if-eqz p1, :cond_29

    .line 140
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->show(Landroid/app/Activity;)V

    return-void

    .line 142
    :cond_29
    iget-object p1, p0, Lcom/anythink/network/gdt/GDTATInterstitialAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->show()V

    .line 146
    :cond_2e
    return-void
.end method
