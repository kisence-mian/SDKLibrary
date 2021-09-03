.class Lcom/taptap/pay/sdk/library/DLCManager$2;
.super Ljava/lang/Object;
.source "DLCManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/DLCManager;->purchase(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/pay/sdk/library/DLCManager;

.field final synthetic val$gameActivity:Landroid/app/Activity;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/DLCManager;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 4
    .param p1, "this$0"    # Lcom/taptap/pay/sdk/library/DLCManager;

    .line 188
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/DLCManager$2;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    iput-object p2, p0, Lcom/taptap/pay/sdk/library/DLCManager$2;->val$sku:Ljava/lang/String;

    iput-object p3, p0, Lcom/taptap/pay/sdk/library/DLCManager$2;->val$gameActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/DLCManager$2;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/DLCManager;->getInventory()Lcom/taptap/pay/sdk/library/Inventory;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/DLCManager$2;->val$sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taptap/pay/sdk/library/Inventory;->hasDetails(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 193
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/DLCManager$2;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    # getter for: Lcom/taptap/pay/sdk/library/DLCManager;->waitPayingSKU:Ljava/lang/String;
    invoke-static {v0}, Lcom/taptap/pay/sdk/library/DLCManager;->access$600(Lcom/taptap/pay/sdk/library/DLCManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/taptap/pay/sdk/library/DLCManager;->notifyPurchaseCallback(Ljava/lang/String;I)V

    .line 194
    return-void

    .line 197
    :cond_19
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/DLCManager$2;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/DLCManager;->getInventory()Lcom/taptap/pay/sdk/library/Inventory;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/DLCManager$2;->val$sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taptap/pay/sdk/library/Inventory;->getPurchase(Ljava/lang/String;)Lcom/taptap/pay/sdk/library/TapPurchase;

    move-result-object v0

    .line 198
    .local v0, "goods":Lcom/taptap/pay/sdk/library/TapPurchase;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.play.taptap.billing.InAppBillingAct"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v2, "cmd"

    const-string v3, "order"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v2, "pkg"

    iget-object v3, p0, Lcom/taptap/pay/sdk/library/DLCManager$2;->val$gameActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v2, "sku"

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapPurchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v2, "price"

    iget-wide v3, v0, Lcom/taptap/pay/sdk/library/TapPurchase;->mPrice:D

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 205
    const-string v2, "title"

    iget-object v3, v0, Lcom/taptap/pay/sdk/library/TapPurchase;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v2, "description"

    iget-object v3, v0, Lcom/taptap/pay/sdk/library/TapPurchase;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/DLCManager$2;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    # setter for: Lcom/taptap/pay/sdk/library/DLCManager;->secureRandomRequestCode:I
    invoke-static {v2, v3}, Lcom/taptap/pay/sdk/library/DLCManager;->access$202(Lcom/taptap/pay/sdk/library/DLCManager;I)I

    .line 208
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/DLCManager$2;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    const/4 v3, 0x1

    # setter for: Lcom/taptap/pay/sdk/library/DLCManager;->currentCmd:I
    invoke-static {v2, v3}, Lcom/taptap/pay/sdk/library/DLCManager;->access$302(Lcom/taptap/pay/sdk/library/DLCManager;I)I

    .line 209
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    iget-object v3, p0, Lcom/taptap/pay/sdk/library/DLCManager$2;->this$0:Lcom/taptap/pay/sdk/library/DLCManager;

    # getter for: Lcom/taptap/pay/sdk/library/DLCManager;->secureRandomRequestCode:I
    invoke-static {v3}, Lcom/taptap/pay/sdk/library/DLCManager;->access$200(Lcom/taptap/pay/sdk/library/DLCManager;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_86} :catch_87

    .line 212
    .end local v0    # "goods":Lcom/taptap/pay/sdk/library/TapPurchase;
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_8b

    .line 210
    :catch_87
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8b
    return-void
.end method
