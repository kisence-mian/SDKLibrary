.class final Lcom/anythink/nativead/splash/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


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

    .line 147
    iput-object p1, p0, Lcom/anythink/nativead/splash/a/a$2;->d:Lcom/anythink/nativead/splash/a/a;

    iput-object p2, p0, Lcom/anythink/nativead/splash/a/a$2;->a:Lcom/anythink/nativead/views/RoundImageView;

    iput-object p3, p0, Lcom/anythink/nativead/splash/a/a$2;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/anythink/nativead/splash/a/a$2;->c:Lcom/anythink/nativead/views/RoundImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 159
    iget-object p1, p0, Lcom/anythink/nativead/splash/a/a$2;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/nativead/splash/a/a$2;->b:Landroid/content/Context;

    const-string v0, "plugin_splash_default_bg"

    const-string v1, "drawable"

    invoke-static {p2, v0, v1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 160
    iget-object p2, p0, Lcom/anythink/nativead/splash/a/a$2;->c:Lcom/anythink/nativead/views/RoundImageView;

    iget-object v0, p0, Lcom/anythink/nativead/splash/a/a$2;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/anythink/core/common/g/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/anythink/nativead/views/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    if-eqz p1, :cond_24

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    :cond_24
    iget-object p1, p0, Lcom/anythink/nativead/splash/a/a$2;->d:Lcom/anythink/nativead/splash/a/a;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/anythink/nativead/splash/a/a;->d:Z

    .line 165
    iget-object p1, p0, Lcom/anythink/nativead/splash/a/a$2;->d:Lcom/anythink/nativead/splash/a/a;

    invoke-static {p1}, Lcom/anythink/nativead/splash/a/a;->a(Lcom/anythink/nativead/splash/a/a;)V

    .line 166
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 150
    iget-object p1, p0, Lcom/anythink/nativead/splash/a/a$2;->a:Lcom/anythink/nativead/views/RoundImageView;

    invoke-virtual {p1, p2}, Lcom/anythink/nativead/views/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    iget-object p1, p0, Lcom/anythink/nativead/splash/a/a$2;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 152
    iget-object p2, p0, Lcom/anythink/nativead/splash/a/a$2;->c:Lcom/anythink/nativead/views/RoundImageView;

    invoke-virtual {p2, p1}, Lcom/anythink/nativead/views/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    iget-object p1, p0, Lcom/anythink/nativead/splash/a/a$2;->d:Lcom/anythink/nativead/splash/a/a;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/anythink/nativead/splash/a/a;->d:Z

    .line 154
    iget-object p1, p0, Lcom/anythink/nativead/splash/a/a$2;->d:Lcom/anythink/nativead/splash/a/a;

    invoke-static {p1}, Lcom/anythink/nativead/splash/a/a;->a(Lcom/anythink/nativead/splash/a/a;)V

    .line 155
    return-void
.end method
