.class Lcom/JoyFramework/d/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/remote/b/d/b$a;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/bs;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/bs;)V
    .registers 2

    .prologue
    .line 232
    iput-object p1, p0, Lcom/JoyFramework/d/bt;->a:Lcom/JoyFramework/d/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/JoyFramework/d/bt;->a:Lcom/JoyFramework/d/bs;

    iget-object v0, v0, Lcom/JoyFramework/d/bs;->a:Landroid/app/Activity;

    new-instance v1, Lcom/JoyFramework/d/bu;

    invoke-direct {v1, p0, p1}, Lcom/JoyFramework/d/bu;-><init>(Lcom/JoyFramework/d/bt;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/JoyFramework/d/bt;->a:Lcom/JoyFramework/d/bs;

    iget-object v0, v0, Lcom/JoyFramework/d/bs;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-static {v0, p1, v1}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 246
    return-void
.end method
