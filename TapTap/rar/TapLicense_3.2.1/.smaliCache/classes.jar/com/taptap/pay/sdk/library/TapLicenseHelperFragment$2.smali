.class Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment$2;
.super Ljava/lang/Object;
.source "TapLicenseHelperFragment.java"

# interfaces
.implements Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->setupDLCHelper(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;

    .line 72
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment$2;->this$0:Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderCallBack(Ljava/lang/String;I)V
    .registers 4
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 87
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->getInstance()Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->inventoryCallback:Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

    if-eqz v0, :cond_11

    .line 88
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->getInstance()Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->inventoryCallback:Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

    invoke-interface {v0, p1, p2}, Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;->onOrderCallBack(Ljava/lang/String;I)V

    .line 90
    :cond_11
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment$2;->this$0:Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->removeSelf()V

    .line 91
    return-void
.end method

.method public onQueryCallBack(ILjava/util/HashMap;)Z
    .registers 5
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 75
    .local p2, "queryList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->getInstance()Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->inventoryCallback:Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

    if-eqz v0, :cond_11

    .line 76
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->getInstance()Lcom/taptap/pay/sdk/library/TapLicenseHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/taptap/pay/sdk/library/TapLicenseHelper;->inventoryCallback:Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

    invoke-interface {v0, p1, p2}, Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;->onQueryCallBack(ILjava/util/HashMap;)Z

    .line 78
    :cond_11
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_16

    .line 79
    return v1

    .line 81
    :cond_16
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment$2;->this$0:Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/TapLicenseHelperFragment;->removeSelf()V

    .line 82
    return v1
.end method
