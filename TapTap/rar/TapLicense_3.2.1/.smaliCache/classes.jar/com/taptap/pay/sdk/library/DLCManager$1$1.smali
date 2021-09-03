.class Lcom/taptap/pay/sdk/library/DLCManager$1$1;
.super Lcom/taptap/pay/sdk/library/BaseDialogClickListener;
.source "DLCManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/pay/sdk/library/DLCManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/pay/sdk/library/DLCManager$1;


# direct methods
.method constructor <init>(Lcom/taptap/pay/sdk/library/DLCManager$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/taptap/pay/sdk/library/DLCManager$1;

    .line 153
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/DLCManager$1$1;->this$1:Lcom/taptap/pay/sdk/library/DLCManager$1;

    invoke-direct {p0}, Lcom/taptap/pay/sdk/library/BaseDialogClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadTapTap(Lcom/taptap/pay/sdk/library/TapAlertDialog;)V
    .registers 4
    .param p1, "dialog"    # Lcom/taptap/pay/sdk/library/TapAlertDialog;

    .line 158
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v1, "https://www.taptap.com/mobile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 161
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/taptap/pay/sdk/library/DLCManager$1$1;->this$1:Lcom/taptap/pay/sdk/library/DLCManager$1;

    iget-object v1, v1, Lcom/taptap/pay/sdk/library/DLCManager$1;->val$gameActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    .line 165
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_24

    .line 163
    :catchall_20
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_24
    return-void
.end method
