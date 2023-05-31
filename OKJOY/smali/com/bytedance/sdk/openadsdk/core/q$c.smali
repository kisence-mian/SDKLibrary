.class public Lcom/bytedance/sdk/openadsdk/core/q$c;
.super Ljava/lang/Object;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Lcom/bytedance/sdk/openadsdk/core/d/q;


# direct methods
.method private constructor <init>(IZLcom/bytedance/sdk/openadsdk/core/d/q;)V
    .registers 4

    .prologue
    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1114
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/q$c;->a:I

    .line 1115
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/q$c;->b:Z

    .line 1116
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/q$c;->c:Lcom/bytedance/sdk/openadsdk/core/d/q;

    .line 1117
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/q$c;
    .registers 6

    .prologue
    .line 1120
    if-nez p0, :cond_4

    .line 1121
    const/4 v0, 0x0

    .line 1137
    :goto_3
    return-object v0

    .line 1123
    :cond_4
    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1124
    const-string v0, "verify"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1125
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1126
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/q;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/d/q;-><init>()V

    .line 1128
    if-eqz v0, :cond_41

    .line 1129
    :try_start_1d
    const-string v4, "reason"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/q;->a(I)V

    .line 1130
    const-string v4, "corp_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/q;->b(I)V

    .line 1131
    const-string v4, "reward_amount"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/q;->c(I)V

    .line 1132
    const-string v4, "reward_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/d/q;->a(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_41} :catch_47

    .line 1137
    :cond_41
    :goto_41
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/q$c;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/q$c;-><init>(IZLcom/bytedance/sdk/openadsdk/core/d/q;)V

    goto :goto_3

    .line 1134
    :catch_47
    move-exception v0

    .line 1135
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_41
.end method
