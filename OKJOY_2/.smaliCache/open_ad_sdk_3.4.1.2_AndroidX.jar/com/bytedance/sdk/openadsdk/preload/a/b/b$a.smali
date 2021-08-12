.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/b$a;
.super Ljava/lang/Object;
.source "$Gson$Types.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/GenericArrayType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 2

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$a;->a:Ljava/lang/reflect/Type;

    .line 526
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 533
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 534
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 533
    :goto_f
    return p1
.end method

.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .registers 2

    .line 529
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$a;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 538
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$a;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/b$a;->a:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
