.class public Lcom/bytedance/sdk/openadsdk/core/r$b;
.super Ljava/lang/Object;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/r;
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

    .line 1705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1706
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/r$b;->a:I

    .line 1707
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/r$b;->b:Z

    .line 1708
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r$b;
    .registers 3

    .line 1711
    if-nez p0, :cond_4

    .line 1712
    const/4 p0, 0x0

    return-object p0

    .line 1714
    :cond_4
    const-string v0, "error_code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1715
    const-string v1, "result"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 1716
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/r$b;

    invoke-direct {v1, v0, p0}, Lcom/bytedance/sdk/openadsdk/core/r$b;-><init>(IZ)V

    return-object v1
.end method
