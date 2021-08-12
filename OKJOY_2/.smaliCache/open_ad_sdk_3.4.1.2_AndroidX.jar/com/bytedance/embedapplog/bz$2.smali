.class final Lcom/bytedance/embedapplog/bz$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embedapplog/cn$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/embedapplog/bz;->f(Landroid/content/Context;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/embedapplog/cn$b<",
        "Lcom/bytedance/embedapplog/cl;",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/embedapplog/cl;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embedapplog/cl;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 114
    if-nez p1, :cond_4

    .line 115
    const/4 p1, 0x0

    return-object p1

    .line 117
    :cond_4
    invoke-interface {p1}, Lcom/bytedance/embedapplog/cl;->a()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-interface {p1}, Lcom/bytedance/embedapplog/cl;->b()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 119
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public a(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/cl;
    .registers 2

    .line 109
    invoke-static {p1}, Lcom/bytedance/embedapplog/cl$a;->a(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/cl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 105
    check-cast p1, Lcom/bytedance/embedapplog/cl;

    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/bz$2;->a(Lcom/bytedance/embedapplog/cl;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 105
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/bz$2;->a(Landroid/os/IBinder;)Lcom/bytedance/embedapplog/cl;

    move-result-object p1

    return-object p1
.end method
