.class Lcom/JoyFramework/d/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/JoyFramework/d/bt;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/bt;Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 235
    iput-object p1, p0, Lcom/JoyFramework/d/bu;->b:Lcom/JoyFramework/d/bt;

    iput-object p2, p0, Lcom/JoyFramework/d/bu;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/JoyFramework/d/bu;->b:Lcom/JoyFramework/d/bt;

    iget-object v0, v0, Lcom/JoyFramework/d/bt;->a:Lcom/JoyFramework/d/bs;

    iget-object v0, v0, Lcom/JoyFramework/d/bs;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/JoyFramework/d/bu;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;)V

    .line 239
    return-void
.end method
