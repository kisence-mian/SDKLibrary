.class public Lcom/bytedance/sdk/openadsdk/core/q$b;
.super Ljava/lang/Object;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method private constructor <init>(IZ)V
    .registers 3

    .prologue
    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1418
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/q$b;->a:I

    .line 1419
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/q$b;->b:Z

    .line 1420
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/q$b;
    .registers 4

    .prologue
    .line 1423
    if-nez p0, :cond_4

    .line 1424
    const/4 v0, 0x0

    .line 1428
    :goto_3
    return-object v0

    .line 1426
    :cond_4
    const-string v0, "error_code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1427
    const-string v0, "result"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1428
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/q$b;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/q$b;-><init>(IZ)V

    goto :goto_3
.end method
