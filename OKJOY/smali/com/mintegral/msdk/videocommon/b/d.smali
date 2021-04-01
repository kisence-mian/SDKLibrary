.class public final Lcom/mintegral/msdk/videocommon/b/d;
.super Ljava/lang/Object;
.source "Reward.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/b/d;->a:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/mintegral/msdk/videocommon/b/d;->b:I

    .line 24
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/b/d;
    .registers 5

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    .line 51
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->b()Lcom/mintegral/msdk/videocommon/e/a;

    move-result-object v0

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 53
    invoke-static {}, Lcom/mintegral/msdk/videocommon/b/d;->c()Lcom/mintegral/msdk/videocommon/b/d;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_2c

    move-result-object v0

    .line 59
    :goto_12
    if-nez v0, :cond_18

    .line 60
    :try_start_14
    invoke-static {}, Lcom/mintegral/msdk/videocommon/b/d;->c()Lcom/mintegral/msdk/videocommon/b/d;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_34

    move-result-object v0

    .line 65
    :cond_18
    :goto_18
    return-object v0

    .line 55
    :cond_19
    if-eqz v0, :cond_36

    :try_start_1b
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/a;->m()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 56
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/a;->m()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/b/d;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2b} :catch_2c

    goto :goto_12

    .line 63
    :catch_2c
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    :catch_34
    move-exception v1

    goto :goto_30

    :cond_36
    move-object v0, v1

    goto :goto_12
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/b/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    if-eqz p0, :cond_39

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_39

    .line 71
    :try_start_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 73
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 74
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    const-string v4, "amount"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 76
    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    new-instance v5, Lcom/mintegral/msdk/videocommon/b/d;

    invoke-direct {v5, v3, v4}, Lcom/mintegral/msdk/videocommon/b/d;-><init>(Ljava/lang/String;I)V

    .line 78
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_32} :catch_35

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 82
    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    :cond_39
    const/4 v0, 0x0

    :cond_3a
    return-object v0
.end method

.method private static c()Lcom/mintegral/msdk/videocommon/b/d;
    .registers 3

    .prologue
    .line 43
    new-instance v0, Lcom/mintegral/msdk/videocommon/b/d;

    const-string v1, "Virtual Item"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/videocommon/b/d;-><init>(Ljava/lang/String;I)V

    .line 44
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/mintegral/msdk/videocommon/b/d;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reward{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mintegral/msdk/videocommon/b/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
