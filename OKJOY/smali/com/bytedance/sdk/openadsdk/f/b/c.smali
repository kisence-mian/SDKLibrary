.class public Lcom/bytedance/sdk/openadsdk/f/b/c;
.super Ljava/lang/Object;
.source "LogUploaderImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/f/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/f/b/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/f/b/b;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/f/b/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/c;->b:Ljava/util/List;

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/b/b;->a()Lcom/bytedance/sdk/openadsdk/f/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/c;->a:Lcom/bytedance/sdk/openadsdk/f/b/b;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/f/b/c;)Lcom/bytedance/sdk/openadsdk/f/b/b;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/c;->a:Lcom/bytedance/sdk/openadsdk/f/b/b;

    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/f/b/c;)Ljava/util/List;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/f/b/a;
    .registers 1

    .prologue
    .line 177
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/b/e;->c()Lcom/bytedance/sdk/openadsdk/f/b/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 37
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/b/c$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/b/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/f/b/c;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->d(Ljava/lang/Runnable;I)V

    .line 47
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/f/a/b;)V
    .registers 3

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/f/b/c;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;Z)V

    .line 64
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/f/a/b;Z)V
    .registers 6

    .prologue
    .line 68
    if-eqz p1, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 77
    :cond_8
    :goto_8
    return-void

    .line 71
    :cond_9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/b/c$a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/f/a/b;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/f/b/c$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 72
    if-eqz p2, :cond_24

    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->e()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    goto :goto_8

    .line 75
    :cond_24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->d()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    goto :goto_8
.end method

.method public b()V
    .registers 1

    .prologue
    .line 82
    return-void
.end method
