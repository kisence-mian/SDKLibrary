.class Lcom/sigmob/volley/toolbox/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/volley/toolbox/p;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/sigmob/volley/q;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sigmob/volley/z",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/volley/toolbox/p;


# direct methods
.method constructor <init>(Lcom/sigmob/volley/toolbox/p;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/p$2;->b:Lcom/sigmob/volley/toolbox/p;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/p$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/p$2;->b:Lcom/sigmob/volley/toolbox/p;

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/p$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/volley/toolbox/p;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sigmob/volley/toolbox/p$2;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
