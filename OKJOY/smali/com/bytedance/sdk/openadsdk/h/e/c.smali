.class public Lcom/bytedance/sdk/openadsdk/h/e/c;
.super Ljava/lang/Object;
.source "NetworkSourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/e/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/h/e/c;
    .registers 1

    .prologue
    .line 13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/e/c$a;->a()Lcom/bytedance/sdk/openadsdk/h/e/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Lcom/bytedance/sdk/openadsdk/h/e/b;
    .registers 2

    .prologue
    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/e/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/h/e/d;-><init>()V

    return-object v0
.end method
