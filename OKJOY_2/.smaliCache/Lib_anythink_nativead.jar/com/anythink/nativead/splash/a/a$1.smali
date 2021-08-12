.class final Lcom/anythink/nativead/splash/a/a$1;
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

.field final synthetic b:Lcom/anythink/nativead/splash/a/a;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/splash/a/a;Lcom/anythink/nativead/views/RoundImageView;)V
    .registers 3

    .line 82
    iput-object p1, p0, Lcom/anythink/nativead/splash/a/a$1;->b:Lcom/anythink/nativead/splash/a/a;

    iput-object p2, p0, Lcom/anythink/nativead/splash/a/a$1;->a:Lcom/anythink/nativead/views/RoundImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 92
    iget-object p1, p0, Lcom/anythink/nativead/splash/a/a$1;->b:Lcom/anythink/nativead/splash/a/a;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/anythink/nativead/splash/a/a;->c:Z

    .line 93
    iget-object p1, p0, Lcom/anythink/nativead/splash/a/a$1;->b:Lcom/anythink/nativead/splash/a/a;

    invoke-static {p1}, Lcom/anythink/nativead/splash/a/a;->a(Lcom/anythink/nativead/splash/a/a;)V

    .line 94
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 85
    iget-object p1, p0, Lcom/anythink/nativead/splash/a/a$1;->a:Lcom/anythink/nativead/views/RoundImageView;

    invoke-virtual {p1, p2}, Lcom/anythink/nativead/views/RoundImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    iget-object p1, p0, Lcom/anythink/nativead/splash/a/a$1;->b:Lcom/anythink/nativead/splash/a/a;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/anythink/nativead/splash/a/a;->c:Z

    .line 87
    iget-object p1, p0, Lcom/anythink/nativead/splash/a/a$1;->b:Lcom/anythink/nativead/splash/a/a;

    invoke-static {p1}, Lcom/anythink/nativead/splash/a/a;->a(Lcom/anythink/nativead/splash/a/a;)V

    .line 88
    return-void
.end method
