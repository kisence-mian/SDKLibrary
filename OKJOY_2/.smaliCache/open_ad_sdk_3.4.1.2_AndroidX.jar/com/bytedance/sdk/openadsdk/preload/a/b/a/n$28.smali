.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$28;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/a/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bytedance/sdk/openadsdk/preload/a/v;)Lcom/bytedance/sdk/openadsdk/preload/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/preload/a/v;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bytedance/sdk/openadsdk/preload/a/v;)V
    .registers 4

    .line 862
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$28;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$28;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$28;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 3
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

    .line 865
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object p1

    .line 866
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$28;->a:Ljava/lang/Class;

    if-eq p1, p2, :cond_f

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$28;->b:Ljava/lang/Class;

    if-ne p1, p2, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_11

    :cond_f
    :goto_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$28;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    :goto_11
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Factory[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$28;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$28;->b:Ljava/lang/Class;

    .line 870
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/n$28;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 869
    return-object v0
.end method
