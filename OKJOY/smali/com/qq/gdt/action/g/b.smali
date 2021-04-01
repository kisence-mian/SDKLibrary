.class public Lcom/qq/gdt/action/g/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()Lcom/qq/gdt/action/d/f;
    .registers 5

    const/4 v4, 0x0

    :try_start_1
    invoke-static {}, Lcom/qq/gdt/action/g/b;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/f;->f()Ljavax/crypto/SecretKey;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LaunchService#launch \u52a0\u5bc6\u524d\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qq/gdt/action/h/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/qq/gdt/action/g/b;->a(Lorg/json/JSONObject;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os"

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdkv"

    invoke-static {}, Lcom/qq/gdt/action/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdkvc"

    invoke-static {}, Lcom/qq/gdt/action/g;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchService#launch \u6b63\u5f0f\u8bf7\u6c42\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/h/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/qq/gdt/action/d/b;->d()Lcom/qq/gdt/action/d/e;

    move-result-object v0

    const-string v2, "http://a.gdt.qq.com/getSdkConf"

    invoke-virtual {v0, v2}, Lcom/qq/gdt/action/d/e;->a(Ljava/lang/String;)Lcom/qq/gdt/action/d/d;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/d/e;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/e;->a([B)Lcom/qq/gdt/action/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/e;->b()Lcom/qq/gdt/action/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/c;->a()Lcom/qq/gdt/action/d/b/i;

    move-result-object v1

    new-instance v0, Lcom/qq/gdt/action/d/f;

    const/4 v2, -0x1

    const-string v3, "Unknown message"

    invoke-direct {v0, v2, v3}, Lcom/qq/gdt/action/d/f;-><init>(ILjava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a2} :catch_105

    if-eqz v1, :cond_f1

    :try_start_a4
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/qq/gdt/action/d/b/i;->e()Lcom/qq/gdt/action/d/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/d/b/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    const/4 v3, -0x3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/f;->a(I)Lcom/qq/gdt/action/d/f;

    const-string v1, "message"

    const-string v3, "Deserialize message error"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/f;->a(Ljava/lang/String;)Lcom/qq/gdt/action/d/f;

    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f1

    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "conf"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f1

    const-string v2, "conf"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qq/gdt/action/b;->a(Lorg/json/JSONObject;)Z
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_f1} :catch_118
    .catch Lorg/json/JSONException; {:try_start_a4 .. :try_end_f1} :catch_f2
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_f1} :catch_105

    :cond_f1
    :goto_f1
    return-object v0

    :catch_f2
    move-exception v1

    :goto_f3
    :try_start_f3
    const-string v1, "Deserialize service response error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/f;->a(I)Lcom/qq/gdt/action/d/f;

    const-string v1, "Deserialize service response error"

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/f;->a(Ljava/lang/String;)Lcom/qq/gdt/action/d/f;
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_f3 .. :try_end_104} :catch_105

    goto :goto_f1

    :catch_105
    move-exception v0

    const-string v1, "LaunchService launch(%s) exception"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "http://a.gdt.qq.com/getSdkConf"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_f1

    :catch_118
    move-exception v1

    goto :goto_f3
.end method

.method public static a(Lorg/json/JSONObject;Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v6, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qq/gdt/action/h/a;->b(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/h/r;->b([B)[B

    move-result-object v1

    const/16 v2, 0x30

    new-array v2, v2, [B

    invoke-static {v1, v4, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    const/16 v3, 0x20

    invoke-static {v1, v4, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcom/qq/gdt/action/h/j;->a([B)[B

    move-result-object v1

    new-array v2, v5, [B

    fill-array-data v2, :array_46

    array-length v3, v0

    add-int/lit16 v3, v3, 0x82

    new-array v3, v3, [B

    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x80

    invoke-static {v1, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x82

    array-length v2, v0

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lcom/qq/gdt/action/h/h;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_46
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method private static b()Lorg/json/JSONObject;
    .registers 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "did"

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/f;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdkv"

    invoke-static {}, Lcom/qq/gdt/action/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "asid"

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "hash_imei"

    invoke-static {}, Lcom/qq/gdt/action/h/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "hash_android_id"

    invoke-static {}, Lcom/qq/gdt/action/h/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "hash_mac"

    invoke-static {}, Lcom/qq/gdt/action/h/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/v;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    const-string v0, "conf_version"

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_63} :catch_64

    :goto_63
    return-object v1

    :catch_64
    move-exception v0

    const-string v2, "Json Exception while build init req"

    invoke-static {v2, v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_63
.end method
