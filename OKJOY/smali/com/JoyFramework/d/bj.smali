.class final Lcom/JoyFramework/d/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/JoyFramework/d/bj;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/JoyFramework/d/bj;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 44
    iget-object v0, p0, Lcom/JoyFramework/d/bj;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/JoyFramework/d/bj;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/JoyFramework/d/bi;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 50
    iget-object v0, p0, Lcom/JoyFramework/d/bj;->a:Landroid/app/Activity;

    const-string v1, "\u62d2\u7edd\u6743\u9650\uff0c\u60a8\u5c06\u4e0d\u80fd\u4fdd\u5b58\u6ce8\u518c\u622a\u56fe\uff0c\u65e0\u6cd5\u770b\u5230\u6ce8\u518c\u7684\u8d26\u53f7\u5bc6\u7801"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v3, Lcom/JoyFramework/d/bk;

    invoke-direct {v3, p0}, Lcom/JoyFramework/d/bk;-><init>(Lcom/JoyFramework/d/bj;)V

    invoke-static {v0, v1, v2, v3}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    .line 66
    return-void
.end method
