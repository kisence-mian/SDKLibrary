.class public Lcom/bytedance/tea/crash/upload/a;
.super Ljava/lang/Object;
.source "CrashUploadManager.java"


# static fields
.field private static volatile a:Lcom/bytedance/tea/crash/upload/a;


# instance fields
.field private volatile b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/bytedance/tea/crash/upload/a;->b:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static a()Lcom/bytedance/tea/crash/upload/a;
    .registers 2

    .line 35
    sget-object v0, Lcom/bytedance/tea/crash/upload/a;->a:Lcom/bytedance/tea/crash/upload/a;

    if-nez v0, :cond_f

    .line 36
    new-instance v0, Lcom/bytedance/tea/crash/upload/a;

    invoke-static {}, Lcom/bytedance/tea/crash/h;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/upload/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/a;->a:Lcom/bytedance/tea/crash/upload/a;

    .line 38
    :cond_f
    sget-object v0, Lcom/bytedance/tea/crash/upload/a;->a:Lcom/bytedance/tea/crash/upload/a;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 7

    .line 83
    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_a

    goto :goto_2c

    .line 88
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/bytedance/tea/crash/h;->a()Lcom/bytedance/tea/crash/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/e/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/bytedance/tea/crash/upload/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/tea/crash/g/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 90
    invoke-static {}, Lcom/bytedance/tea/crash/g/h;->a()Ljava/lang/String;

    move-result-object v3

    .line 91
    nop

    .line 92
    invoke-static {}, Lcom/bytedance/tea/crash/upload/b;->a()Z

    move-result v4

    .line 91
    invoke-static {v2, v3, v1, p1, v4}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_2a

    return-object p1

    .line 93
    :catchall_2a
    move-exception p1

    .line 95
    return-object v0

    .line 84
    :cond_2c
    :goto_2c
    return-object v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 6

    .line 104
    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_43

    .line 108
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/bytedance/tea/crash/h;->a()Lcom/bytedance/tea/crash/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/bytedance/tea/crash/upload/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 110
    invoke-static {}, Lcom/bytedance/tea/crash/g/h;->b()Ljava/lang/String;

    move-result-object v2

    .line 111
    nop

    .line 112
    invoke-static {}, Lcom/bytedance/tea/crash/upload/b;->b()Z

    move-result v3

    .line 111
    invoke-static {v1, v2, v0, p1, v3}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string v2, "upload_scene"

    const-string v3, "direct"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/tea/crash/upload/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/tea/crash/upload/f;->a()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 116
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/d;->a(Ljava/lang/String;)Z
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_41

    .line 119
    :cond_40
    goto :goto_42

    .line 118
    :catchall_41
    move-exception p1

    .line 120
    :goto_42
    return-void

    .line 105
    :cond_43
    :goto_43
    return-void
.end method
