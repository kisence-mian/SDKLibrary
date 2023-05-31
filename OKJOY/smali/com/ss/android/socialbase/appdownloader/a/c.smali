.class public Lcom/ss/android/socialbase/appdownloader/a/c;
.super Lcom/ss/android/socialbase/appdownloader/a/a;
.source "CustomJumpDevicePlan.java"


# instance fields
.field private final c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->c:Lorg/json/JSONObject;

    .line 23
    return-void
.end method

.method private static a(Landroid/content/Intent;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 6
    .param p0    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-ne v0, v1, :cond_10

    if-nez p0, :cond_11

    .line 71
    :cond_10
    return-void

    .line 61
    :cond_11
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_10

    .line 63
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_17

    .line 67
    invoke-static {p1, v0, v2, p0}, Lcom/ss/android/socialbase/appdownloader/a/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_17
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 74
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_66

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_7c

    .line 91
    :goto_b
    return-void

    .line 74
    :sswitch_c
    const-string v1, "int"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_16
    const-string v1, "boolean"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_20
    const-string v1, "long"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_2a
    const-string v1, "double"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_34
    const-string v1, "string"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    goto :goto_8

    .line 76
    :pswitch_3e
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_b

    .line 79
    :pswitch_46
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_b

    .line 82
    :pswitch_4e
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_b

    .line 85
    :pswitch_56
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_b

    .line 88
    :pswitch_5e
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b

    .line 74
    :sswitch_data_66
    .sparse-switch
        -0x4f08842f -> :sswitch_2a
        -0x352a9fef -> :sswitch_34
        0x197ef -> :sswitch_c
        0x32c67c -> :sswitch_20
        0x3db6c28 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_46
        :pswitch_4e
        :pswitch_56
        :pswitch_5e
    .end packed-switch
.end method


# virtual methods
.method public b()Landroid/content/Intent;
    .registers 10

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->c:Lorg/json/JSONObject;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->c:Lorg/json/JSONObject;

    const-string v2, "category"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->c:Lorg/json/JSONObject;

    const-string v3, "flags"

    const v4, 0x50008000

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 31
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->c:Lorg/json/JSONObject;

    const-string v4, "path_extra_key"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->c:Lorg/json/JSONObject;

    const-string v5, "path_data_key"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 33
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->c:Lorg/json/JSONObject;

    const-string v6, "extra"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 34
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->c:Lorg/json/JSONObject;

    const-string v7, "extra_type"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 36
    const/4 v0, 0x0

    .line 53
    :goto_42
    return-object v0

    .line 38
    :cond_43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 40
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    :cond_51
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 44
    const/4 v1, 0x1

    :try_start_58
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->b:Ljava/lang/String;

    aput-object v8, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_6a} :catch_7c

    .line 48
    :cond_6a
    :goto_6a
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 49
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 50
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    :cond_78
    invoke-static {v0, v6, v7}, Lcom/ss/android/socialbase/appdownloader/a/c;->a(Landroid/content/Intent;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_42

    .line 45
    :catch_7c
    move-exception v1

    goto :goto_6a
.end method
