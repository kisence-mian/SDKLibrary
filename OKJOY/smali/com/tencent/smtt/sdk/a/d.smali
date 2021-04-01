.class public Lcom/tencent/smtt/sdk/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/a/d$1;,
        Lcom/tencent/smtt/sdk/a/d$b;,
        Lcom/tencent/smtt/sdk/a/d$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/smtt/sdk/WebView;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/smtt/sdk/WebView;",
            ")I"
        }
    .end annotation

    const/16 v8, 0x21

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v3, 0x4

    const/4 v1, 0x2

    if-nez p0, :cond_a

    const/4 v0, 0x3

    :goto_9
    return v0

    :cond_a
    invoke-static {p1}, Lcom/tencent/smtt/sdk/a/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1f
    :try_start_1f
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_27

    move-result-object v4

    if-nez v4, :cond_2a

    move v0, v1

    goto :goto_9

    :catch_27
    move-exception v0

    move v0, v1

    goto :goto_9

    :cond_2a
    invoke-static {p0}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/a/d$a;

    move-result-object v2

    iget v0, v2, Lcom/tencent/smtt/sdk/a/d$a;->a:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_35

    move v0, v3

    goto :goto_9

    :cond_35
    iget v0, v2, Lcom/tencent/smtt/sdk/a/d$a;->a:I

    if-ne v0, v1, :cond_3f

    iget v0, v2, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    if-ge v0, v8, :cond_3f

    const/4 v0, 0x5

    goto :goto_9

    :cond_3f
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/tencent/smtt/sdk/a/d$a;->a:I

    if-ne v5, v1, :cond_c1

    iget v1, v2, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    if-lt v1, v8, :cond_88

    iget v1, v2, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    const/16 v5, 0x27

    if-gt v1, v5, :cond_88

    const-string v1, "com.tencent.mtt"

    const-string v2, "com.tencent.mtt.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, v0

    :goto_5c
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz p2, :cond_138

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_138

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6b
    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_138

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6b

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6b

    :cond_88
    iget v1, v2, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    const/16 v5, 0x28

    if-lt v1, v5, :cond_9d

    iget v1, v2, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    const/16 v5, 0x2d

    if-gt v1, v5, :cond_9d

    const-string v1, "com.tencent.mtt"

    const-string v2, "com.tencent.mtt.SplashActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, v0

    goto :goto_5c

    :cond_9d
    iget v1, v2, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    const/16 v2, 0x2e

    if-lt v1, v2, :cond_176

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.QQBrowser.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/smtt/sdk/a/d$b;

    move-result-object v1

    if-eqz v1, :cond_bf

    iget-object v2, v1, Lcom/tencent/smtt/sdk/a/d$b;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_bf

    iget-object v2, v1, Lcom/tencent/smtt/sdk/a/d$b;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/tencent/smtt/sdk/a/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_bf
    move-object v2, v0

    goto :goto_5c

    :cond_c1
    iget v5, v2, Lcom/tencent/smtt/sdk/a/d$a;->a:I

    if-ne v5, v6, :cond_e0

    iget v5, v2, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    if-ne v5, v6, :cond_d2

    const-string v1, "com.tencent.qbx5"

    const-string v2, "com.tencent.qbx5.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, v0

    goto :goto_5c

    :cond_d2
    iget v2, v2, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    if-ne v2, v1, :cond_176

    const-string v1, "com.tencent.qbx5"

    const-string v2, "com.tencent.qbx5.SplashActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, v0

    goto/16 :goto_5c

    :cond_e0
    iget v1, v2, Lcom/tencent/smtt/sdk/a/d$a;->a:I

    if-nez v1, :cond_119

    iget v1, v2, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    if-lt v1, v3, :cond_f6

    iget v1, v2, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    if-gt v1, v7, :cond_f6

    const-string v1, "com.tencent.qbx"

    const-string v2, "com.tencent.qbx.SplashActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, v0

    goto/16 :goto_5c

    :cond_f6
    iget v1, v2, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    if-le v1, v7, :cond_176

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.QQBrowser.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/smtt/sdk/a/d$b;

    move-result-object v1

    if-eqz v1, :cond_116

    iget-object v2, v1, Lcom/tencent/smtt/sdk/a/d$b;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_116

    iget-object v2, v1, Lcom/tencent/smtt/sdk/a/d$b;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/tencent/smtt/sdk/a/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_116
    move-object v2, v0

    goto/16 :goto_5c

    :cond_119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.QQBrowser.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/smtt/sdk/a/d$b;

    move-result-object v1

    if-eqz v1, :cond_135

    iget-object v2, v1, Lcom/tencent/smtt/sdk/a/d$b;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_135

    iget-object v2, v1, Lcom/tencent/smtt/sdk/a/d$b;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/tencent/smtt/sdk/a/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_135
    move-object v2, v0

    goto/16 :goto_5c

    :cond_138
    :try_start_138
    const-string v0, "loginType"

    invoke-static {p0}, Lcom/tencent/smtt/sdk/a/d;->d(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p3, :cond_16c

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p3}, Lcom/tencent/smtt/sdk/WebView;->getScrollX()I

    move-result v1

    invoke-virtual {p3}, Lcom/tencent/smtt/sdk/WebView;->getScrollY()I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    const-string v1, "AnchorPoint"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p3}, Lcom/tencent/smtt/sdk/WebView;->getContentWidth()I

    move-result v1

    invoke-virtual {p3}, Lcom/tencent/smtt/sdk/WebView;->getContentHeight()I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    const-string v1, "ContentSize"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_16c
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_16f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_138 .. :try_end_16f} :catch_172

    const/4 v0, 0x0

    goto/16 :goto_9

    :catch_172
    move-exception v0

    move v0, v3

    goto/16 :goto_9

    :cond_176
    move-object v2, v0

    goto/16 :goto_5c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/tencent/smtt/sdk/WebView;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/WebView;",
            ")I"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_6e

    const-string v2, "com.tencent.mtt"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_6e

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_17} :catch_66

    const v2, 0x92ba8

    if-le v0, v2, :cond_6e

    const/4 v0, 0x1

    :goto_1d
    move v2, v0

    :goto_1e
    :try_start_1e
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_6c

    move-result-object v0

    if-eqz v2, :cond_27

    move-object p1, v0

    :cond_27
    move v1, v2

    :goto_28
    if-eqz v1, :cond_69

    const-string v0, ",encoded=1"

    :goto_2c
    const-string v1, "mttbrowser://url="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",product=TBS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",packagename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",version=4.3.0.1020"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p4}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/smtt/sdk/WebView;)I

    move-result v0

    return v0

    :catch_66
    move-exception v0

    move v2, v1

    goto :goto_1e

    :cond_69
    const-string v0, ""

    goto :goto_2c

    :catch_6c
    move-exception v0

    goto :goto_28

    :cond_6e
    move v0, v1

    goto :goto_1d
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/a/d$a;
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "x5_proxy_setting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "qb_install_status"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Lcom/tencent/smtt/sdk/a/d$a;

    invoke-direct {v1}, Lcom/tencent/smtt/sdk/a/d$a;-><init>()V

    if-eqz v0, :cond_1a

    move-object v0, v1

    :goto_19
    return-object v0

    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_11a

    move-result-object v2

    const/4 v0, 0x0

    :try_start_1f
    const-string v3, "com.tencent.mtt"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v3, 0x2

    iput v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->a:I

    const-string v3, "com.tencent.mtt"

    iput-object v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->e:Ljava/lang/String;

    const-string v3, "ADRQB_"

    iput-object v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_6c

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v4, 0x668a0

    if-le v3, v4, :cond_6c

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/tencent/smtt/sdk/a/d$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v5, "\\."

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->c:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v4, "\\."

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->d:Ljava/lang/String;
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_69} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_69} :catch_11a

    move-object v0, v1

    goto :goto_19

    :catch_6b
    move-exception v3

    :cond_6c
    :try_start_6c
    const-string v3, "com.tencent.qbx"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v3, 0x0

    iput v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->a:I

    const-string v3, "com.tencent.qbx"

    iput-object v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->e:Ljava/lang/String;

    const-string v3, "ADRQBX_"

    iput-object v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->c:Ljava/lang/String;
    :try_end_7e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6c .. :try_end_7e} :catch_b2
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7e} :catch_11a

    :cond_7e
    :goto_7e
    if-eqz v0, :cond_af

    :try_start_80
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, v1, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v4, "\\."

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/smtt/sdk/a/d$a;->c:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "\\."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/smtt/sdk/a/d$a;->d:Ljava/lang/String;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_af} :catch_11a

    :cond_af
    :goto_af
    move-object v0, v1

    goto/16 :goto_19

    :catch_b2
    move-exception v3

    :try_start_b3
    const-string v3, "com.tencent.qbx5"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v3, 0x1

    iput v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->a:I

    const-string v3, "com.tencent.qbx5"

    iput-object v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->e:Ljava/lang/String;

    const-string v3, "ADRQBX5_"

    iput-object v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->c:Ljava/lang/String;
    :try_end_c5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b3 .. :try_end_c5} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_c5} :catch_11a

    goto :goto_7e

    :catch_c6
    move-exception v3

    :try_start_c7
    const-string v3, "com.tencent.mtt"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v3, "com.tencent.mtt"

    iput-object v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->e:Ljava/lang/String;

    const/4 v3, 0x2

    iput v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->a:I

    const-string v3, "ADRQB_"

    iput-object v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->c:Ljava/lang/String;
    :try_end_d9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c7 .. :try_end_d9} :catch_da
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d9} :catch_11a

    goto :goto_7e

    :catch_da
    move-exception v3

    :try_start_db
    const-string v3, "com.tencent.mtt.x86"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v3, "com.tencent.mtt.x86"

    iput-object v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->e:Ljava/lang/String;

    const/4 v3, 0x2

    iput v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->a:I

    const-string v3, "ADRQB_"

    iput-object v3, v1, Lcom/tencent/smtt/sdk/a/d$a;->c:Ljava/lang/String;
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_ed} :catch_ee

    goto :goto_7e

    :catch_ee
    move-exception v3

    :try_start_ef
    const-string v3, "http://mdc.html5.qq.com/mh?channel_id=50079&u="

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/smtt/sdk/a/d$b;

    move-result-object v3

    if-eqz v3, :cond_7e

    iget-object v4, v3, Lcom/tencent/smtt/sdk/a/d$b;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7e

    iget-object v4, v3, Lcom/tencent/smtt/sdk/a/d$b;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v3, Lcom/tencent/smtt/sdk/a/d$b;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/smtt/sdk/a/d$a;->e:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v1, Lcom/tencent/smtt/sdk/a/d$a;->a:I

    const-string v2, "ADRQB_"

    iput-object v2, v1, Lcom/tencent/smtt/sdk/a/d$a;->c:Ljava/lang/String;
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_115} :catch_117

    goto/16 :goto_7e

    :catch_117
    move-exception v2

    goto/16 :goto_7e

    :catch_11a
    move-exception v0

    goto :goto_af
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/tencent/smtt/sdk/a/d$b;
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.QQBrowser.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1b

    :goto_1a
    return-object v0

    :cond_1b
    new-instance v1, Lcom/tencent/smtt/sdk/a/d$b;

    invoke-direct {v1, v0}, Lcom/tencent/smtt/sdk/a/d$b;-><init>(Lcom/tencent/smtt/sdk/a/d$1;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.tencent.mtt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4a

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/smtt/sdk/a/d$b;->a:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/smtt/sdk/a/d$b;->b:Ljava/lang/String;

    move-object v0, v1

    goto :goto_1a

    :cond_4a
    const-string v4, "com.tencent.qbx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v3, v1, Lcom/tencent/smtt/sdk/a/d$b;->a:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/smtt/sdk/a/d$b;->b:Ljava/lang/String;

    goto :goto_24

    :cond_5f
    move-object v0, v1

    goto :goto_1a
.end method

.method public static a(Landroid/content/Context;JJ)Z
    .registers 12

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/a/d$a;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_6
    iget-object v2, v3, Lcom/tencent/smtt/sdk/a/d$a;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_f} :catch_1d

    move-result-wide v4

    cmp-long v2, v4, p1

    if-ltz v2, :cond_15

    move v0, v1

    :cond_15
    :goto_15
    iget v2, v3, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    int-to-long v2, v2

    cmp-long v2, v2, p3

    if-ltz v2, :cond_22

    :goto_1c
    return v1

    :catch_1d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_15

    :cond_22
    move v1, v0

    goto :goto_1c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    const/16 v6, 0x18

    const/4 v2, 0x1

    :try_start_3
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.tencent.QQBrowser.action.sdk.document"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_38

    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_31} :catch_32

    goto :goto_16

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_37
    return v0

    :cond_38
    :try_start_38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "key_reader_sdk_id"

    const/4 v1, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "key_reader_sdk_type"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez p2, :cond_95

    const-string v0, "key_reader_sdk_path"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4f
    :goto_4f
    const-string v0, "key_reader_sdk_format"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_66

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v6, :cond_66

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_66

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_66
    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "mtt/"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "loginType"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/smtt/sdk/a/d;->d(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p5, :cond_90

    const-string v0, "key_reader_sdk_extrals"

    invoke-virtual {v3, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_90
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    goto :goto_37

    :cond_95
    if-ne p2, v2, :cond_4f

    const-string v0, "key_reader_sdk_url"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_9c} :catch_32

    goto :goto_4f
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "video/*"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_3f

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_23

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_23

    :cond_3f
    :try_start_3f
    const-string v0, "loginType"

    invoke-static {p0}, Lcom/tencent/smtt/sdk/a/d;->d(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.mtt"

    const-string v5, "com.tencent.mtt.browser.video.H5VideoThrdcallActivity"

    invoke-direct {v0, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_57} :catch_63

    move v0, v3

    :goto_58
    if-nez v0, :cond_61

    const/4 v0, 0x0

    :try_start_5b
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_61} :catch_66

    :cond_61
    move v0, v3

    :goto_62
    return v0

    :catch_63
    move-exception v0

    move v0, v2

    goto :goto_58

    :catch_66
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v2

    goto :goto_62
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v2, :cond_28

    if-lez v3, :cond_28

    if-gt v2, v3, :cond_9

    :cond_28
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_9
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/a/d$a;

    move-result-object v0

    iget v0, v0, Lcom/tencent/smtt/sdk/a/d$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 9

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/a/d$a;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_6
    iget-object v2, v3, Lcom/tencent/smtt/sdk/a/d$a;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_f} :catch_20

    move-result-wide v4

    const-wide/32 v6, 0x5b935c

    cmp-long v2, v4, v6

    if-ltz v2, :cond_18

    move v0, v1

    :cond_18
    :goto_18
    iget v2, v3, Lcom/tencent/smtt/sdk/a/d$a;->b:I

    const v3, 0x92d9c

    if-lt v2, v3, :cond_25

    :goto_1f
    return v1

    :catch_20
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_18

    :cond_25
    move v1, v0

    goto :goto_1f
.end method

.method private static d(Landroid/content/Context;)I
    .registers 4

    const/16 v0, 0x1a

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v0, 0xd

    :cond_12
    :goto_12
    return v0

    :cond_13
    const-string v2, "com.qzone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/16 v0, 0xe

    goto :goto_12

    :cond_1e
    const-string v2, "com.tencent.WBlog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/16 v0, 0xf

    goto :goto_12

    :cond_29
    const-string v2, "com.tencent.mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v0, 0x18

    goto :goto_12
.end method
