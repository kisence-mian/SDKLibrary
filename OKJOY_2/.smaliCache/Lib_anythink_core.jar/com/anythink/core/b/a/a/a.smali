.class public final Lcom/anythink/core/b/a/a/a;
.super Lcom/anythink/core/b/a/a/b;


# instance fields
.field a:I

.field b:I

.field c:Lorg/json/JSONArray;

.field d:Ljava/lang/String;

.field e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/anythink/core/c/c$b;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c$b;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/anythink/core/b/a/a/b;-><init>(Ljava/lang/String;)V

    .line 24
    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/core/b/a/a/a;->a:I

    .line 25
    iput p1, p0, Lcom/anythink/core/b/a/a/a;->b:I

    .line 33
    iget-object v0, p2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/b/a/a/a;->d:Ljava/lang/String;

    .line 34
    iget v0, p2, Lcom/anythink/core/c/c$b;->b:I

    iput v0, p0, Lcom/anythink/core/b/a/a/a;->e:I

    .line 36
    nop

    .line 1049
    iget-object v0, p0, Lcom/anythink/core/b/a/a/a;->f:Ljava/lang/String;

    const-string v1, "2"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1050
    const/16 v0, 0x42

    iget v1, p0, Lcom/anythink/core/b/a/a/a;->e:I

    if-ne v0, v1, :cond_4d

    .line 1052
    :try_start_21
    new-instance v0, Lorg/json/JSONObject;

    iget-object p2, p2, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1053
    const-string p2, "size"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1054
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1055
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1056
    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/b/a/a/a;->a:I

    .line 1057
    const/4 p1, 0x1

    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/b/a/a/a;->b:I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4b} :catch_4c

    .line 1063
    :cond_4b
    goto :goto_4d

    .line 1059
    :catch_4c
    move-exception p1

    .line 39
    :cond_4d
    :goto_4d
    if-eqz p3, :cond_5f

    :try_start_4f
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5f

    .line 40
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/anythink/core/b/a/a/a;->c:Lorg/json/JSONArray;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5c} :catch_5d

    goto :goto_5f

    .line 42
    :catch_5d
    move-exception p1

    .line 46
    return-void

    .line 44
    :cond_5f
    :goto_5f
    return-void
.end method

.method private a(Lcom/anythink/core/c/c$b;)V
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/anythink/core/b/a/a/a;->f:Ljava/lang/String;

    const-string v1, "2"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 50
    const/16 v0, 0x42

    iget v1, p0, Lcom/anythink/core/b/a/a/a;->e:I

    if-ne v0, v1, :cond_3d

    .line 52
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    const-string p1, "size"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 55
    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 56
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/b/a/a/a;->a:I

    .line 57
    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/b/a/a/a;->b:I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3b} :catch_3c

    .line 63
    :cond_3b
    return-void

    .line 59
    :catch_3c
    move-exception p1

    .line 66
    :cond_3d
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/anythink/core/b/a/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 76
    const-string v0, ""

    return-object v0
.end method

.method public final c()Lorg/json/JSONObject;
    .registers 5

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 83
    :try_start_5
    const-string v1, "unit_id"

    iget-object v2, p0, Lcom/anythink/core/b/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "ad_format"

    iget-object v2, p0, Lcom/anythink/core/b/a/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v1, "nw_firm_id"

    iget v2, p0, Lcom/anythink/core/b/a/a/a;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    iget-object v1, p0, Lcom/anythink/core/b/a/a/a;->f:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_5e

    :cond_24
    :pswitch_24
    goto :goto_38

    :pswitch_25
    const-string v3, "4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v2, 0x1

    goto :goto_38

    :pswitch_2f
    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v2, 0x0

    :goto_38
    packed-switch v2, :pswitch_data_68

    goto :goto_52

    .line 95
    :pswitch_3c
    const-string v1, "get_offer"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_52

    .line 90
    :pswitch_43
    const-string v1, "ad_width"

    iget v2, p0, Lcom/anythink/core/b/a/a/a;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v1, "ad_height"

    iget v2, p0, Lcom/anythink/core/b/a/a/a;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    nop

    .line 99
    :goto_52
    iget-object v1, p0, Lcom/anythink/core/b/a/a/a;->c:Lorg/json/JSONArray;

    if-eqz v1, :cond_5b

    .line 100
    const-string v2, "ecpoffer"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5b} :catch_5c

    .line 104
    :cond_5b
    goto :goto_5d

    .line 102
    :catch_5c
    move-exception v1

    .line 105
    :goto_5d
    return-object v0

    :pswitch_data_5e
    .packed-switch 0x32
        :pswitch_2f
        :pswitch_24
        :pswitch_25
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3c
    .end packed-switch
.end method
