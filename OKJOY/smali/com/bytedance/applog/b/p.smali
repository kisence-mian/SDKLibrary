.class Lcom/bytedance/applog/b/p;
.super Lcom/bytedance/applog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/bytedance/applog/b/h;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/applog/b/h;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0, v0}, Lcom/bytedance/applog/b/c;-><init>(ZZ)V

    .line 26
    iput-object p1, p0, Lcom/bytedance/applog/b/p;->e:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    .line 28
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lcom/bytedance/applog/b/p;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/applog/b/h;->Q()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 34
    const-string v2, "package"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :goto_18
    :try_start_18
    iget-object v2, p0, Lcom/bytedance/applog/b/p;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 45
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 47
    iget-object v3, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/applog/b/h;->K()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ed

    .line 48
    const-string v3, "app_version"

    iget-object v4, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v4}, Lcom/bytedance/applog/b/h;->K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    :goto_3c
    iget-object v3, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/applog/b/h;->P()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_fb

    .line 54
    const-string v3, "app_version_minor"

    iget-object v4, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v4}, Lcom/bytedance/applog/b/h;->P()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :goto_53
    iget-object v3, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/applog/b/h;->H()I

    move-result v3

    if-eqz v3, :cond_104

    .line 60
    const-string v3, "version_code"

    iget-object v4, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v4}, Lcom/bytedance/applog/b/h;->H()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    :goto_66
    iget-object v3, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/applog/b/h;->I()I

    move-result v3

    if-eqz v3, :cond_10b

    .line 66
    const-string v3, "update_version_code"

    iget-object v4, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v4}, Lcom/bytedance/applog/b/h;->I()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    :goto_79
    iget-object v3, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/applog/b/h;->J()I

    move-result v3

    if-eqz v3, :cond_112

    .line 72
    const-string v2, "manifest_version_code"

    iget-object v3, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/applog/b/h;->J()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    :goto_8c
    iget-object v2, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/applog/b/h;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a3

    .line 78
    const-string v2, "app_name"

    iget-object v3, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/applog/b/h;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    :cond_a3
    iget-object v2, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/applog/b/h;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ba

    .line 81
    const-string v2, "tweaked_channel"

    iget-object v3, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/applog/b/h;->L()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :cond_ba
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_cf

    .line 85
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 86
    if-lez v1, :cond_cf

    .line 87
    const-string v2, "display_name"

    iget-object v3, p0, Lcom/bytedance/applog/b/p;->e:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_cf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_cf} :catch_f6

    .line 90
    :cond_cf
    const/4 v0, 0x1

    .line 93
    :goto_d0
    return v0

    .line 36
    :cond_d1
    sget-boolean v2, Lcom/bytedance/applog/util/i;->b:Z

    if-eqz v2, :cond_db

    .line 37
    const-string v2, "has zijie pkg"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :cond_db
    const-string v2, "package"

    iget-object v3, p0, Lcom/bytedance/applog/b/p;->f:Lcom/bytedance/applog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/applog/b/h;->Q()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v2, "real_package_name"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_18

    .line 50
    :cond_ed
    :try_start_ed
    const-string v3, "app_version"

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ed .. :try_end_f4} :catch_f6

    goto/16 :goto_3c

    .line 91
    :catch_f6
    move-exception v1

    .line 92
    invoke-static {v1}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_d0

    .line 56
    :cond_fb
    :try_start_fb
    const-string v3, "app_version_minor"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_53

    .line 62
    :cond_104
    const-string v3, "version_code"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_66

    .line 68
    :cond_10b
    const-string v3, "update_version_code"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_79

    .line 74
    :cond_112
    const-string v3, "manifest_version_code"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_117
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fb .. :try_end_117} :catch_f6

    goto/16 :goto_8c
.end method
