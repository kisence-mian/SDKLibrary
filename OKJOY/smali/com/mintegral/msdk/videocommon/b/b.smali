.class public final Lcom/mintegral/msdk/videocommon/b/b;
.super Ljava/lang/Object;
.source "AdUnitInfo.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/mintegral/msdk/videocommon/b/a;


# direct methods
.method public constructor <init>(IILcom/mintegral/msdk/videocommon/b/a;)V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/mintegral/msdk/videocommon/b/b;->a:I

    .line 26
    iput p2, p0, Lcom/mintegral/msdk/videocommon/b/b;->b:I

    .line 27
    iput-object p3, p0, Lcom/mintegral/msdk/videocommon/b/b;->c:Lcom/mintegral/msdk/videocommon/b/a;

    .line 28
    return-void
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/videocommon/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 55
    if-eqz p0, :cond_42

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_42

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    const/4 v2, 0x0

    move v3, v2

    :goto_10
    :try_start_10
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_43

    .line 59
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 60
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 61
    const-string v5, "timeout"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 62
    const-string v6, "params"

    .line 63
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 65
    if-eqz v2, :cond_44

    .line 66
    invoke-static {v2}, Lcom/mintegral/msdk/videocommon/b/a;->a(Lorg/json/JSONObject;)Lcom/mintegral/msdk/videocommon/b/a;

    move-result-object v2

    .line 68
    :goto_32
    new-instance v6, Lcom/mintegral/msdk/videocommon/b/b;

    invoke-direct {v6, v4, v5, v2}, Lcom/mintegral/msdk/videocommon/b/b;-><init>(IILcom/mintegral/msdk/videocommon/b/a;)V

    .line 70
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3a} :catch_3e

    .line 58
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_10

    .line 74
    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_42
    move-object v0, v1

    .line 77
    :cond_43
    return-object v0

    :cond_44
    move-object v2, v1

    goto :goto_32
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/mintegral/msdk/videocommon/b/b;->a:I

    return v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/mintegral/msdk/videocommon/b/b;->b:I

    return v0
.end method
