.class Lcom/taptap/pay/sdk/library/CheckLicenseManager$2;
.super Ljava/lang/Object;
.source "CheckLicenseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/CheckLicenseManager;->notifyLicenseResult(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    .line 92
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$2;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$2;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    invoke-virtual {v0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->hideProgress()V

    .line 96
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/CheckLicenseManager$2;->this$0:Lcom/taptap/pay/sdk/library/CheckLicenseManager;

    # invokes: Lcom/taptap/pay/sdk/library/CheckLicenseManager;->moveGameToFront()V
    invoke-static {v0}, Lcom/taptap/pay/sdk/library/CheckLicenseManager;->access$400(Lcom/taptap/pay/sdk/library/CheckLicenseManager;)V

    .line 97
    return-void
.end method
