.class public final Lcom/bytedance/sdk/openadsdk/preload/b/l$a;
.super Ljava/lang/Object;
.source "SubBranchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/b/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/b/h;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/b/h;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/preload/b/l$a;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    return-object p0
.end method
