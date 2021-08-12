.class public final Lcom/bytedance/sdk/openadsdk/preload/b/l$b;
.super Ljava/lang/Object;
.source "SubBranchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/b/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/bytedance/sdk/openadsdk/preload/b/b/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bytedance/sdk/openadsdk/preload/b/l;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/preload/b/h;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a()Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a:Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 88
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a([Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->b:Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 89
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b/a;)Lcom/bytedance/sdk/openadsdk/preload/b/h$a;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b()Lcom/bytedance/sdk/openadsdk/preload/b/h;

    move-result-object p1

    .line 85
    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/b/l$a;
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 78
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/b/l$a;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/l$b;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-object v0

    .line 76
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "duplicated branch name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
