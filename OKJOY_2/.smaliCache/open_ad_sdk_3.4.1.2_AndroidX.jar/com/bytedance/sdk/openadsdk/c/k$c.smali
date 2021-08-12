.class Lcom/bytedance/sdk/openadsdk/c/k$c;
.super Ljava/lang/Object;
.source "OpenAppSuccEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$c;->a:I

    .line 303
    const/16 v0, 0x1388

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$c;->b:I

    .line 305
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$c;->c:I

    .line 306
    const/16 v0, 0x12c

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$c;->d:I

    .line 309
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/c/k$c;
    .registers 1

    .line 321
    new-instance v0, Lcom/bytedance/sdk/openadsdk/c/k$c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/c/k$c;-><init>()V

    return-object v0
.end method
