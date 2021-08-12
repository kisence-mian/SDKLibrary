.class final Lcom/anythink/core/common/res/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/res/e;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/anythink/core/common/res/b$a;

.field final synthetic e:Lcom/anythink/core/common/res/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/res/b;Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V
    .registers 6

    .line 223
    iput-object p1, p0, Lcom/anythink/core/common/res/b$4;->e:Lcom/anythink/core/common/res/b;

    iput-object p2, p0, Lcom/anythink/core/common/res/b$4;->a:Lcom/anythink/core/common/res/e;

    iput p3, p0, Lcom/anythink/core/common/res/b$4;->b:I

    iput p4, p0, Lcom/anythink/core/common/res/b$4;->c:I

    iput-object p5, p0, Lcom/anythink/core/common/res/b$4;->d:Lcom/anythink/core/common/res/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 226
    iget-object v0, p0, Lcom/anythink/core/common/res/b$4;->e:Lcom/anythink/core/common/res/b;

    iget-object v1, p0, Lcom/anythink/core/common/res/b$4;->a:Lcom/anythink/core/common/res/e;

    iget v2, p0, Lcom/anythink/core/common/res/b$4;->b:I

    iget v3, p0, Lcom/anythink/core/common/res/b$4;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_56

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url image ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/core/common/res/b$4;->a:Lcom/anythink/core/common/res/e;

    iget-object v2, v2, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is downloaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageLoader"

    invoke-static {v2, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/anythink/core/common/res/b$4;->e:Lcom/anythink/core/common/res/b;

    iget-object v2, p0, Lcom/anythink/core/common/res/b$4;->a:Lcom/anythink/core/common/res/e;

    iget-object v2, v2, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/res/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 230
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 231
    iget-object v2, p0, Lcom/anythink/core/common/res/b$4;->d:Lcom/anythink/core/common/res/b$a;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v2, p0, Lcom/anythink/core/common/res/b$4;->e:Lcom/anythink/core/common/res/b;

    invoke-static {v2}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/res/b$4;->a:Lcom/anythink/core/common/res/e;

    iget-object v3, v3, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Lcom/anythink/core/common/res/b$4;->e:Lcom/anythink/core/common/res/b;

    iget-object v2, p0, Lcom/anythink/core/common/res/b$4;->a:Lcom/anythink/core/common/res/e;

    iget-object v2, v2, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 235
    return-void

    .line 236
    :cond_56
    iget-object v0, p0, Lcom/anythink/core/common/res/b$4;->e:Lcom/anythink/core/common/res/b;

    iget-object v1, p0, Lcom/anythink/core/common/res/b$4;->a:Lcom/anythink/core/common/res/e;

    iget v2, p0, Lcom/anythink/core/common/res/b$4;->b:I

    iget v3, p0, Lcom/anythink/core/common/res/b$4;->c:I

    iget-object v4, p0, Lcom/anythink/core/common/res/b$4;->d:Lcom/anythink/core/common/res/b$a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V

    .line 238
    return-void
.end method
