.class Lcom/bytedance/embedapplog/b/p;
.super Lcom/bytedance/embedapplog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/bytedance/embedapplog/b/h;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/h;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0, v0}, Lcom/bytedance/embedapplog/b/c;-><init>(ZZ)V

    .line 25
    iput-object p1, p0, Lcom/bytedance/embedapplog/b/p;->e:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    .line 27
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/bytedance/embedapplog/b/p;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/h;->T()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 33
    const-string v2, "package"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :goto_18
    :try_start_18
    iget-object v2, p0, Lcom/bytedance/embedapplog/b/p;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 44
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 46
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->K()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ed

    .line 47
    const-string v3, "app_version"

    iget-object v4, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/b/h;->K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :goto_3c
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->P()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_fb

    .line 53
    const-string v3, "app_version_minor"

    iget-object v4, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/b/h;->P()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    :goto_53
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->H()I

    move-result v3

    if-eqz v3, :cond_104

    .line 59
    const-string v3, "version_code"

    iget-object v4, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/b/h;->H()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    :goto_66
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->I()I

    move-result v3

    if-eqz v3, :cond_10b

    .line 65
    const-string v3, "update_version_code"

    iget-object v4, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v4}, Lcom/bytedance/embedapplog/b/h;->I()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    :goto_79
    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->J()I

    move-result v3

    if-eqz v3, :cond_112

    .line 71
    const-string v2, "manifest_version_code"

    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->J()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    :goto_8c
    iget-object v2, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/h;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a3

    .line 77
    const-string v2, "app_name"

    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    :cond_a3
    iget-object v2, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/h;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ba

    .line 80
    const-string v2, "tweaked_channel"

    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->L()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    :cond_ba
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_cf

    .line 84
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 85
    if-lez v1, :cond_cf

    .line 86
    const-string v2, "display_name"

    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->e:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_cf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_cf} :catch_f6

    .line 89
    :cond_cf
    const/4 v0, 0x1

    .line 92
    :goto_d0
    return v0

    .line 35
    :cond_d1
    sget-boolean v2, Lcom/bytedance/embedapplog/util/h;->b:Z

    if-eqz v2, :cond_db

    .line 36
    const-string v2, "has zijie pkg"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :cond_db
    const-string v2, "package"

    iget-object v3, p0, Lcom/bytedance/embedapplog/b/p;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/h;->T()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v2, "real_package_name"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_18

    .line 49
    :cond_ed
    :try_start_ed
    const-string v3, "app_version"

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ed .. :try_end_f4} :catch_f6

    goto/16 :goto_3c

    .line 90
    :catch_f6
    move-exception v1

    .line 91
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_d0

    .line 55
    :cond_fb
    :try_start_fb
    const-string v3, "app_version_minor"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_53

    .line 61
    :cond_104
    const-string v3, "version_code"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_66

    .line 67
    :cond_10b
    const-string v3, "update_version_code"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_79

    .line 73
    :cond_112
    const-string v3, "manifest_version_code"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_117
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fb .. :try_end_117} :catch_f6

    goto/16 :goto_8c
.end method
