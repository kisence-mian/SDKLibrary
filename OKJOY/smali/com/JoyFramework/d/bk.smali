.class Lcom/JoyFramework/d/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/bj;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/bj;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/JoyFramework/d/bk;->a:Lcom/JoyFramework/d/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/JoyFramework/d/bk;->a:Lcom/JoyFramework/d/bj;

    iget-object v0, v0, Lcom/JoyFramework/d/bj;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/JoyFramework/d/bk;->a:Lcom/JoyFramework/d/bj;

    iget-object v0, v0, Lcom/JoyFramework/d/bj;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/JoyFramework/d/bk;->a:Lcom/JoyFramework/d/bj;

    iget-object v1, v1, Lcom/JoyFramework/d/bj;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/JoyFramework/d/bi;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;)V

    .line 58
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method
