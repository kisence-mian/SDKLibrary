.class Lcom/bytedance/sdk/openadsdk/preload/a/b/c$7;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/a/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/c;->a(Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/preload/a/b/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/preload/a/h;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/c;Lcom/bytedance/sdk/openadsdk/preload/a/h;Ljava/lang/reflect/Type;)V
    .registers 4

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/c$7;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/c$7;->a:Lcom/bytedance/sdk/openadsdk/preload/a/h;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/c$7;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/c$7;->a:Lcom/bytedance/sdk/openadsdk/preload/a/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/c$7;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/h;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
