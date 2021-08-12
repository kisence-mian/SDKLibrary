.class Lcom/bytedance/sdk/openadsdk/preload/a/b/c$2;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/a/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/c;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/preload/a/b/i;
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/c;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/c$2;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method
