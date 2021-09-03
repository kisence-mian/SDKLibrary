.class Lcom/taptap/pay/sdk/library/TapTapLicense$5;
.super Lcom/taptap/pay/sdk/library/BaseDialogClickListener;
.source "TapTapLicense.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/pay/sdk/library/TapTapLicense;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/TapTapLicense;)V
    .registers 2
    .param p1, "this$0"    # Lcom/taptap/pay/sdk/library/TapTapLicense;

    .line 152
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$5;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    invoke-direct {p0}, Lcom/taptap/pay/sdk/library/BaseDialogClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadTapTap(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V
    .registers 4
    .param p1, "dialog"    # Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 181
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "https://www.taptap.com/mobile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 184
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$5;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    # getter for: Lcom/taptap/pay/sdk/library/TapTapLicense;->activityWeakReference:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->access$200(Lcom/taptap/pay/sdk/library/TapTapLicense;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    .line 188
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_2c

    .line 186
    :catchall_28
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2c
    return-void
.end method

.method public onOpenTapTapCN(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V
    .registers 3
    .param p1, "dialog"    # Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 156
    invoke-virtual {p1}, Lcom/taptap/pay/sdk/library/TapAlertDialog;->dismiss()V

    .line 157
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapTapLicense$5;->this$0:Lcom/taptap/pay/sdk/library/TapTapLicense;

    # getter for: Lcom/taptap/pay/sdk/library/TapTapLicense;->cnIabService:Lcom/taptap/pay/sdk/library/IabService;
    invoke-static {v0}, Lcom/taptap/pay/sdk/library/TapTapLicense;->access$000(Lcom/taptap/pay/sdk/library/TapTapLicense;)Lcom/taptap/pay/sdk/library/IabService;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 158
    new-instance v0, Lcom/taptap/pay/sdk/library/TapTapLicense$5$1;

    invoke-direct {v0, p0}, Lcom/taptap/pay/sdk/library/TapTapLicense$5$1;-><init>(Lcom/taptap/pay/sdk/library/TapTapLicense$5;)V

    invoke-static {v0}, Lcom/taptap/pay/sdk/library/UIHelper;->runAsyncThread(Ljava/lang/Runnable;)V

    .line 165
    :cond_13
    return-void
.end method

.method public onOpenTapTapGlobal(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V
    .registers 3
    .param p1, "dialog"    # Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 169
    invoke-virtual {p1}, Lcom/taptap/pay/sdk/library/TapAlertDialog;->dismiss()V

    .line 170
    new-instance v0, Lcom/taptap/pay/sdk/library/TapTapLicense$5$2;

    invoke-direct {v0, p0}, Lcom/taptap/pay/sdk/library/TapTapLicense$5$2;-><init>(Lcom/taptap/pay/sdk/library/TapTapLicense$5;)V

    invoke-static {v0}, Lcom/taptap/pay/sdk/library/UIHelper;->runAsyncThread(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method
