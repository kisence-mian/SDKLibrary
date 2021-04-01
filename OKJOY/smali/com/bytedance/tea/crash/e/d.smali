.class public final Lcom/bytedance/tea/crash/e/d;
.super Ljava/lang/Object;
.source "CrashFileCollector.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/bytedance/tea/crash/e/d;->a:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/tea/crash/c;
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 112
    if-nez p2, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 126
    :cond_a
    :goto_a
    return-object v0

    .line 115
    :cond_b
    const-string v1, "launch_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 116
    sget-object v0, Lcom/bytedance/tea/crash/c;->a:Lcom/bytedance/tea/crash/c;

    goto :goto_a

    .line 117
    :cond_16
    const-string v1, "anr_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 118
    sget-object v0, Lcom/bytedance/tea/crash/c;->d:Lcom/bytedance/tea/crash/c;

    goto :goto_a

    .line 119
    :cond_21
    const-string v1, "java_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 120
    const-string v1, "is_dart"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_34

    .line 121
    sget-object v0, Lcom/bytedance/tea/crash/c;->g:Lcom/bytedance/tea/crash/c;

    goto :goto_a

    .line 122
    :cond_34
    const-string v1, "isJava"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 123
    sget-object v0, Lcom/bytedance/tea/crash/c;->b:Lcom/bytedance/tea/crash/c;

    goto :goto_a
.end method

.method private a()V
    .registers 7

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/d;->a:Landroid/content/Context;

    const-string v1, "npth"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    const-string v1, "history_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 59
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_29

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    :cond_28
    :goto_28
    return-void

    .line 61
    :cond_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-lez v1, :cond_28

    .line 62
    iget-object v1, p0, Lcom/bytedance/tea/crash/e/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/h;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/io/File;)Z

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    goto :goto_28

    .line 65
    :catch_51
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 132
    const/4 v0, 0x0

    .line 145
    :goto_7
    return-object v0

    .line 135
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 136
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    goto :goto_7

    .line 138
    :cond_13
    new-instance v0, Lcom/bytedance/tea/crash/e/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/e/d$1;-><init>(Lcom/bytedance/tea/crash/e/d;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    goto :goto_7
.end method

.method private b()V
    .registers 9

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v1, ".npth"

    invoke-direct {p0, v0, v1}, Lcom/bytedance/tea/crash/e/d;->a(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 75
    if-nez v2, :cond_f

    .line 109
    :cond_e
    return-void

    .line 78
    :cond_f
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 80
    const/4 v0, 0x0

    :goto_17
    array-length v1, v2

    if-ge v0, v1, :cond_e

    const/16 v1, 0x32

    if-ge v0, v1, :cond_e

    .line 81
    aget-object v1, v2, v0

    .line 85
    :try_start_20
    invoke-static {}, Lcom/bytedance/tea/crash/b/a;->a()Lcom/bytedance/tea/crash/b/a;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/tea/crash/b/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 86
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/io/File;)Z

    .line 80
    :cond_31
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 89
    :cond_34
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/tea/crash/g/d;->c(Ljava/lang/String;)Lcom/bytedance/tea/crash/c/c;

    move-result-object v3

    .line 90
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Lcom/bytedance/tea/crash/c/c;->b()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 91
    invoke-virtual {v3}, Lcom/bytedance/tea/crash/c/c;->b()Lorg/json/JSONObject;

    move-result-object v4

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/bytedance/tea/crash/e/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/tea/crash/c;

    .line 94
    invoke-virtual {v3}, Lcom/bytedance/tea/crash/c/c;->b()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "upload_scene"

    const-string v7, "launch_scan"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    invoke-virtual {v3}, Lcom/bytedance/tea/crash/c/c;->a()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/bytedance/tea/crash/c/c;->c()Z

    move-result v3

    .line 95
    invoke-static {v5, v4, v3}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lcom/bytedance/tea/crash/upload/f;->a()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 98
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 100
    invoke-static {}, Lcom/bytedance/tea/crash/b/a;->a()Lcom/bytedance/tea/crash/b/a;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/tea/crash/b/a/a;->a(Ljava/lang/String;)Lcom/bytedance/tea/crash/b/a/a;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/bytedance/tea/crash/b/a;->a(Lcom/bytedance/tea/crash/b/a/a;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_85} :catch_86

    goto :goto_31

    .line 105
    :catch_86
    move-exception v1

    .line 106
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    goto :goto_31
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/bytedance/tea/crash/e/d;->a()V

    .line 50
    if-eqz p1, :cond_8

    .line 51
    invoke-direct {p0}, Lcom/bytedance/tea/crash/e/d;->b()V

    .line 53
    :cond_8
    return-void
.end method
