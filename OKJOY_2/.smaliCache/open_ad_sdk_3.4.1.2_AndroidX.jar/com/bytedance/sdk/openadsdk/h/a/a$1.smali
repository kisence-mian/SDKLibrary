.class Lcom/bytedance/sdk/openadsdk/h/a/a$1;
.super Landroid/util/LruCache;
.source "GifCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/bytedance/sdk/openadsdk/h/a/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/a/a;I)V
    .registers 3

    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/a$a;)I
    .registers 5

    .line 57
    nop

    .line 59
    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/h/a/a$a;->a:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 60
    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/h/a/a$a;->a:[B

    array-length v0, v0

    add-int/2addr v1, v0

    .line 63
    :cond_a
    if-nez v1, :cond_10

    invoke-super {p0, p1, p2}, Landroid/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    :cond_10
    return v1
.end method

.method protected a(ZLjava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/a$a;Lcom/bytedance/sdk/openadsdk/h/a/a$a;)V
    .registers 5

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    if-eqz p1, :cond_a

    if-eqz p3, :cond_a

    .line 70
    const/4 p1, 0x0

    iput-object p1, p3, Lcom/bytedance/sdk/openadsdk/h/a/a$a;->a:[B

    .line 72
    :cond_a
    return-void
.end method

.method protected synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 54
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/bytedance/sdk/openadsdk/h/a/a$a;

    check-cast p4, Lcom/bytedance/sdk/openadsdk/h/a/a$a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/h/a/a$1;->a(ZLjava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/a$a;Lcom/bytedance/sdk/openadsdk/h/a/a$a;)V

    return-void
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 54
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/bytedance/sdk/openadsdk/h/a/a$a;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/h/a/a$1;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/a$a;)I

    move-result p1

    return p1
.end method
