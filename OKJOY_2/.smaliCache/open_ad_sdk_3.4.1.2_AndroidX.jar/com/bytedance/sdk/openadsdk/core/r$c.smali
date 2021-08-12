.class public Lcom/bytedance/sdk/openadsdk/core/r$c;
.super Ljava/lang/Object;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Lcom/bytedance/sdk/openadsdk/core/d/s;


# direct methods
.method private constructor <init>(IZLcom/bytedance/sdk/openadsdk/core/d/s;)V
    .registers 4

    .line 1326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1327
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r$c;->a:I

    .line 1328
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/r$c;->b:Z

    .line 1329
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/r$c;->c:Lcom/bytedance/sdk/openadsdk/core/d/s;

    .line 1330
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r$c;
    .registers 5

    .line 1333
    if-nez p0, :cond_4

    .line 1334
    const/4 p0, 0x0

    return-object p0

    .line 1336
    :cond_4
    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1337
    const-string v1, "verify"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1338
    const-string v2, "data"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 1339
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/s;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/d/s;-><init>()V

    .line 1341
    if-eqz p0, :cond_47

    .line 1342
    :try_start_1d
    const-string v3, "reason"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/s;->a(I)V

    .line 1343
    const-string v3, "corp_type"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/s;->b(I)V

    .line 1344
    const-string v3, "reward_amount"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/s;->c(I)V

    .line 1345
    const-string v3, "reward_name"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/d/s;->a(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_1d .. :try_end_41} :catchall_42

    goto :goto_47

    .line 1347
    :catchall_42
    move-exception p0

    .line 1348
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_48

    .line 1349
    :cond_47
    :goto_47
    nop

    .line 1350
    :goto_48
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/r$c;

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r$c;-><init>(IZLcom/bytedance/sdk/openadsdk/core/d/s;)V

    return-object p0
.end method
