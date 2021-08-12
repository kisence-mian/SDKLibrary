.class final Lcom/anythink/network/toutiao/TTATSplashAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/toutiao/TTATInitManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATSplashAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/anythink/network/toutiao/TTATSplashAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATSplashAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .registers 4

    .line 53
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .registers 4

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;->b:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Lcom/anythink/network/toutiao/TTATSplashAdapter;Landroid/content/Context;Ljava/util/Map;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 62
    return-void

    .line 58
    :catchall_a
    move-exception v0

    .line 59
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    invoke-static {v1}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 60
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$1;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    invoke-static {v1}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->b(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_22
    return-void
.end method
