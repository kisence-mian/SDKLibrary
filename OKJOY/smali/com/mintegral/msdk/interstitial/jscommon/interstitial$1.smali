.class final Lcom/mintegral/msdk/interstitial/jscommon/interstitial$1;
.super Ljava/lang/Object;
.source "interstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/interstitial/jscommon/interstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mintegral/msdk/interstitial/jscommon/interstitial;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/interstitial/jscommon/interstitial;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 220
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$1;->c:Lcom/mintegral/msdk/interstitial/jscommon/interstitial;

    iput-object p2, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 225
    invoke-static {}, Lcom/mintegral/msdk/interstitial/jscommon/interstitial;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6e05\u9664\u672c\u5730\u7684InterstitialCampaign\u96c6\u5408"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/mintegral/msdk/interstitial/b/a;->a()Lcom/mintegral/msdk/interstitial/b/a;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_16

    .line 228
    iget-object v1, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$1;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/mintegral/msdk/interstitial/jscommon/interstitial$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/interstitial/b/a;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 230
    :cond_16
    return-void
.end method
