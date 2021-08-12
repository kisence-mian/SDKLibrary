.class public final Lcom/bytedance/sdk/openadsdk/preload/b/h;
.super Ljava/lang/Object;
.source "Pipe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/b/h$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/bytedance/sdk/openadsdk/preload/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

.field private c:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/b/h$a;)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->a(Lcom/bytedance/sdk/openadsdk/preload/b/h$a;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/h;->a:Ljava/lang/Class;

    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->b(Lcom/bytedance/sdk/openadsdk/preload/b/h$a;)Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/h;->b:Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    .line 13
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h$a;->c(Lcom/bytedance/sdk/openadsdk/preload/b/h$a;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/h;->c:[Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/b/h;->a:Ljava/lang/Class;

    if-eqz p1, :cond_1a

    .line 17
    return-void

    .line 15
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Interceptor class == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/b/h$a;Lcom/bytedance/sdk/openadsdk/preload/b/h$1;)V
    .registers 3

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/h;-><init>(Lcom/bytedance/sdk/openadsdk/preload/b/h$a;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bytedance/sdk/openadsdk/preload/b/d;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/h;->a:Ljava/lang/Class;

    return-object v0
.end method

.method b()Lcom/bytedance/sdk/openadsdk/preload/b/b/a;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/h;->b:Lcom/bytedance/sdk/openadsdk/preload/b/b/a;

    return-object v0
.end method

.method c()[Ljava/lang/Object;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/b/h;->c:[Ljava/lang/Object;

    return-object v0
.end method
