.class public final Lcom/mintegral/msdk/videocommon/b/c;
.super Ljava/lang/Object;
.source "Cbprule.java"


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/mintegral/msdk/videocommon/b/c;->a:I

    .line 20
    iput-object p2, p0, Lcom/mintegral/msdk/videocommon/b/c;->b:Ljava/util/List;

    .line 21
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/mintegral/msdk/videocommon/b/c;
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 40
    new-instance v1, Lcom/mintegral/msdk/videocommon/b/c;

    new-array v2, v7, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/mintegral/msdk/videocommon/b/c;-><init>(ILjava/util/List;)V

    .line 41
    if-nez p0, :cond_2b

    .line 60
    :goto_2a
    return-object v1

    .line 45
    :cond_2b
    :try_start_2b
    const-string v2, "type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    const-string v4, "value"

    .line 48
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 49
    if-eqz v4, :cond_58

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_58

    .line 50
    :goto_44
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_58

    .line 51
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    .line 52
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 55
    :cond_58
    new-instance v0, Lcom/mintegral/msdk/videocommon/b/c;

    invoke-direct {v0, v2, v3}, Lcom/mintegral/msdk/videocommon/b/c;-><init>(ILjava/util/List;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5d} :catch_5f

    :goto_5d
    move-object v1, v0

    .line 60
    goto :goto_2a

    .line 58
    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_5d
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/mintegral/msdk/videocommon/b/c;->a:I

    return v0
.end method

.method public final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/b/c;->b:Ljava/util/List;

    return-object v0
.end method
