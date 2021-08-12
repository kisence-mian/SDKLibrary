.class public Lcom/ss/android/socialbase/appdownloader/a/c;
.super Lcom/ss/android/socialbase/appdownloader/a/a;
.source "CustomJumpDevicePlan.java"


# instance fields
.field private final d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/a/a;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    .line 24
    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    .line 25
    return-void
.end method

.method private static a(Landroid/content/Intent;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 6

    .line 60
    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-ne v0, v1, :cond_2e

    if-nez p0, :cond_11

    goto :goto_2e

    .line 63
    :cond_11
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_2d

    .line 65
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_2c

    .line 69
    invoke-static {p1, v1, v2, p0}, Lcom/ss/android/socialbase/appdownloader/a/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 71
    :cond_2c
    goto :goto_17

    .line 73
    :cond_2d
    return-void

    .line 61
    :cond_2e
    :goto_2e
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 6

    .line 76
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_68

    :cond_7
    goto :goto_3a

    :sswitch_8
    const-string v0, "boolean"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_3b

    :sswitch_12
    const-string v0, "long"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x2

    goto :goto_3b

    :sswitch_1c
    const-string v0, "int"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    goto :goto_3b

    :sswitch_26
    const-string v0, "string"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x4

    goto :goto_3b

    :sswitch_30
    const-string v0, "double"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x3

    goto :goto_3b

    :goto_3a
    const/4 p2, -0x1

    :goto_3b
    packed-switch p2, :pswitch_data_7e

    goto :goto_67

    .line 90
    :pswitch_3f
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_67

    .line 87
    :pswitch_47
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 88
    goto :goto_67

    .line 84
    :pswitch_4f
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 85
    goto :goto_67

    .line 81
    :pswitch_57
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    goto :goto_67

    .line 78
    :pswitch_5f
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    nop

    .line 93
    :goto_67
    return-void

    :sswitch_data_68
    .sparse-switch
        -0x4f08842f -> :sswitch_30
        -0x352a9fef -> :sswitch_26
        0x197ef -> :sswitch_1c
        0x32c67c -> :sswitch_12
        0x3db6c28 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_57
        :pswitch_4f
        :pswitch_47
        :pswitch_3f
    .end packed-switch
.end method


# virtual methods
.method public b()Landroid/content/Intent;
    .registers 10

    .line 30
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    const-string v2, "category"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    const-string v3, "flags"

    const v4, 0x50008000

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 33
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    const-string v4, "path_extra_key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    const-string v5, "path_data_key"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    iget-object v5, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    const-string v6, "extra"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 36
    iget-object v6, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->d:Lorg/json/JSONObject;

    const-string v7, "extra_type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_43
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 42
    invoke-virtual {v7, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    :cond_51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 46
    const/4 v0, 0x1

    :try_start_58
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->c:Ljava/lang/String;

    aput-object v8, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_6a
    .catchall {:try_start_58 .. :try_end_6a} :catchall_6b

    .line 48
    goto :goto_6c

    .line 47
    :catchall_6b
    move-exception v0

    .line 50
    :cond_6c
    :goto_6c
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 52
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/a/c;->c:Ljava/lang/String;

    invoke-virtual {v7, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    :cond_7a
    invoke-static {v7, v5, v6}, Lcom/ss/android/socialbase/appdownloader/a/c;->a(Landroid/content/Intent;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 55
    return-object v7
.end method
