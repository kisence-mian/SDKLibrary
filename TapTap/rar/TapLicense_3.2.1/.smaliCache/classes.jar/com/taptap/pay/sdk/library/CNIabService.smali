.class Lcom/taptap/pay/sdk/library/CNIabService;
.super Lcom/taptap/pay/sdk/library/IabService;
.source "CNIabService.java"


# instance fields
.field private targetPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taptap/pay/sdk/library/exceptions/TapTapBaseException;
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lcom/taptap/pay/sdk/library/IabService;-><init>(Landroid/app/Activity;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/CNIabService;->targetPackageName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 5

    .line 21
    const-string v0, "com.taptap.pad"

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/CNIabService;->targetPackageName:Ljava/lang/String;

    if-nez v1, :cond_1e

    .line 22
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/CNIabService;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 23
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 25
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    :try_start_e
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_14

    move-object v2, v3

    .line 27
    goto :goto_15

    .line 26
    :catch_14
    move-exception v3

    .line 28
    :goto_15
    if-eqz v2, :cond_1a

    .line 29
    iput-object v0, p0, Lcom/taptap/pay/sdk/library/CNIabService;->targetPackageName:Ljava/lang/String;

    goto :goto_1e

    .line 31
    :cond_1a
    const-string v0, "com.taptap"

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/CNIabService;->targetPackageName:Ljava/lang/String;

    .line 34
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CNIabService;->targetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public openTapTap()V
    .registers 4

    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taptap://taptap.com/app?identifier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taptap/pay/sdk/library/CNIabService;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&license=yes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "uri":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/CNIabService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/CNIabService;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method
