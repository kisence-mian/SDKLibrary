.class Lcom/bytedance/sdk/openadsdk/g/a/a$1;
.super Landroid/util/LruCache;
.source "GifCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/bytedance/sdk/openadsdk/g/a/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/g/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/a/a;I)V
    .registers 3

    .prologue
    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/g/a/a;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/a$a;)I
    .registers 5

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/g/a/a$a;->a:[B

    if-eqz v1, :cond_9

    .line 53
    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/g/a/a$a;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 56
    :cond_9
    if-nez v0, :cond_f

    invoke-super {p0, p1, p2}, Landroid/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :cond_f
    return v0
.end method

.method protected a(ZLjava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/a$a;Lcom/bytedance/sdk/openadsdk/g/a/a$a;)V
    .registers 6

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    if-eqz p1, :cond_a

    if-eqz p3, :cond_a

    .line 63
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/bytedance/sdk/openadsdk/g/a/a$a;->a:[B

    .line 65
    :cond_a
    return-void
.end method

.method protected synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 47
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/bytedance/sdk/openadsdk/g/a/a$a;

    check-cast p4, Lcom/bytedance/sdk/openadsdk/g/a/a$a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/g/a/a$1;->a(ZLjava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/a$a;Lcom/bytedance/sdk/openadsdk/g/a/a$a;)V

    return-void
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 47
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/bytedance/sdk/openadsdk/g/a/a$a;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/a$1;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/a$a;)I

    move-result v0

    return v0
.end method
