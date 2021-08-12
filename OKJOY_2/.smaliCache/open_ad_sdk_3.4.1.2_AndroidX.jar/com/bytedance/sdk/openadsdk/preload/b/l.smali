.class abstract Lcom/bytedance/sdk/openadsdk/preload/b/l;
.super Lcom/bytedance/sdk/openadsdk/preload/b/d;
.source "SubBranchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/b/l$a;,
        Lcom/bytedance/sdk/openadsdk/preload/b/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IN:",
        "Ljava/lang/Object;",
        "OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
        "TIN;TOUT;>;"
    }
.end annotation


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/b/l$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/b/l$a;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/l;->d:Ljava/util/Map;

    return-object v0
.end method

.method protected final varargs a([Ljava/lang/Object;)V
    .registers 4

    .line 53
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->a([Ljava/lang/Object;)V

    .line 54
    if-eqz p1, :cond_1d

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_1d

    .line 58
    :try_start_e
    aget-object p1, p1, v0

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/l;->d:Ljava/util/Map;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_14} :catch_16

    .line 61
    nop

    .line 62
    return-void

    .line 59
    :catch_16
    move-exception p1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 55
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "args error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/b/h;",
            ">;)Z"
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 45
    return v1

    .line 47
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/b/h;

    .line 48
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/preload/b/h;->a:Ljava/lang/Class;

    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/b/f;

    if-ne p1, v0, :cond_1b

    move v1, v2

    :cond_1b
    return v1
.end method
