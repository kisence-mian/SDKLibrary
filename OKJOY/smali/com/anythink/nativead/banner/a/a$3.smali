.class final Lcom/anythink/nativead/banner/a/a$3;
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
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Lcom/anythink/nativead/views/RoundImageView;

.field final synthetic c:Lcom/anythink/nativead/banner/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/banner/a/a;Landroid/widget/FrameLayout;Lcom/anythink/nativead/views/RoundImageView;)V
    .registers 4

    .prologue
    .line 182
    iput-object p1, p0, Lcom/anythink/nativead/banner/a/a$3;->c:Lcom/anythink/nativead/banner/a/a;

    iput-object p2, p0, Lcom/anythink/nativead/banner/a/a$3;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/anythink/nativead/banner/a/a$3;->b:Lcom/anythink/nativead/views/RoundImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/anythink/nativead/banner/a/a$3;->a:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 192
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/anythink/nativead/banner/a/a$3;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/anythink/nativead/banner/a/a$3;->b:Lcom/anythink/nativead/views/RoundImageView;

    invoke-virtual {v0, p1}, Lcom/anythink/nativead/views/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    return-void
.end method
