.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/b;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/a/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/a/b/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/c;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation

    .line 46
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 48
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 49
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 50
    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_12
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/b;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

    invoke-virtual {v2, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/c;->a(Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/b/i;

    move-result-object p2

    .line 58
    new-instance v2, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/b$a;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/f;Ljava/lang/reflect/Type;Lcom/bytedance/sdk/openadsdk/preload/a/v;Lcom/bytedance/sdk/openadsdk/preload/a/b/i;)V

    .line 59
    return-object v2
.end method
