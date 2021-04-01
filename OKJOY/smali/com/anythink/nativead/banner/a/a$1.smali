.class final Lcom/anythink/nativead/banner/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/banner/a/a;->a(Landroid/view/View;Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/nativead/views/RoundImageView;

.field final synthetic b:Lcom/anythink/nativead/banner/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/banner/a/a;Lcom/anythink/nativead/views/RoundImageView;)V
    .registers 3

    .prologue
    .line 105
    iput-object p1, p0, Lcom/anythink/nativead/banner/a/a$1;->b:Lcom/anythink/nativead/banner/a/a;

    iput-object p2, p0, Lcom/anythink/nativead/banner/a/a$1;->a:Lcom/anythink/nativead/views/RoundImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/anythink/nativead/banner/a/a$1;->a:Lcom/anythink/nativead/views/RoundImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 115
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/anythink/nativead/banner/a/a$1;->a:Lcom/anythink/nativead/views/RoundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/views/RoundImageView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/anythink/nativead/banner/a/a$1;->a:Lcom/anythink/nativead/views/RoundImageView;

    invoke-virtual {v0, p1}, Lcom/anythink/nativead/views/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    return-void
.end method
