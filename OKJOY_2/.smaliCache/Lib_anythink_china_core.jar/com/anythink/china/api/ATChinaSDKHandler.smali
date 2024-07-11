.class public Lcom/anythink/china/api/ATChinaSDKHandler;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleInitOaidSDK(Landroid/content/Context;Lcom/anythink/china/api/OaidSDKCallbackListener;)V
    .registers 4

    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    new-instance v1, Lcom/anythink/china/api/ATChinaSDKHandler$1;

    invoke-direct {v1, p1}, Lcom/anythink/china/api/ATChinaSDKHandler$1;-><init>(Lcom/anythink/china/api/OaidSDKCallbackListener;)V

    invoke-static {p0, v0, v1}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 38
    return-void

    .line 36
    :catchall_e
    move-exception p0

    .line 40
    return-void
.end method

.method public static requestPermissionIfNecessary(Landroid/content/Context;)V
    .registers 6

    .line 23
    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1033
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x3b9aca00

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 1037
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/anythink/china/activity/TransparentActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1038
    const-string v3, "type"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1039
    const-string v3, "request_code"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1040
    const-string v1, "permission_list"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1042
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    return-void
.end method
