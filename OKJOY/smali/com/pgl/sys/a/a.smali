.class public Lcom/pgl/sys/a/a;
.super Ljava/lang/Object;


# static fields
.field static a:I

.field static b:Z

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field private static e:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/pgl/sys/a/a;->e:J

    const/16 v0, 0x1f8

    sput v0, Lcom/pgl/sys/a/a;->a:I

    const-string v0, ""

    sput-object v0, Lcom/pgl/sys/a/a;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/pgl/sys/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "os"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    const-string v2, "1.0.3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-boolean v1, Lcom/pgl/sys/a/a;->b:Z

    if-eqz v1, :cond_33

    const-string v1, "token_id"

    sget-object v2, Lcom/pgl/sys/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1e
    const-string v1, "code"

    sget v2, Lcom/pgl/sys/a/a;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_32
    return-object v0

    :cond_33
    const-string v1, "token_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_1e

    :catch_3b
    move-exception v0

    const-string v0, "Call onEvent Error"

    invoke-static {v0}, Lcom/pgl/a/b/d;->a(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_32
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/pgl/sys/a/a/a;)V
    .registers 6

    const/16 v2, 0x66

    sget v0, Lcom/pgl/sys/a/a;->a:I

    if-ne v0, v2, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget v0, Lcom/pgl/sys/a/a;->a:I

    const/16 v1, 0xca

    if-eq v0, v1, :cond_6

    sget v0, Lcom/pgl/sys/a/a;->a:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pgl/sys/a/a;->e:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/pgl/sys/a/a;->b:Z

    sput-object p1, Lcom/pgl/sys/a/a;->c:Ljava/lang/String;

    sput v2, Lcom/pgl/sys/a/a;->a:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pgl/sys/a/b;

    invoke-direct {v1, p0, p2}, Lcom/pgl/sys/a/b;-><init>(Landroid/content/Context;Lcom/pgl/sys/a/a/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "CZL-3"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_6
.end method
