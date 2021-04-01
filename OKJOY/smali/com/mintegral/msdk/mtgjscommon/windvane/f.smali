.class public final Lcom/mintegral/msdk/mtgjscommon/windvane/f;
.super Ljava/lang/Object;
.source "WindVaneApiManager.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->b:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->c:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 1068
    const-class v0, Lcom/mintegral/msdk/mtgjscommon/windvane/MvBridge;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a(Ljava/lang/Class;)V

    .line 1071
    :try_start_c
    const-string v0, "com.mintegral.msdk.offerwall.jscommon.OfferWall"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1072
    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a(Ljava/lang/Class;)V
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_15} :catch_63

    .line 1077
    :goto_15
    :try_start_15
    const-string v0, "com.mintegral.msdk.interstitial.jscommon.interstitial"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1078
    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a(Ljava/lang/Class;)V
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_1e} :catch_61

    .line 1083
    :goto_1e
    :try_start_1e
    const-string v0, "com.mintegral.msdk.video.js.bridge.RewardJs"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1084
    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a(Ljava/lang/Class;)V
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_27} :catch_5f

    .line 1090
    :goto_27
    :try_start_27
    const-string v0, "com.mintegral.msdk.video.js.bridge.VideoBridge"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1091
    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a(Ljava/lang/Class;)V
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27 .. :try_end_30} :catch_5d

    .line 1096
    :goto_30
    :try_start_30
    const-string v0, "com.mintegral.msdk.mtgjscommon.authority.jscommon.PrivateAuthorityJSBridge"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1097
    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a(Ljava/lang/Class;)V
    :try_end_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_39} :catch_5b

    .line 1102
    :goto_39
    :try_start_39
    const-string v0, "com.mintegral.msdk.interactiveads.jscommon.Interactive"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1103
    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a(Ljava/lang/Class;)V
    :try_end_42
    .catch Ljava/lang/ClassNotFoundException; {:try_start_39 .. :try_end_42} :catch_59

    .line 1108
    :goto_42
    :try_start_42
    const-string v0, "com.mintegral.msdk.mtgjscommon.mraid.MraidJSBridge"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1109
    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a(Ljava/lang/Class;)V
    :try_end_4b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_42 .. :try_end_4b} :catch_57

    .line 1114
    :goto_4b
    :try_start_4b
    const-string v0, "com.mintegral.msdk.mtgbanner.common.bridge.BannerJSPlugin"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1115
    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a(Ljava/lang/Class;)V
    :try_end_54
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4b .. :try_end_54} :catch_55

    .line 1118
    :goto_54
    return-void

    .line 20
    :catch_55
    move-exception v0

    goto :goto_54

    :catch_57
    move-exception v0

    goto :goto_4b

    :catch_59
    move-exception v0

    goto :goto_42

    :catch_5b
    move-exception v0

    goto :goto_39

    :catch_5d
    move-exception v0

    goto :goto_30

    :catch_5f
    move-exception v0

    goto :goto_27

    :catch_61
    move-exception v0

    goto :goto_1e

    :catch_63
    move-exception v0

    goto :goto_15
.end method

.method private static a(Ljava/lang/String;Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;Landroid/content/Context;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 27
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 29
    if-eqz v0, :cond_20

    :try_start_a
    const-class v1, Lcom/mintegral/msdk/mtgjscommon/windvane/i;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgjscommon/windvane/i;

    .line 31
    invoke-virtual {v0, p2, p1}, Lcom/mintegral/msdk/mtgjscommon/windvane/i;->initialize(Landroid/content/Context;Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1c

    .line 37
    :goto_1b
    return-object v0

    .line 35
    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    :cond_20
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static a(Ljava/lang/Class;)V
    .registers 3

    .prologue
    .line 41
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a:Ljava/util/HashMap;

    .line 45
    :cond_b
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 49
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a:Ljava/util/HashMap;

    .line 53
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->c:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->b:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->a(Ljava/lang/String;Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/f;->b:Landroid/content/Context;

    .line 24
    return-void
.end method
