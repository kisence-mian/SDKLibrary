.class public Lcom/qq/gdt/action/g/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/json/JSONArray;ZLcom/qq/gdt/action/d/b/b;)Z
    .registers 7

    const/4 v1, 0x0

    if-eqz p0, :cond_17

    if-nez p1, :cond_19

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/b;->d()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_17
    move v0, v1

    :goto_18
    return v0

    :cond_19
    :try_start_19
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "bid"

    const v3, 0x98e896

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f;->b()Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "hashImei"

    invoke-static {}, Lcom/qq/gdt/action/h/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/qq/gdt/action/h/v;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    :cond_48
    const-string v0, "appPackageName"

    invoke-static {}, Lcom/qq/gdt/action/h/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdkVersion"

    invoke-static {}, Lcom/qq/gdt/action/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "osVersion"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "netType"

    invoke-static {}, Lcom/qq/gdt/action/h/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "osType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "actionSetId"

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qq/gdt/action/f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channelId"

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qq/gdt/action/f;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "user_unique_id"

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qq/gdt/action/f;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sessionId"

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qq/gdt/action/f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "body"

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dp3Service#report\uff1a\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qq/gdt/action/h/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/qq/gdt/action/d/b;->d()Lcom/qq/gdt/action/d/e;

    move-result-object v0

    const-string v3, "http://dp3.qq.com/stdlog"

    invoke-virtual {v0, v3}, Lcom/qq/gdt/action/d/e;->a(Ljava/lang/String;)Lcom/qq/gdt/action/d/d;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/d/e;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qq/gdt/action/d/e;->a([B)Lcom/qq/gdt/action/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/e;->b()Lcom/qq/gdt/action/d/c;

    move-result-object v0

    if-nez p2, :cond_f5

    new-instance p2, Lcom/qq/gdt/action/g/a$1;

    invoke-direct {p2}, Lcom/qq/gdt/action/g/a$1;-><init>()V

    :cond_f5
    invoke-virtual {v0, p2}, Lcom/qq/gdt/action/d/c;->b(Lcom/qq/gdt/action/d/b/b;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_f8} :catch_fb

    const/4 v0, 0x1

    goto/16 :goto_18

    :catch_fb
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5904\u7406Dp3\u8bf7\u6c42\u65f6\u53d1\u751f\u9519\u8bef\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto/16 :goto_18
.end method
