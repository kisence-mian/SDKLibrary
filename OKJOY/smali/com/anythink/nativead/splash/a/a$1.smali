.class final Lcom/anythink/nativead/splash/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/splash/a/a;->a(Landroid/view/View;Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/nativead/views/RoundImageView;

.field final synthetic b:Lcom/anythink/nativead/splash/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/splash/a/a;Lcom/anythink/nativead/views/RoundImageView;)V
    .registers 3

    .prologue
    .line 74
    iput-object p1, p0, Lcom/anythink/nativead/splash/a/a$1;->b:Lcom/anythink/nativead/splash/a/a;

    iput-object p2, p0, Lcom/anythink/nativead/splash/a/a$1;->a:Lcom/anythink/nativead/views/RoundImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a$1;->b:Lcom/anythink/nativead/splash/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/nativead/splash/a/a;->c:Z

    .line 85
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a$1;->b:Lcom/anythink/nativead/splash/a/a;

    invoke-static {v0}, Lcom/anythink/nativead/splash/a/a;->a(Lcom/anythink/nativead/splash/a/a;)V

    .line 86
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a$1;->a:Lcom/anythink/nativead/views/RoundImageView;

    invoke-virtual {v0, p1}, Lcom/anythink/nativead/views/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a$1;->b:Lcom/anythink/nativead/splash/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/nativead/splash/a/a;->c:Z

    .line 79
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a$1;->b:Lcom/anythink/nativead/splash/a/a;

    invoke-static {v0}, Lcom/anythink/nativead/splash/a/a;->a(Lcom/anythink/nativead/splash/a/a;)V

    .line 80
    return-void
.end method
