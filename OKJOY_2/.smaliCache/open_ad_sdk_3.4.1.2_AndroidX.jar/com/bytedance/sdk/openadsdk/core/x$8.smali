.class Lcom/bytedance/sdk/openadsdk/core/x$8;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
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

    .line 1254
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x$8;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/d/l;",
            ">;)V"
        }
    .end annotation

    .line 1257
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x$8;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/util/List;)Ljava/util/List;

    .line 1258
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x$8;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/x;)V

    .line 1260
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x$8;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/x;->g()V

    .line 1261
    return-void
.end method
