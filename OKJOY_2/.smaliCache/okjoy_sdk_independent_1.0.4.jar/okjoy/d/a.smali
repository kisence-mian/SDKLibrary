.class public Lokjoy/d/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Lokjoy/d/a;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokjoy/d/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lokjoy/d/a;
    .registers 2

    sget-object v0, Lokjoy/d/a;->b:Lokjoy/d/a;

    if-nez v0, :cond_b

    new-instance v0, Lokjoy/d/a;

    invoke-direct {v0, p0}, Lokjoy/d/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lokjoy/d/a;->b:Lokjoy/d/a;

    :cond_b
    sget-object p0, Lokjoy/d/a;->b:Lokjoy/d/a;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    iget-object v0, p0, Lokjoy/d/a;->a:Landroid/content/Context;

    if-nez v0, :cond_e

    return-object v1

    .line 1
    :cond_e
    sget-object v2, Lokjoy/a/g;->b:Ljava/util/Map;

    const/4 v3, 0x0

    if-nez v2, :cond_5e

    .line 2
    :try_start_13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_1e

    :cond_1a
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1d

    goto :goto_1f

    :catchall_1d
    move-exception v0

    :goto_1e
    move-object v0, v3

    .line 3
    :goto_1f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_60

    :cond_26
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    :try_start_2b
    invoke-static {v2}, Lokjoy/a/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_32

    goto :goto_5c

    :cond_32
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_55} :catch_58

    goto :goto_40

    :cond_56
    move-object v3, v4

    goto :goto_5c

    :catch_58
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 5
    :goto_5c
    sput-object v3, Lokjoy/a/g;->b:Ljava/util/Map;

    :cond_5e
    sget-object v3, Lokjoy/a/g;->b:Ljava/util/Map;

    :goto_60
    if-nez v3, :cond_63

    return-object v1

    .line 6
    :cond_63
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_6a

    return-object v1

    :cond_6a
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7f

    move-object v2, v0

    goto :goto_81

    :cond_7f
    const-string v2, "noValue"

    :goto_81
    aput-object v2, v1, p1

    const-string p1, "param %s=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "xqx-test"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
