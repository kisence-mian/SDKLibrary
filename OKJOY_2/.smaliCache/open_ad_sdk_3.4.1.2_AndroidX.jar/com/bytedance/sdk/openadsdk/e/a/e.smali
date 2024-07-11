.class public abstract Lcom/bytedance/sdk/openadsdk/e/a/e;
.super Lcom/bytedance/sdk/openadsdk/e/a/b;
.source "BaseStatelessMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/openadsdk/e/a/b<",
        "TP;TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/e/a/f;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/bytedance/sdk/openadsdk/e/a/f;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public bridge synthetic a()Ljava/lang/String;
    .registers 2

    .line 9
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/e/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
