.class final Lcom/tencent/smtt/sdk/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/m;->b:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNeedDownloadFinish(ZI)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->findCoreForThirdPartyApp(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getCoreDisabled()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/m;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->forceToLoadX5ForThirdApp(Landroid/content/Context;Z)V

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->i:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/tencent/smtt/sdk/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->initTbsBuglyIfNeed(Landroid/content/Context;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->i:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->initTbsBuglyIfNeed(Landroid/content/Context;)V

    :cond_3f
    iget-object v0, p0, Lcom/tencent/smtt/sdk/m;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/m;->b:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    invoke-static {v0, v1}, Lcom/tencent/smtt/sdk/QbSdk;->preInit(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    goto :goto_29
.end method
