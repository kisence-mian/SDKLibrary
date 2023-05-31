.class public Lcom/bytedance/sdk/openadsdk/core/h/m;
.super Ljava/lang/Object;
.source "TplInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/h/m;
    .registers 1

    .prologue
    .line 15
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/m;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/h/m;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/m;
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/m;->a:Ljava/lang/String;

    .line 23
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/m;
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/m;->b:Ljava/lang/String;

    .line 28
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/m;
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/m;->c:Ljava/lang/String;

    .line 33
    return-object p0
.end method
