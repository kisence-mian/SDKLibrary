.class public Lcom/anythink/pd/ExHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/api/IExHandler;


# static fields
.field public static final JSON_REQUEST_IMEI:Ljava/lang/String; = "imei"

.field public static final JSON_REQUEST_MAC:Ljava/lang/String; = "mac"

.field public static final JSON_REQUEST_OAID:Ljava/lang/String; = "oaid"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillRequestData(Lorg/json/JSONObject;Lcom/anythink/core/c/a;)V
    .registers 10

    .line 36
    const-string v0, ""

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/anythink/core/c/a;->o()Ljava/lang/String;

    move-result-object p2

    goto :goto_a

    :cond_9
    move-object p2, v0

    .line 37
    :goto_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "oaid"

    const-string v3, "imei"

    const-string v4, "mac"

    if-eqz v1, :cond_36

    .line 39
    :try_start_16
    invoke-static {}, Lcom/anythink/china/b/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/anythink/china/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-static {}, Lcom/anythink/china/b/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_33} :catch_34

    .line 44
    return-void

    .line 42
    :catch_34
    move-exception p1

    .line 44
    return-void

    .line 46
    :cond_36
    nop

    .line 47
    nop

    .line 49
    const/4 v1, 0x1

    :try_start_39
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    const-string p2, "m"

    invoke-virtual {v5, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_4d

    .line 51
    :try_start_44
    const-string v6, "i"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_4b

    .line 54
    goto :goto_50

    .line 52
    :catch_4b
    move-exception v5

    goto :goto_4f

    :catch_4d
    move-exception p2

    move p2, v1

    :goto_4f
    move v5, v1

    .line 57
    :goto_50
    if-ne p2, v1, :cond_59

    :try_start_52
    invoke-static {}, Lcom/anythink/china/b/a;->a()Ljava/lang/String;

    move-result-object p2

    goto :goto_5a

    .line 60
    :catch_57
    move-exception p1

    goto :goto_76

    .line 57
    :cond_59
    move-object p2, v0

    :goto_5a
    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    if-ne v5, v1, :cond_6b

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/anythink/china/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_6b
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    invoke-static {}, Lcom/anythink/china/b/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_75} :catch_57

    .line 62
    return-void

    .line 64
    :goto_76
    return-void
.end method

.method public handleOfferClick(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 17

    .line 68
    move-object v3, p2

    iget-object v0, v3, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_21

    .line 69
    invoke-virtual {p3}, Lcom/anythink/core/common/d/h;->g()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/anythink/pd/ExHandler$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/anythink/pd/ExHandler$1;-><init>(Lcom/anythink/pd/ExHandler;Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    move-object v1, p1

    invoke-static {p1, v8, v9}, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    .line 76
    :cond_21
    move-object v1, p1

    invoke-static {p1}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public initDeviceInfo(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-static {p1}, Lcom/anythink/china/b/a;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method
