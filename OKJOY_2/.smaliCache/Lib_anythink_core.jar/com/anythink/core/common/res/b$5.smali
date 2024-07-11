.class final Lcom/anythink/core/common/res/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/res/image/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/res/b;->b(Lcom/anythink/core/common/res/e;IILcom/anythink/core/common/res/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/anythink/core/common/res/e;

.field final synthetic d:Lcom/anythink/core/common/res/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/res/b;IILcom/anythink/core/common/res/e;)V
    .registers 5

    .line 255
    iput-object p1, p0, Lcom/anythink/core/common/res/b$5;->d:Lcom/anythink/core/common/res/b;

    iput p2, p0, Lcom/anythink/core/common/res/b$5;->a:I

    iput p3, p0, Lcom/anythink/core/common/res/b$5;->b:I

    iput-object p4, p0, Lcom/anythink/core/common/res/b$5;->c:Lcom/anythink/core/common/res/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/res/e;)V
    .registers 5

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Load Success:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageLoader"

    invoke-static {v1, v0}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/anythink/core/common/res/b$5;->d:Lcom/anythink/core/common/res/b;

    iget v1, p0, Lcom/anythink/core/common/res/b$5;->a:I

    iget v2, p0, Lcom/anythink/core/common/res/b$5;->b:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/e;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_29

    .line 262
    iget-object v1, p0, Lcom/anythink/core/common/res/b$5;->d:Lcom/anythink/core/common/res/b;

    iget-object p1, p1, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/anythink/core/common/res/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 265
    :cond_29
    iget-object p1, p0, Lcom/anythink/core/common/res/b$5;->d:Lcom/anythink/core/common/res/b;

    iget-object v1, p0, Lcom/anythink/core/common/res/b$5;->c:Lcom/anythink/core/common/res/e;

    iget-object v1, v1, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/anythink/core/common/res/b;->a(Lcom/anythink/core/common/res/b;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 266
    return-void
.end method

.method public final a(Lcom/anythink/core/common/res/e;Ljava/lang/String;)V
    .registers 6

    .line 270
    iget-object v0, p0, Lcom/anythink/core/common/res/b$5;->d:Lcom/anythink/core/common/res/b;

    iget-object p1, p1, Lcom/anythink/core/common/res/e;->d:Ljava/lang/String;

    .line 1029
    nop

    .line 1068
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/common/res/b$2;

    invoke-direct {v2, v0, p1, p2}, Lcom/anythink/core/common/res/b$2;-><init>(Lcom/anythink/core/common/res/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method
