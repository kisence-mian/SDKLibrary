.class public Lcom/kwad/sdk/utils/u;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    const-string p0, "PackageUtil"

    const-string v0, "cannot save package, download apk is not exists."

    invoke-static {p0, v0}, Lcom/kwad/sdk/core/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_14
    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1f

    return-object v1

    :cond_1f
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2f

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_2f
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "PackageUtil"

    if-nez v0, :cond_3f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_3f

    :cond_f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_20

    const-string p0, "cannot save package, download apk is not exists."

    :goto_1c
    invoke-static {v1, p0}, Lcom/kwad/sdk/core/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_2b

    return-void

    :cond_2b
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Lcom/kwad/sdk/utils/aa;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :try_start_32
    invoke-static {v0}, Lcom/kwad/sdk/utils/c;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/kwad/sdk/utils/aa;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :goto_3e
    return-void

    :cond_3f
    :goto_3f
    const-string p0, "cannot save package, has no download apk info."

    goto :goto_1c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_d

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    :catch_d
    move-exception p0

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .registers 10

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-static {v0, p0}, Lcom/kwad/sdk/utils/aa;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, p0}, Lcom/kwad/sdk/utils/aa;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "PackageUtil"

    if-nez v5, :cond_8b

    const-wide/16 v7, 0x0

    cmp-long v5, v2, v7

    if-gtz v5, :cond_23

    goto :goto_8b

    :cond_23
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_2b
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_2f} :catch_86

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_83

    if-eqz v0, :cond_83

    iget-object p0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_83

    iget-object p0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_46

    goto :goto_83

    :cond_46
    new-instance p0, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5b

    const-string p0, "cannot judge package, insgtalled apk is not exists."

    :goto_57
    invoke-static {v6, p0}, Lcom/kwad/sdk/core/d/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5b
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v0, v2, v7

    const/4 v2, 0x1

    if-eqz v0, :cond_65

    return v2

    :cond_65
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string p0, "cannot judge package, cannot calculate md5 of download file."

    goto :goto_57

    :cond_6e
    invoke-static {p0}, Lcom/kwad/sdk/utils/c;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string p0, "cannot judge package, cannot calculate md5 of installed file."

    goto :goto_57

    :cond_7b
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_82

    const/4 v2, 0x2

    :cond_82
    return v2

    :cond_83
    :goto_83
    const-string p0, "cannot judge package, cannot get installed apk info."

    goto :goto_57

    :catch_86
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    return v1

    :cond_8b
    :goto_8b
    const-string p0, "cannot judge package, has no download apk info."

    goto :goto_57
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_1e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1e

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_14

    return-void

    :cond_14
    const/high16 v0, 0x14200000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_1d

    goto :goto_1e

    :catch_1d
    move-exception p0

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    if-eqz p0, :cond_70

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_70

    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".adFileProvider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/kwad/sdk/api/core/fragment/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_44

    :cond_40
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_44
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_57

    :cond_6b
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception p0

    :cond_70
    :goto_70
    return-void
.end method
