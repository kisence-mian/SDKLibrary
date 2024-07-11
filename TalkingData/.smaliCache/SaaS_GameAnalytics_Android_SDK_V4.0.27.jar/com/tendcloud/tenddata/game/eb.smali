.class public Lcom/tendcloud/tenddata/game/eb;
.super Lcom/tendcloud/tenddata/game/ea;
.source "td"


# static fields
.field public static final a:Ljava/lang/String; = "TalkingData"

.field public static final c:Ljava/lang/String; = "SaaS"

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field private static j:Ljava/lang/String;

.field private static k:I


# instance fields
.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/tendcloud/tenddata/game/eb;->j:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/tendcloud/tenddata/game/eb;->k:I

    .line 38
    const/4 v0, 0x2

    sput v0, Lcom/tendcloud/tenddata/game/eb;->k:I

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 43
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ea;-><init>()V

    .line 19
    const-string v0, "Android"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/eb;->i:Ljava/lang/String;

    .line 44
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {p0, v2, v1}, Lcom/tendcloud/tenddata/game/eb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minorVersion"

    invoke-virtual {p0, v2, v1}, Lcom/tendcloud/tenddata/game/eb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "build"

    invoke-virtual {p0, v2, v1}, Lcom/tendcloud/tenddata/game/eb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    const-string v1, "866"

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 49
    :try_start_2e
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 50
    const-string v2, "jobNum"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/tendcloud/tenddata/game/eb;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_3c

    .line 55
    goto :goto_3d

    .line 51
    :catchall_3c
    move-exception v1

    .line 57
    :cond_3d
    :goto_3d
    const-string v1, "partner"

    const-string v2, "SaaS"

    invoke-virtual {p0, v1, v2}, Lcom/tendcloud/tenddata/game/eb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    const-string v1, "platform"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    const-string v0, "type"

    const-string v1, "TalkingData"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/eb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/tendcloud/tenddata/game/eb;->j:Ljava/lang/String;

    const-string v1, "framework"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    sget v0, Lcom/tendcloud/tenddata/game/eb;->k:I

    if-lez v0, :cond_64

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    :cond_64
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 74
    nop

    .line 75
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/eb;->b:Lorg/json/JSONObject;

    const-string v1, "features"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 76
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_1d

    .line 79
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/eb;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_17} :catch_18

    .line 82
    goto :goto_1d

    .line 80
    :catch_18
    move-exception v0

    .line 81
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    .line 85
    :goto_1d
    if-eqz v0, :cond_41

    .line 86
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 88
    :try_start_24
    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string p1, "version"

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string p1, "minorVersion"

    invoke-virtual {v2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_36} :catch_37

    .line 96
    goto :goto_3e

    .line 93
    :catch_37
    move-exception p1

    .line 94
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 95
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 97
    :goto_3e
    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/eb;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    :cond_41
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 70
    sget-object v0, Lcom/tendcloud/tenddata/game/eb;->j:Ljava/lang/String;

    return-object v0
.end method

.method public setFrameWork(Ljava/lang/String;)V
    .registers 2

    .line 67
    sput-object p1, Lcom/tendcloud/tenddata/game/eb;->j:Ljava/lang/String;

    .line 68
    return-void
.end method
