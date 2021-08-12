.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a/a;
.super Ljava/lang/Object;
.source "RegisterModel.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "gecko_accesskey"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "os"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "msg_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a/a;->b:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a/a;->c:I

    .line 27
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/k/a/a;->a:Ljava/util/List;

    .line 28
    return-void
.end method
