.class Lcom/sigmob/sdk/base/common/utils/ClientMetadata$AppInstallReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;


# direct methods
.method private constructor <init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$AppInstallReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Lcom/sigmob/sdk/base/common/utils/ClientMetadata$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$AppInstallReceiver;-><init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_e} :catch_97

    move-result-object v5

    const/4 v4, 0x0

    :try_start_10
    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_13} :catch_5b
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_97

    move-result-object v0

    move-object v4, v0

    :goto_15
    :try_start_15
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/e;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".log"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18d

    instance-of v7, v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v7, :cond_18d

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :goto_47
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/base/common/utils/e;->b(Ljava/lang/String;)Z

    move-object v3, v0

    :cond_4f
    if-nez v3, :cond_5e

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$AppInstallReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v4, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    return-void

    :catch_5b
    move-exception v0

    move-object v4, v3

    goto :goto_15

    :cond_5e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_190

    :cond_6a
    :goto_6a
    packed-switch v0, :pswitch_data_1a2

    goto :goto_5a

    :pswitch_6e
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$AppInstallReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v0, p1, v3, v4}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/pm/PackageInfo;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b89\u88c5\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_96} :catch_97

    goto :goto_5a

    :catch_97
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_5a

    :sswitch_a0
    :try_start_a0
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    move v0, v1

    goto :goto_6a

    :sswitch_aa
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    move v0, v2

    goto :goto_6a

    :sswitch_b4
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    const/4 v0, 0x2

    goto :goto_6a

    :sswitch_be
    const-string v1, "android.intent.action.INSTALL_FAILURE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    const/4 v0, 0x3

    goto :goto_6a

    :pswitch_c8
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$AppInstallReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v0, p1, v3, v4}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/pm/PackageInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u66ff\u6362\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5a

    :cond_f3
    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5378\u8f7d\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5a

    :pswitch_118
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$AppInstallReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {v0, p1, v3, v4}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/content/pm/PackageInfo;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u66ff\u6362\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5a

    :pswitch_142
    sget-object v0, Lcom/sigmob/sdk/base/common/Constants;->IS_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_154

    const-string v0, "\u5b89\u88c5\u5931\u8d25"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_154
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$AppInstallReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->w:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_INSTALL_FAIL:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v2

    const-string v5, "System"

    invoke-static {v0, v3, v1, v2, v5}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$AppInstallReceiver;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->w:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_INSTALL_FAIL:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/SigmobError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",System"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v1, v4, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    :try_end_18b
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_18b} :catch_97

    goto/16 :goto_5a

    :cond_18d
    move-object v0, v3

    goto/16 :goto_47

    :sswitch_data_190
    .sparse-switch
        -0x5e8660bf -> :sswitch_be
        -0x304ed112 -> :sswitch_b4
        0x1f50b9c2 -> :sswitch_aa
        0x5c1076e2 -> :sswitch_a0
    .end sparse-switch

    :pswitch_data_1a2
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_c8
        :pswitch_118
        :pswitch_142
    .end packed-switch
.end method
