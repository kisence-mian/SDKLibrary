.class final Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/toutiao/TTATInitManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .registers 5

    .line 207
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 5

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->a(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 216
    return-void

    .line 212
    :catchall_c
    move-exception v0

    .line 213
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->u(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 214
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter$3;->d:Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;

    invoke-static {v1}, Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;->v(Lcom/anythink/network/toutiao/TTATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_24
    return-void
.end method
