.class public Lcom/ss/android/socialbase/appdownloader/view/a;
.super Landroid/app/Fragment;
.source "NotificationPermissionRequestFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static d()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    return-object v0
.end method

.method private e()Landroid/content/Context;
    .registers 3

    .prologue
    .line 74
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    .line 75
    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 76
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    :cond_1e
    return-object v0
.end method

.method private f()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/a;->e()Landroid/content/Context;

    move-result-object v1

    .line 91
    if-nez v1, :cond_8

    .line 92
    const/4 v0, 0x0

    .line 102
    :goto_7
    return-object v0

    .line 93
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 95
    const-string v3, "package"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v3, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v3, "app_package"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 100
    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const-string v2, "app_uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/16 v2, 0x3e8

    .line 21
    :try_start_2
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/a;->f()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/appdownloader/view/a;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_b} :catch_c

    .line 33
    :goto_b
    return-void

    .line 22
    :catch_c
    move-exception v0

    .line 24
    :try_start_d
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/a;->b()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/appdownloader/view/a;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_17

    goto :goto_b

    .line 25
    :catch_17
    move-exception v0

    .line 27
    :try_start_18
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/a;->c()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/appdownloader/view/a;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_21} :catch_22

    goto :goto_b

    .line 28
    :catch_22
    move-exception v0

    .line 29
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/view/a;->d()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/ss/android/socialbase/appdownloader/view/a;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_b
.end method

.method public b()Landroid/content/Intent;
    .registers 6

    .prologue
    const/16 v4, 0x19

    .line 36
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/a;->e()Landroid/content/Context;

    move-result-object v0

    .line 37
    if-nez v0, :cond_a

    .line 38
    const/4 v0, 0x0

    .line 70
    :goto_9
    return-object v0

    .line 40
    :cond_a
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 41
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 42
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 43
    const-string v3, "oppo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.color.safecenter"

    const-string v3, "com.color.safecenter.permission.PermissionManagerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_9

    .line 49
    :cond_3b
    const-string v3, "vivo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    const-string v2, "packagename"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_5e

    .line 53
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.vivo.permissionmanager"

    const-string v3, "com.vivo.permissionmanager.activity.SoftPermissionDetailActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_9

    .line 55
    :cond_5e
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.iqoo.secure"

    const-string v3, "com.iqoo.secure.safeguard.SoftPermissionDetailActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_9

    .line 58
    :cond_6b
    const-string v3, "meizu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 59
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_91

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.meizu.safe.security.SHOW_APPSEC"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.meizu.safe"

    const-string v3, "com.meizu.safe.security.AppSecActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_9

    .line 68
    :cond_91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_9
.end method

.method public c()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/a;->e()Landroid/content/Context;

    move-result-object v0

    .line 82
    if-nez v0, :cond_8

    .line 83
    const/4 v0, 0x0

    .line 86
    :goto_7
    return-object v0

    .line 84
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_7
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/j;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 116
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/j;->a(Z)V

    .line 120
    :goto_d
    return-void

    .line 118
    :cond_e
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/j;->a(Z)V

    goto :goto_d
.end method
