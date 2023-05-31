.class public Lcom/mintegral/msdk/base/common/net/a;
.super Lcom/mintegral/msdk/base/common/net/b;
.source "CommonAsyncHttpRequest.java"


# static fields
.field private static c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/mintegral/msdk/base/common/f/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/mintegral/msdk/base/common/f/b;

.field private d:Lcom/mintegral/msdk/base/common/f/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/base/common/net/a;->c:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/common/net/b;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/base/common/net/b;-><init>(Landroid/content/Context;I)V

    .line 26
    return-void
.end method

.method public static b()V
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/mintegral/msdk/base/common/net/a;->c:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_9

    .line 53
    sget-object v0, Lcom/mintegral/msdk/base/common/net/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 55
    :cond_9
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 35
    sget-object v0, Lcom/mintegral/msdk/base/common/net/a;->c:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 36
    sget-object v0, Lcom/mintegral/msdk/base/common/net/a;->c:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/common/f/b;

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/a;->d:Lcom/mintegral/msdk/base/common/f/b;

    .line 43
    :goto_16
    return-void

    .line 39
    :cond_17
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/a;->a:Lcom/mintegral/msdk/base/common/f/b;

    if-nez v0, :cond_2f

    new-instance v0, Lcom/mintegral/msdk/base/common/f/b;

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/a;->b:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/base/common/f/b;-><init>(Landroid/content/Context;I)V

    :goto_23
    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/a;->d:Lcom/mintegral/msdk/base/common/f/b;

    .line 40
    sget-object v0, Lcom/mintegral/msdk/base/common/net/a;->c:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/base/common/net/a;->d:Lcom/mintegral/msdk/base/common/f/b;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 39
    :cond_2f
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/a;->a:Lcom/mintegral/msdk/base/common/f/b;

    goto :goto_23
.end method

.method protected final a(Lcom/mintegral/msdk/base/common/net/f;)V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/a;->d:Lcom/mintegral/msdk/base/common/f/b;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/common/f/b;->b(Lcom/mintegral/msdk/base/common/f/a;)V

    .line 49
    return-void
.end method

.method protected a(Lcom/mintegral/msdk/base/common/net/l;)V
    .registers 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/mintegral/msdk/base/common/net/b;->a(Lcom/mintegral/msdk/base/common/net/l;)V

    .line 31
    return-void
.end method
