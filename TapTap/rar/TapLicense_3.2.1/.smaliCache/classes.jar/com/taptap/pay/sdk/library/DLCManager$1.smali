.class Lcom/taptap/pay/sdk/library/DLCManager$1;
.super Ljava/lang/Object;
.source "DLCManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/DLCManager;->queryPurchaseBySKU([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/pay/sdk/library/DLCManager;

.field final synthetic val$gameActivity:Landroid/app/Activity;

.field final synthetic val$skus:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/DLCManager;Landroid/app/Activity;[Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/taptap/pay/sdk/library/DLCManager;

    .line 110
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    iput-object p2, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->val$gameActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->val$skus:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 113
    const/4 v0, 0x1

    .line 114
    .local v0, "allBought":Z
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    # getter for: Lcom/taptap/pay/sdk/library/DLCManager;->mCheckOnce:Z
    invoke-static {v1}, Lcom/taptap/pay/sdk/library/DLCManager;->access$000(Lcom/taptap/pay/sdk/library/DLCManager;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 115
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->val$gameActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/taptap/pay/sdk/library/Settings;->getPurchaseData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "purchaseData":Ljava/lang/String;
    iget-object v3, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->val$gameActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/taptap/pay/sdk/library/Settings;->getSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "signature":Ljava/lang/String;
    iget-object v4, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    # invokes: Lcom/taptap/pay/sdk/library/DLCManager;->initInventory(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v1, v3}, Lcom/taptap/pay/sdk/library/DLCManager;->access$100(Lcom/taptap/pay/sdk/library/DLCManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v4, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->val$skus:[Ljava/lang/String;

    array-length v5, v4

    move v6, v2

    :goto_1f
    if-ge v6, v5, :cond_34

    aget-object v7, v4, v6

    .line 119
    .local v7, "skuItem":Ljava/lang/String;
    iget-object v8, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    invoke-virtual {v8}, Lcom/taptap/pay/sdk/library/DLCManager;->getInventory()Lcom/taptap/pay/sdk/library/Inventory;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/taptap/pay/sdk/library/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_31

    .line 120
    const/4 v0, 0x0

    .line 121
    goto :goto_34

    .line 118
    .end local v7    # "skuItem":Ljava/lang/String;
    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 124
    .end local v1    # "purchaseData":Ljava/lang/String;
    .end local v3    # "signature":Ljava/lang/String;
    :cond_34
    :goto_34
    goto :goto_36

    .line 125
    :cond_35
    const/4 v0, 0x0

    .line 128
    :goto_36
    const-string v1, "DLCManager"

    if-nez v0, :cond_bd

    .line 129
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "com.play.taptap.billing.InAppBillingAct"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v4, "cmd"

    const-string v5, "query"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v4, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->val$gameActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const/4 v4, 0x0

    .line 136
    .local v4, "installed":Z
    :try_start_57
    iget-object v5, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->val$gameActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 137
    invoke-virtual {v5, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 138
    .local v5, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_90

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_90

    .line 139
    const/4 v4, 0x1

    .line 140
    iget-object v6, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    # setter for: Lcom/taptap/pay/sdk/library/DLCManager;->secureRandomRequestCode:I
    invoke-static {v6, v7}, Lcom/taptap/pay/sdk/library/DLCManager;->access$202(Lcom/taptap/pay/sdk/library/DLCManager;I)I

    .line 141
    iget-object v6, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    # setter for: Lcom/taptap/pay/sdk/library/DLCManager;->currentCmd:I
    invoke-static {v6, v2}, Lcom/taptap/pay/sdk/library/DLCManager;->access$302(Lcom/taptap/pay/sdk/library/DLCManager;I)I

    .line 142
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    iget-object v6, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    # getter for: Lcom/taptap/pay/sdk/library/DLCManager;->secureRandomRequestCode:I
    invoke-static {v6}, Lcom/taptap/pay/sdk/library/DLCManager;->access$200(Lcom/taptap/pay/sdk/library/DLCManager;)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_90} :catch_91

    .line 146
    .end local v5    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_90
    goto :goto_95

    .line 144
    :catch_91
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_95
    if-nez v4, :cond_bc

    .line 149
    const-string v2, "onQueryCallBack: QUERY_RESULT_NOT_INSTALL_TAPTAP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    # getter for: Lcom/taptap/pay/sdk/library/DLCManager;->mInventoryCallback:Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;
    invoke-static {v1}, Lcom/taptap/pay/sdk/library/DLCManager;->access$400(Lcom/taptap/pay/sdk/library/DLCManager;)Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

    move-result-object v1

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    # getter for: Lcom/taptap/pay/sdk/library/DLCManager;->mInventoryCallback:Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;
    invoke-static {v1}, Lcom/taptap/pay/sdk/library/DLCManager;->access$400(Lcom/taptap/pay/sdk/library/DLCManager;)Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

    move-result-object v1

    const/4 v2, 0x0

    .line 152
    const/4 v5, 0x1

    invoke-interface {v1, v5, v2}, Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;->onQueryCallBack(ILjava/util/HashMap;)Z

    move-result v1

    if-nez v1, :cond_bc

    .line 153
    :cond_b2
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->val$gameActivity:Landroid/app/Activity;

    new-instance v2, Lcom/taptap/pay/sdk/library/DLCManager$1$1;

    invoke-direct {v2, p0}, Lcom/taptap/pay/sdk/library/DLCManager$1$1;-><init>(Lcom/taptap/pay/sdk/library/DLCManager$1;)V

    invoke-static {v1, v2}, Lcom/taptap/pay/sdk/library/UIHelper;->showNoInstalled(Landroid/app/Activity;Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;)V

    .line 170
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "installed":Z
    :cond_bc
    goto :goto_e2

    .line 171
    :cond_bd
    iget-object v3, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    # invokes: Lcom/taptap/pay/sdk/library/DLCManager;->getCurrentSkuListStatus()Ljava/util/HashMap;
    invoke-static {v3}, Lcom/taptap/pay/sdk/library/DLCManager;->access$500(Lcom/taptap/pay/sdk/library/DLCManager;)Ljava/util/HashMap;

    move-result-object v3

    .line 172
    .local v3, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryCallBack: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/DLCManager$1;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    invoke-virtual {v1, v2, v3}, Lcom/taptap/pay/sdk/library/DLCManager;->notifyQueryCallback(ILjava/util/HashMap;)V

    .line 176
    .end local v3    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_e2
    return-void
.end method
