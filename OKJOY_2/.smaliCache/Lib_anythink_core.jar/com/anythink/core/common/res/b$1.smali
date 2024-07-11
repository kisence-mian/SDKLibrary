.class final Lcom/anythink/core/common/res/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/res/b;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/anythink/core/common/res/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/res/b;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 46
    iput-object p1, p0, Lcom/anythink/core/common/res/b$1;->c:Lcom/anythink/core/common/res/b;

    iput-object p2, p0, Lcom/anythink/core/common/res/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/res/b$1;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/anythink/core/common/res/b$1;->c:Lcom/anythink/core/common/res/b;

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/res/b$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 50
    if-eqz v0, :cond_34

    .line 51
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/res/b$a;

    .line 52
    if-eqz v1, :cond_33

    .line 53
    iget-object v2, p0, Lcom/anythink/core/common/res/b$1;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2c

    .line 54
    iget-object v3, p0, Lcom/anythink/core/common/res/b$1;->a:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lcom/anythink/core/common/res/b$a;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_14

    .line 56
    :cond_2c
    iget-object v2, p0, Lcom/anythink/core/common/res/b$1;->a:Ljava/lang/String;

    const-string v3, "Bitmap load fail"

    invoke-interface {v1, v2, v3}, Lcom/anythink/core/common/res/b$a;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_33
    goto :goto_14

    .line 62
    :cond_34
    iget-object v0, p0, Lcom/anythink/core/common/res/b$1;->c:Lcom/anythink/core/common/res/b;

    invoke-static {v0}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/res/b$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method
