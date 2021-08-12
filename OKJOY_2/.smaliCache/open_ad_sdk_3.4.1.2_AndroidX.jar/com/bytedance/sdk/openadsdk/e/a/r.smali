.class Lcom/bytedance/sdk/openadsdk/e/a/r;
.super Ljava/lang/Exception;
.source "JsBridgeException.java"


# instance fields
.field a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 16
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/e/a/r;->a:I

    .line 17
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 20
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 21
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/e/a/r;->a:I

    .line 22
    return-void
.end method
