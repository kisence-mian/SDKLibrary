.class public final Lcom/anythink/core/b/g/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/b/g/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/g/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/anythink/core/c/c$b;)Lorg/json/JSONObject;
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-static {p0}, Lcom/anythink/core/a/a;->a(Landroid/content/Context;)Lcom/anythink/core/a/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/anythink/core/a/a;->a(I)Ljava/util/Map;

    move-result-object v4

    .line 86
    if-eqz v4, :cond_29

    .line 87
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/k;

    .line 88
    iget v6, v0, Lcom/anythink/core/b/c/k;->c:I

    add-int/2addr v3, v6

    .line 89
    iget v0, v0, Lcom/anythink/core/b/c/k;->d:I

    add-int/2addr v0, v1

    move v1, v0

    .line 90
    goto :goto_15

    :cond_29
    move v1, v2

    move v3, v2

    .line 93
    :cond_2b
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/k;

    .line 96
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 98
    :try_start_36
    const-string v5, "sr"

    const-string v6, "tp"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v5, "rid"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v5, "ads"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string v3, "ahs"

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string v3, "pds"

    if-eqz v0, :cond_6b

    iget v1, v0, Lcom/anythink/core/b/c/k;->c:I

    :goto_52
    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string v1, "phs"

    if-eqz v0, :cond_5b

    iget v2, v0, Lcom/anythink/core/b/c/k;->d:I

    :cond_5b
    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    const-string v0, "ap"

    .line 1782
    iget v1, p4, Lcom/anythink/core/c/c$b;->x:I

    .line 104
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    const-string v0, "tpl"

    invoke-virtual {v4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_6a} :catch_6d

    .line 110
    :goto_6a
    return-object v4

    :cond_6b
    move v1, v2

    .line 102
    goto :goto_52

    :catch_6d
    move-exception v0

    goto :goto_6a
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 31
    const-string v1, "^[A-Za-z0-9]+$"

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_34

    .line 33
    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 34
    if-eqz v1, :cond_19

    .line 35
    const/4 v0, 0x1

    .line 43
    :goto_18
    return v0

    .line 37
    :cond_19
    sget-object v1, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invail Scenario("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):Scenario contains some characters that are not in the [A-Za-z0-9]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 42
    :cond_34
    sget-object v1, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invail Scenario("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):Scenario\'length isn\'t 14"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_50

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_5e

    .line 68
    const-string v0, ""

    :goto_d
    return-object v0

    .line 56
    :pswitch_e
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :pswitch_18
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :pswitch_22
    const-string v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :pswitch_2c
    const-string v1, "3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :pswitch_36
    const-string v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    goto :goto_8

    .line 58
    :pswitch_40
    const-string v0, "Native"

    goto :goto_d

    .line 60
    :pswitch_43
    const-string v0, "RewardedVideo"

    goto :goto_d

    .line 62
    :pswitch_46
    const-string v0, "Banner"

    goto :goto_d

    .line 64
    :pswitch_49
    const-string v0, "Interstitial"

    goto :goto_d

    .line 66
    :pswitch_4c
    const-string v0, "Splash"

    goto :goto_d

    .line 56
    nop

    :pswitch_data_50
    .packed-switch 0x30
        :pswitch_e
        :pswitch_18
        :pswitch_22
        :pswitch_2c
        :pswitch_36
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_4c
    .end packed-switch
.end method
