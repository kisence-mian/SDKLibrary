.class Lcom/bytedance/sdk/openadsdk/core/x$2;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/x;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/x;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 2

    .prologue
    .line 741
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x$2;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 744
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$2;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/x;->b(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/util/List;)Ljava/util/List;

    .line 745
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$2;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/x;)V

    .line 746
    return-void
.end method
