.class Lcom/taptap/pay/sdk/library/TapTapLicense$5$2;
.super Ljava/lang/Object;
.source "TapTapLicense.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/TapTapLicense$5;->onOpenTapTapGlobal(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/pay/sdk/library/TapTapLicense$5;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/TapTapLicense$5;)V
    .registers 2
    .param p1, "this$1"    # Lcom/taptap/pay/sdk/library/TapTapLicense$5;

    .line 170
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$5$2;->this$1:Lcom/taptap/pay/sdk/library/TapTapLicense$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$5$2;->this$1:Lcom/taptap/pay/sdk/library/TapTapLicense$5;

    iget-object v0, v0, Lcom/taptap/pay/sdk/library/TapTapLicense$5;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    iget-object v1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$5$2;->this$1:Lcom/taptap/pay/sdk/library/TapTapLicense$5;

    iget-object v1, v1, Lcom/taptap/pay/sdk/library/TapTapLicense$5;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    # getter for: Lcom/taptap/pay/sdk/library/TapTapLicense;->globalIabService:Lcom/taptap/pay/sdk/library/IabService;
    invoke-static {v1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->access$100(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/IabService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taptap/pay/sdk/library/TapTapLicense;->checkLicense(Lcom/taptap/pay/sdk/library/IabService;Z)Z

    .line 174
    return-void
.end method
