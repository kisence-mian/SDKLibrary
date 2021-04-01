.class final Lcom/sigmob/sdk/base/c/i$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/toolbox/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/c/i;->f(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/p;
.end annotation


# instance fields
.field final synthetic a:Landroid/util/LruCache;


# direct methods
.method constructor <init>(Landroid/util/LruCache;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/c/i$2;->a:Landroid/util/LruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/i$2;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/i$2;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
