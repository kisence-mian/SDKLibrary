.class public Lcom/anythink/nativead/a/a;
.super Lcom/anythink/core/common/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/d<",
        "Lcom/anythink/nativead/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lcom/anythink/nativead/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/nativead/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/anythink/core/common/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private static a(Lcom/anythink/nativead/a/c;)Lcom/anythink/core/common/f;
    .registers 3

    .line 89
    new-instance v0, Lcom/anythink/nativead/a/b;

    iget-object v1, p0, Lcom/anythink/nativead/a/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/nativead/a/b;-><init>(Landroid/content/Context;)V

    .line 90
    iget-object p0, p0, Lcom/anythink/nativead/a/c;->b:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 1057
    iput-object p0, v0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 91
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/nativead/a/a;
    .registers 4

    .line 40
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;)Lcom/anythink/core/common/d;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_e

    instance-of v1, v0, Lcom/anythink/nativead/a/a;

    if-nez v1, :cond_1a

    .line 42
    :cond_e
    new-instance v0, Lcom/anythink/nativead/a/a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/nativead/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;Lcom/anythink/core/common/d;)V

    .line 45
    :cond_1a
    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;)V

    .line 46
    check-cast v0, Lcom/anythink/nativead/a/a;

    return-object v0
.end method

.method private static a(Lcom/anythink/nativead/a/c;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/anythink/nativead/a/c;->b:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    if-eqz v0, :cond_9

    .line 104
    iget-object p0, p0, Lcom/anythink/nativead/a/c;->b:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-interface {p0, p1}, Lcom/anythink/nativead/api/ATNativeNetworkListener;->onNativeAdLoadFail(Lcom/anythink/core/api/AdError;)V

    .line 106
    :cond_9
    return-void
.end method

.method private static b(Lcom/anythink/nativead/a/c;)V
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/anythink/nativead/a/c;->b:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    if-eqz v0, :cond_9

    .line 97
    iget-object p0, p0, Lcom/anythink/nativead/a/c;->b:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-interface {p0}, Lcom/anythink/nativead/api/ATNativeNetworkListener;->onNativeAdLoaded()V

    .line 99
    :cond_9
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/anythink/nativead/api/ATNativeNetworkListener;)V
    .registers 5

    .line 80
    new-instance v0, Lcom/anythink/nativead/a/c;

    invoke-direct {v0}, Lcom/anythink/nativead/a/c;-><init>()V

    .line 81
    iput-object p1, v0, Lcom/anythink/nativead/a/c;->a:Landroid/content/Context;

    .line 82
    iput-object p2, v0, Lcom/anythink/nativead/a/c;->b:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 83
    iget-object p1, p0, Lcom/anythink/nativead/a/a;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/anythink/nativead/a/a;->d:Ljava/lang/String;

    const-string v1, "0"

    invoke-super {p0, p1, v1, p2, v0}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/g;)V

    .line 84
    return-void
.end method

.method public final synthetic a(Lcom/anythink/core/common/g;)V
    .registers 3

    .line 32
    check-cast p1, Lcom/anythink/nativead/a/c;

    .line 2096
    iget-object v0, p1, Lcom/anythink/nativead/a/c;->b:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    if-eqz v0, :cond_b

    .line 2097
    iget-object p1, p1, Lcom/anythink/nativead/a/c;->b:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-interface {p1}, Lcom/anythink/nativead/api/ATNativeNetworkListener;->onNativeAdLoaded()V

    .line 32
    :cond_b
    return-void
.end method

.method public final synthetic a(Lcom/anythink/core/common/g;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 32
    check-cast p1, Lcom/anythink/nativead/a/c;

    .line 1103
    iget-object v0, p1, Lcom/anythink/nativead/a/c;->b:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    if-eqz v0, :cond_b

    .line 1104
    iget-object p1, p1, Lcom/anythink/nativead/a/c;->b:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    invoke-interface {p1, p2}, Lcom/anythink/nativead/api/ATNativeNetworkListener;->onNativeAdLoadFail(Lcom/anythink/core/api/AdError;)V

    .line 32
    :cond_b
    return-void
.end method

.method public final a(Lcom/anythink/nativead/api/ATNativeOpenSetting;Ljava/lang/String;)V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/anythink/nativead/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object p2

    .line 110
    if-eqz p2, :cond_1d

    .line 111
    invoke-virtual {p2}, Lcom/anythink/core/c/c;->w()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    iput-boolean v1, p1, Lcom/anythink/nativead/api/ATNativeOpenSetting;->isAutoRefresh:Z

    .line 112
    invoke-virtual {p2}, Lcom/anythink/core/c/c;->x()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/anythink/nativead/api/ATNativeOpenSetting;->autoRefreshTime:J

    .line 114
    :cond_1d
    return-void
.end method

.method public final synthetic b(Lcom/anythink/core/common/g;)Lcom/anythink/core/common/f;
    .registers 4

    .line 32
    check-cast p1, Lcom/anythink/nativead/a/c;

    .line 3089
    new-instance v0, Lcom/anythink/nativead/a/b;

    iget-object v1, p1, Lcom/anythink/nativead/a/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/anythink/nativead/a/b;-><init>(Landroid/content/Context;)V

    .line 3090
    iget-object p1, p1, Lcom/anythink/nativead/a/c;->b:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 4057
    iput-object p1, v0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/api/ATNativeNetworkListener;

    .line 3091
    nop

    .line 32
    return-object v0
.end method

.method public final g()Lcom/anythink/core/common/d/b;
    .registers 5

    .line 57
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/a/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/nativead/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/d/b;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/anythink/core/common/d/b;->h()Lcom/anythink/core/api/BaseAd;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/nativead/unitgroup/a;

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;

    if-eqz v1, :cond_3d

    .line 59
    invoke-virtual {v0}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lcom/anythink/core/common/d/b;->h()Lcom/anythink/core/api/BaseAd;

    move-result-object v2

    check-cast v2, Lcom/anythink/nativead/unitgroup/a;

    .line 62
    invoke-virtual {v2, v1}, Lcom/anythink/nativead/unitgroup/a;->setTrackingInfo(Lcom/anythink/core/common/d/d;)V

    .line 64
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/nativead/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/d/b;)V

    .line 66
    return-object v0

    .line 68
    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method
