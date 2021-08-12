.class public Lcom/bytedance/sdk/openadsdk/g/c/c;
.super Ljava/lang/Object;
.source "LogUploaderImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/g/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/g/c/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/g/c/b;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c/c;->b:Ljava/util/List;

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/c/b;->a()Lcom/bytedance/sdk/openadsdk/g/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c/c;->a:Lcom/bytedance/sdk/openadsdk/g/c/b;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/c/c;)Lcom/bytedance/sdk/openadsdk/g/c/b;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/g/c/c;->a:Lcom/bytedance/sdk/openadsdk/g/c/b;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/g/c/c;)Ljava/util/List;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/g/c/c;->b:Ljava/util/List;

    return-object p0
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/g/c/a;
    .registers 1

    .line 177
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/c/e;->c()Lcom/bytedance/sdk/openadsdk/g/c/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 37
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/c/c$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/g/c/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/g/c/c;)V

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 47
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/g/a/a;)V
    .registers 3

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/g/c/c;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V

    .line 64
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V
    .registers 5

    .line 68
    if-eqz p1, :cond_2c

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2c

    .line 71
    :cond_9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/c/c$a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/g/c/c$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 72
    if-eqz p2, :cond_24

    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->e()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    goto :goto_2b

    .line 75
    :cond_24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->d()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    .line 77
    :goto_2b
    return-void

    .line 69
    :cond_2c
    :goto_2c
    return-void
.end method

.method public b()V
    .registers 1

    .line 82
    return-void
.end method
