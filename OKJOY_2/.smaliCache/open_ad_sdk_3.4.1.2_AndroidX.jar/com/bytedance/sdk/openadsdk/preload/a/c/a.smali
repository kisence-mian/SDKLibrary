.class public Lcom/bytedance/sdk/openadsdk/preload/a/c/a;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/reflect/Type;

.field final d:I


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->c:Ljava/lang/reflect/Type;

    .line 63
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b:Ljava/lang/Class;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->d:I

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->c:Ljava/lang/reflect/Type;

    .line 73
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b:Ljava/lang/Class;

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->d:I

    .line 75
    return-void
.end method

.method public static a(Ljava/lang/reflect/Type;)Lcom/bytedance/sdk/openadsdk/preload/a/c/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "*>;"
        }
    .end annotation

    .line 296
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 83
    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_16

    .line 86
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 87
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 84
    :cond_16
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Missing type parameter."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/a/c/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "TT;>;"
        }
    .end annotation

    .line 303
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Ljava/lang/reflect/Type;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->c:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 284
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->c:Ljava/lang/reflect/Type;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->c:Ljava/lang/reflect/Type;

    .line 285
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 284
    :goto_13
    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 280
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->d:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->c:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
