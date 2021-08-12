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

.field final synthetic c:[I

.field final synthetic d:Lcom/anythink/network/toutiao/TTATInitManager$a;

.field final synthetic e:Z

.field final synthetic f:Lcom/anythink/network/toutiao/TTATInitManager;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATInitManager;Landroid/content/Context;Ljava/lang/String;[ILcom/anythink/network/toutiao/TTATInitManager$a;Z)V
    .registers 7

    .line 85
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->f:Lcom/anythink/network/toutiao/TTATInitManager;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->c:[I

    iput-object p5, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->d:Lcom/anythink/network/toutiao/TTATInitManager$a;

    iput-boolean p6, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->b:Ljava/lang/String;

    .line 90
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v1

    .line 91
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->useTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->a:Landroid/content/Context;

    .line 92
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowPageWhenScreenLock(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->c:[I

    .line 95
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->directDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 96
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 99
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->f:Lcom/anythink/network/toutiao/TTATInitManager;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Lcom/anythink/network/toutiao/TTATInitManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/anythink/network/toutiao/TTATInitManager$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATInitManager$1$1;-><init>(Lcom/anythink/network/toutiao/TTATInitManager$1;)V

    .line 107
    iget-boolean v2, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->e:Z

    if-eqz v2, :cond_5a

    const-wide/16 v2, 0x0

    goto :goto_5c

    :cond_5a
    const-wide/16 v2, 0x3e8

    .line 99
    :goto_5c
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5f
    .catchall {:try_start_0 .. :try_end_5f} :catchall_60

    .line 112
    return-void

    .line 108
    :catchall_60
    move-exception v0

    .line 109
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInitManager$1;->d:Lcom/anythink/network/toutiao/TTATInitManager$a;

    if-eqz v0, :cond_68

    .line 110
    invoke-interface {v0}, Lcom/anythink/network/toutiao/TTATInitManager$a;->onFinish()V

    .line 113
    :cond_68
    return-void
.end method
