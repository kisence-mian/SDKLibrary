.class public Lcom/bytedance/sdk/adnet/b/a;
.super Ljava/lang/Object;
.source "DefaultImageCache.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/d$b;


# instance fields
.field protected a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 21
    new-instance v1, Lcom/bytedance/sdk/adnet/b/a$1;

    div-int/lit8 v0, v0, 0x10

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/adnet/b/a$1;-><init>(Lcom/bytedance/sdk/adnet/b/a;I)V

    iput-object v1, p0, Lcom/bytedance/sdk/adnet/b/a;->a:Landroid/util/LruCache;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/a;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 36
    :goto_8
    return-object v0

    .line 33
    :catch_9
    move-exception v0

    .line 34
    const-string v1, "DefaultImageCache get bitmap error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .prologue
    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p2, :cond_d

    .line 43
    :try_start_8
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/a;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    .line 48
    :cond_d
    :goto_d
    return-void

    .line 44
    :catch_e
    move-exception v0

    .line 45
    const-string v1, "DefaultImageCache put bitmap error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/adnet/core/p;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d
.end method
