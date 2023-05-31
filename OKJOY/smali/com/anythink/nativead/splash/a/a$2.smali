.class final Lcom/anythink/nativead/splash/a/a$2;
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

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/anythink/nativead/views/RoundImageView;

.field final synthetic d:Lcom/anythink/nativead/splash/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/splash/a/a;Lcom/anythink/nativead/views/RoundImageView;Landroid/content/Context;Lcom/anythink/nativead/views/RoundImageView;)V
    .registers 5

    .prologue
    .line 139
    iput-object p1, p0, Lcom/anythink/nativead/splash/a/a$2;->d:Lcom/anythink/nativead/splash/a/a;

    iput-object p2, p0, Lcom/anythink/nativead/splash/a/a$2;->a:Lcom/anythink/nativead/views/RoundImageView;

    iput-object p3, p0, Lcom/anythink/nativead/splash/a/a$2;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/anythink/nativead/splash/a/a$2;->c:Lcom/anythink/nativead/views/RoundImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 151
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a$2;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/splash/a/a$2;->b:Landroid/content/Context;

    const-string v2, "plugin_splash_default_bg"

    const-string v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/anythink/nativead/splash/a/a$2;->c:Lcom/anythink/nativead/views/RoundImageView;

    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/nativead/splash/a/a$2;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/anythink/nativead/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/nativead/views/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    if-eqz v0, :cond_28

    .line 154
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 156
    :cond_28
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a$2;->d:Lcom/anythink/nativead/splash/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/nativead/splash/a/a;->d:Z

    .line 157
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a$2;->d:Lcom/anythink/nativead/splash/a/a;

    invoke-static {v0}, Lcom/anythink/nativead/splash/a/a;->a(Lcom/anythink/nativead/splash/a/a;)V

    .line 158
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a$2;->a:Lcom/anythink/nativead/views/RoundImageView;

    invoke-virtual {v0, p1}, Lcom/anythink/nativead/views/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    invoke-static {}, Lcom/anythink/nativead/a/c;->a()Lcom/anythink/nativead/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/splash/a/a$2;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/nativead/a/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/anythink/nativead/splash/a/a$2;->c:Lcom/anythink/nativead/views/RoundImageView;

    invoke-virtual {v1, v0}, Lcom/anythink/nativead/views/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a$2;->d:Lcom/anythink/nativead/splash/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/nativead/splash/a/a;->d:Z

    .line 146
    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a$2;->d:Lcom/anythink/nativead/splash/a/a;

    invoke-static {v0}, Lcom/anythink/nativead/splash/a/a;->a(Lcom/anythink/nativead/splash/a/a;)V

    .line 147
    return-void
.end method
