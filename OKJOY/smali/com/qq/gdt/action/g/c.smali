.class public Lcom/qq/gdt/action/g/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/g/c$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/List;JLjava/lang/String;ILjava/lang/String;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/a/a;",
            ">;J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/a/a;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "duration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "httpStatus"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "actionType"

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "actionTime"

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "uniqActionId"

    invoke-virtual {v0}, Lcom/qq/gdt/action/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "errorCode"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "errorMsg"

    invoke-virtual {v2, v0, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "requestCgi"

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/qq/gdt/action/f/a;->a()Lcom/qq/gdt/action/f/a;

    move-result-object v3

    if-nez p4, :cond_77

    const/16 v0, 0x3f0

    :goto_66
    invoke-virtual {v3, v0, v2}, Lcom/qq/gdt/action/f/a;->a(ILorg/json/JSONObject;)V
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_69} :catch_6a

    goto :goto_4

    :catch_6a
    move-exception v0

    const-string v1, "doDp3Report err"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_76
    return-void

    :cond_77
    const/16 v0, 0x3f1

    goto :goto_66
.end method

.method public static a(Ljava/util/List;Lcom/qq/gdt/action/g/c$a;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qq/gdt/action/a/a;",
            ">;",
            "Lcom/qq/gdt/action/g/c$a;",
            ")V"
        }
    .end annotation

    const/4 v8, -0x1

    invoke-static {p0}, Lcom/qq/gdt/action/h/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "No actions need to track."

    invoke-static {v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_11
    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0}, Lcom/qq/gdt/action/e;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "info"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "actions"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TrackService#track\n\u52a0\u5bc6\u524d\uff1a\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/qq/gdt/action/h/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/qq/gdt/action/e;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u52a0\u5bc6\u540e\uff1a\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/qq/gdt/action/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "v"

    const-string v7, "0.1"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "id"

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qq/gdt/action/f;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sign"

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6b63\u5f0f\u8bf7\u6c42\uff1a\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qq/gdt/action/h/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "hash_imei"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qq/gdt/action/g/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10a

    const-string v4, "https://a.gdt.qq.com/sdk"

    :goto_be
    invoke-static {}, Lcom/qq/gdt/action/d/b;->d()Lcom/qq/gdt/action/d/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/qq/gdt/action/d/e;->a(Ljava/lang/String;)Lcom/qq/gdt/action/d/d;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/d/e;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/e;->a([B)Lcom/qq/gdt/action/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/e;->b()Lcom/qq/gdt/action/d/c;

    move-result-object v7

    new-instance v0, Lcom/qq/gdt/action/g/c$1;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/qq/gdt/action/g/c$1;-><init>(Ljava/util/List;JLjava/lang/String;Lcom/qq/gdt/action/g/c$a;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/qq/gdt/action/d/c;->a(Lcom/qq/gdt/action/d/b/b;)V
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_e2} :catch_e4

    goto/16 :goto_c

    :catch_e4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5904\u7406\u884c\u4e3a\u6570\u636e\u8bf7\u6c42\u65f6\u53d1\u751f\u9519\u8bef\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v8, v0, v8}, Lcom/qq/gdt/action/g/c$a;->a(Ljava/util/List;ILjava/lang/String;I)V

    goto/16 :goto_c

    :cond_10a
    :try_start_10a
    const-string v4, "http://a.gdt.qq.com/sdk"
    :try_end_10c
    .catch Ljava/lang/Throwable; {:try_start_10a .. :try_end_10c} :catch_e4

    goto :goto_be
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/qq/gdt/action/h/t;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "a"

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method
