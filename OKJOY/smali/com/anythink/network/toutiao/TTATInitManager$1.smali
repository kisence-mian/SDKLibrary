.class final Lcom/anythink/network/toutiao/TTATInitManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;ZLcom/anythink/network/toutiao/TTATInitManager$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anythink/network/toutiao/TTATInitManager$a;

.field final synthetic d:Z

.field final synthetic e:Lcom/anythink/network/toutiao/TTATInitManager;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATInitManager;Landroid/content/Context;Ljava/lang/String;Lcom/anythink/network/toutiao/TTATInitManager$a;Z)V
    .registers 6

    .prologue
    .line 63
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->e:Lcom/anythink/network/toutiao/TTATInitManager;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->c:Lcom/anythink/network/toutiao/TTATInitManager$a;

    iput-boolean p5, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 66
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->b:Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->useTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->a:Landroid/content/Context;

    .line 69
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowPageWhenScreenLock(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_64

    .line 72
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->directDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 77
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->e:Lcom/anythink/network/toutiao/TTATInitManager;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Lcom/anythink/network/toutiao/TTATInitManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/anythink/network/toutiao/TTATInitManager$1$1;

    invoke-direct {v3, p0}, Lcom/anythink/network/toutiao/TTATInitManager$1$1;-><init>(Lcom/anythink/network/toutiao/TTATInitManager$1;)V

    iget-boolean v0, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->d:Z

    if-eqz v0, :cond_61

    const-wide/16 v0, 0x0

    :goto_5d
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void

    .line 77
    :cond_61
    const-wide/16 v0, 0x3e8

    goto :goto_5d

    .line 71
    :array_64
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method
