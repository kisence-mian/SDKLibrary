.class public Lcom/bytedance/tea/crash/upload/CrashUploadService;
.super Landroid/app/IntentService;
.source "CrashUploadService.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    const-string v0, "CrashUploadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/tea/crash/c;)Lcom/bytedance/tea/crash/upload/f;
    .registers 8

    .line 78
    if-nez p4, :cond_a

    .line 79
    new-instance p1, Lcom/bytedance/tea/crash/upload/f;

    const/16 p2, 0xc9

    invoke-direct {p1, p2}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    return-object p1

    .line 83
    :cond_a
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    const-string v1, "upload_scene"

    const-string v2, "new_process"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_1a} :catch_1b

    .line 88
    goto :goto_1f

    .line 86
    :catch_1b
    move-exception v0

    .line 87
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 90
    :goto_1f
    sget-object v0, Lcom/bytedance/tea/crash/c;->c:Lcom/bytedance/tea/crash/c;

    if-ne p4, v0, :cond_28

    .line 91
    invoke-static {p1, p2, p3}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p1

    return-object p1

    .line 93
    :cond_28
    sget-object p3, Lcom/bytedance/tea/crash/c;->a:Lcom/bytedance/tea/crash/c;

    if-ne p4, p3, :cond_31

    .line 94
    invoke-static {p1, p2}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p1

    return-object p1

    .line 96
    :cond_31
    invoke-static {}, Lcom/bytedance/tea/crash/upload/b;->a()Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .line 101
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 102
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 103
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 8

    .line 42
    if-nez p1, :cond_3

    .line 43
    return-void

    .line 45
    :cond_3
    const/4 v0, 0x0

    .line 46
    const-string v1, "crash_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 47
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bytedance/tea/crash/c;

    .line 49
    :cond_12
    const-string v1, "upload_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string v2, "crash_json_value"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    const-string v3, "crash_info_file_path"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    const-string v4, "crash_dump_file_path"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {}, Lcom/bytedance/tea/crash/b/a;->a()Lcom/bytedance/tea/crash/b/a;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bytedance/tea/crash/upload/CrashUploadService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/tea/crash/b/a;->a(Landroid/content/Context;)V

    .line 55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8e

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8e

    .line 56
    invoke-static {}, Lcom/bytedance/tea/crash/b/a;->a()Lcom/bytedance/tea/crash/b/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bytedance/tea/crash/b/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_8e

    .line 60
    :cond_4c
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/bytedance/tea/crash/upload/CrashUploadService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/tea/crash/c;)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/bytedance/tea/crash/upload/f;->a()Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 63
    sget-object p1, Lcom/bytedance/tea/crash/c;->c:Lcom/bytedance/tea/crash/c;

    if-ne v0, p1, :cond_76

    .line 64
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/io/File;Z)Z

    move-result p1

    if-nez p1, :cond_8d

    .line 65
    invoke-static {}, Lcom/bytedance/tea/crash/b/a;->a()Lcom/bytedance/tea/crash/b/a;

    move-result-object p1

    invoke-static {v3}, Lcom/bytedance/tea/crash/b/a/a;->a(Ljava/lang/String;)Lcom/bytedance/tea/crash/b/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/b/a;->a(Lcom/bytedance/tea/crash/b/a/a;)V

    goto :goto_8d

    .line 67
    :cond_76
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8d

    .line 68
    invoke-static {v3}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8d

    .line 69
    invoke-static {}, Lcom/bytedance/tea/crash/b/a;->a()Lcom/bytedance/tea/crash/b/a;

    move-result-object p1

    invoke-static {v3}, Lcom/bytedance/tea/crash/b/a/a;->a(Ljava/lang/String;)Lcom/bytedance/tea/crash/b/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/b/a;->a(Lcom/bytedance/tea/crash/b/a/a;)V

    .line 75
    :cond_8d
    :goto_8d
    return-void

    .line 57
    :cond_8e
    :goto_8e
    return-void
.end method
