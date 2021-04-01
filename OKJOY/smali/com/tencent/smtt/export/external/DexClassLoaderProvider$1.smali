.class final Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic val$dexName:Ljava/lang/String;

.field final synthetic val$dexPath:Ljava/lang/String;

.field final synthetic val$libraryPath:Ljava/lang/String;

.field final synthetic val$optimizedDirectory:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$dexName:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$dexPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$optimizedDirectory:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$libraryPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$dexName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$dexPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$optimizedDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/smtt/export/external/DexClassLoaderProvider$1;->val$libraryPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    # getter for: Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->access$000()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/smtt/export/external/DexClassLoaderProviderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "dex2oat"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    # getter for: Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/tencent/smtt/export/external/DexClassLoaderProvider;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_35} :catch_36
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_35} :catch_3f

    :goto_35
    return-void

    :catch_36
    move-exception v0

    const-string v1, "dexloader"

    const-string v2, "start DexLoaderService exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    :catch_3f
    move-exception v0

    const-string v1, "dexloader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after shouldUseDexLoaderService exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method
