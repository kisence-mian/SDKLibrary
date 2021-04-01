.class public Lcom/bytedance/tea/crash/upload/CrashUploadService;
.super Landroid/app/IntentService;
.source "CrashUploadService.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    const-string v0, "CrashUploadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/tea/crash/c;)Lcom/bytedance/tea/crash/upload/f;
    .registers 8

    .prologue
    .line 78
    if-nez p4, :cond_a

    .line 79
    new-instance v0, Lcom/bytedance/tea/crash/upload/f;

    const/16 v1, 0xc9

    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/upload/f;-><init>(I)V

    .line 96
    :goto_9
    return-object v0

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
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_19} :catch_23

    move-result-object p2

    .line 90
    :goto_1a
    sget-object v0, Lcom/bytedance/tea/crash/c;->c:Lcom/bytedance/tea/crash/c;

    if-ne p4, v0, :cond_28

    .line 91
    invoke-static {p1, p2, p3}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;

    move-result-object v0

    goto :goto_9

    .line 86
    :catch_23
    move-exception v0

    .line 87
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1a

    .line 93
    :cond_28
    sget-object v0, Lcom/bytedance/tea/crash/c;->a:Lcom/bytedance/tea/crash/c;

    if-ne p4, v0, :cond_31

    .line 94
    invoke-static {p1, p2}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;

    move-result-object v0

    goto :goto_9

    .line 96
    :cond_31
    invoke-static {}, Lcom/bytedance/tea/crash/upload/b;->a()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;

    move-result-object v0

    goto :goto_9
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 102
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 103
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 9
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    if-nez p1, :cond_3

    .line 75
    :cond_2
    :goto_2
    return-void

    .line 45
    :cond_3
    const/4 v0, 0x0

    .line 46
    const-string v1, "crash_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 47
    const-string v0, "crash_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bytedance/tea/crash/c;

    .line 49
    :cond_14
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

    move-result-object v4

    .line 53
    invoke-static {}, Lcom/bytedance/tea/crash/b/a;->a()Lcom/bytedance/tea/crash/b/a;

    move-result-object v5

    invoke-virtual {p0}, Lcom/bytedance/tea/crash/upload/CrashUploadService;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bytedance/tea/crash/b/a;->a(Landroid/content/Context;)V

    .line 55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 56
    invoke-static {}, Lcom/bytedance/tea/crash/b/a;->a()Lcom/bytedance/tea/crash/b/a;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/bytedance/tea/crash/b/a;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 60
    invoke-direct {p0, v1, v2, v4, v0}, Lcom/bytedance/tea/crash/upload/CrashUploadService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/tea/crash/c;)Lcom/bytedance/tea/crash/upload/f;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/bytedance/tea/crash/upload/f;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    sget-object v1, Lcom/bytedance/tea/crash/c;->c:Lcom/bytedance/tea/crash/c;

    if-ne v0, v1, :cond_77

    .line 64
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/io/File;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    invoke-static {}, Lcom/bytedance/tea/crash/b/a;->a()Lcom/bytedance/tea/crash/b/a;

    move-result-object v0

    invoke-static {v3}, Lcom/bytedance/tea/crash/b/a/a;->a(Ljava/lang/String;)Lcom/bytedance/tea/crash/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/b/a;->a(Lcom/bytedance/tea/crash/b/a/a;)V

    goto :goto_2

    .line 67
    :cond_77
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    invoke-static {v3}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    invoke-static {}, Lcom/bytedance/tea/crash/b/a;->a()Lcom/bytedance/tea/crash/b/a;

    move-result-object v0

    invoke-static {v3}, Lcom/bytedance/tea/crash/b/a/a;->a(Ljava/lang/String;)Lcom/bytedance/tea/crash/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/b/a;->a(Lcom/bytedance/tea/crash/b/a/a;)V

    goto/16 :goto_2
.end method
