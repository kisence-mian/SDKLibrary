.class Lcom/bytedance/embedapplog/ai;
.super Lcom/bytedance/embedapplog/u;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/bytedance/embedapplog/z;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)V
    .registers 4

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/bytedance/embedapplog/u;-><init>(ZZ)V

    .line 25
    iput-object p1, p0, Lcom/bytedance/embedapplog/ai;->e:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    .line 27
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 8

    .line 31
    iget-object v0, p0, Lcom/bytedance/embedapplog/ai;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/z;->Q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "package"

    if-eqz v1, :cond_19

    .line 33
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_30

    .line 35
    :cond_19
    sget-boolean v1, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v1, :cond_22

    .line 36
    const-string v1, "has zijie pkg"

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :cond_22
    iget-object v1, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/z;->Q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v1, "real_package_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :goto_30
    nop

    .line 45
    const/4 v1, 0x0

    :try_start_32
    iget-object v3, p0, Lcom/bytedance/embedapplog/ai;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3d

    .line 47
    goto :goto_3e

    .line 46
    :catchall_3d
    move-exception v0

    .line 48
    :goto_3e
    if-eqz v2, :cond_46

    :try_start_40
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_47

    .line 94
    :catchall_43
    move-exception p1

    goto/16 :goto_111

    .line 48
    :cond_46
    move v0, v1

    .line 50
    :goto_47
    iget-object v3, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/z;->H()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_51
    .catchall {:try_start_40 .. :try_end_51} :catchall_43

    const-string v4, ""

    const-string v5, "app_version"

    if-nez v3, :cond_61

    .line 51
    :try_start_57
    iget-object v3, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/z;->H()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6a

    .line 53
    :cond_61
    if-eqz v2, :cond_66

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_67

    :cond_66
    move-object v3, v4

    :goto_67
    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :goto_6a
    iget-object v3, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/z;->M()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_74
    .catchall {:try_start_57 .. :try_end_74} :catchall_43

    const-string v5, "app_version_minor"

    if-nez v3, :cond_82

    .line 57
    :try_start_78
    iget-object v3, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/z;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_85

    .line 59
    :cond_82
    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    :goto_85
    iget-object v3, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/z;->E()I

    move-result v3
    :try_end_8b
    .catchall {:try_start_78 .. :try_end_8b} :catchall_43

    const-string v4, "version_code"

    if-eqz v3, :cond_99

    .line 63
    :try_start_8f
    iget-object v3, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/z;->E()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_9c

    .line 65
    :cond_99
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    :goto_9c
    iget-object v3, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/z;->F()I

    move-result v3
    :try_end_a2
    .catchall {:try_start_8f .. :try_end_a2} :catchall_43

    const-string v4, "update_version_code"

    if-eqz v3, :cond_b0

    .line 69
    :try_start_a6
    iget-object v3, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/z;->F()I

    move-result v3

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_b3

    .line 71
    :cond_b0
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    :goto_b3
    iget-object v3, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/z;->G()I

    move-result v3
    :try_end_b9
    .catchall {:try_start_a6 .. :try_end_b9} :catchall_43

    const-string v4, "manifest_version_code"

    if-eqz v3, :cond_c7

    .line 75
    :try_start_bd
    iget-object v0, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->G()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_ca

    .line 77
    :cond_c7
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    :goto_ca
    iget-object v0, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e1

    .line 81
    const-string v0, "app_name"

    iget-object v3, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/z;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    :cond_e1
    iget-object v0, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f8

    .line 84
    const-string v0, "tweaked_channel"

    iget-object v3, p0, Lcom/bytedance/embedapplog/ai;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/z;->I()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_f8
    if-eqz v2, :cond_10f

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_10f

    .line 88
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 89
    if-lez v0, :cond_10f

    .line 90
    const-string v2, "display_name"

    iget-object v3, p0, Lcom/bytedance/embedapplog/ai;->e:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10f
    .catchall {:try_start_bd .. :try_end_10f} :catchall_43

    .line 93
    :cond_10f
    const/4 p1, 0x1

    return p1

    .line 95
    :goto_111
    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 96
    return v1
.end method
