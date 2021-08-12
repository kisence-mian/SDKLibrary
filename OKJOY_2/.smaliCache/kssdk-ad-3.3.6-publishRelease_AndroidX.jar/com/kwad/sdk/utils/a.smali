.class public Lcom/kwad/sdk/utils/a;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "APPInstalledChangerReceiver"

    if-eqz v0, :cond_5a

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_99

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    return-void

    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_32

    return-void

    :cond_32
    invoke-static {v0, p1}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->a(Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/report/e;->a(Lorg/json/JSONObject;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "installed packageName :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_26 .. :try_end_54} :catchall_55

    goto :goto_99

    :catchall_55
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    goto :goto_99

    :cond_5a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_99

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_99

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;

    invoke-direct {p2}, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;-><init>()V

    iput-object p1, p2, Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/kwad/sdk/utils/InstalledAppInfoManager;->a(Lcom/kwad/sdk/utils/InstalledAppInfoManager$AppPackageInfo;)Lorg/json/JSONObject;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/kwad/sdk/core/report/e;->a(Lorg/json/JSONObject;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uninstalled packageName :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    :goto_99
    return-void
.end method
