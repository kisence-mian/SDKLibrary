.class public abstract Lcom/tendcloud/tenddata/game/ea;
.super Ljava/lang/Object;
.source "td"


# instance fields
.field protected b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ea;->b:Lorg/json/JSONObject;

    .line 15
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 22
    if-nez p2, :cond_3

    .line 23
    return-void

    .line 25
    :cond_3
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/tendcloud/tenddata/game/ea;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 27
    return-void

    .line 29
    :cond_a
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ea;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    .line 32
    goto :goto_11

    .line 30
    :catchall_10
    move-exception p1

    .line 33
    :goto_11
    return-void
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 37
    if-nez p1, :cond_3

    .line 38
    return-void

    .line 40
    :cond_3
    :try_start_3
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 41
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    .line 45
    :cond_c
    goto :goto_e

    .line 43
    :catchall_d
    move-exception p1

    .line 46
    :goto_e
    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .registers 4

    .line 49
    instance-of v0, p1, Lorg/json/JSONObject;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 50
    check-cast p1, Lorg/json/JSONObject;

    .line 51
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-gtz p1, :cond_1b

    .line 52
    return v1

    .line 54
    :cond_e
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_1b

    .line 55
    check-cast p1, Lorg/json/JSONArray;

    .line 56
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-gtz p1, :cond_1c

    .line 57
    return v1

    .line 54
    :cond_1b
    nop

    .line 60
    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public a_()Ljava/lang/Object;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ea;->b:Lorg/json/JSONObject;

    return-object v0
.end method
