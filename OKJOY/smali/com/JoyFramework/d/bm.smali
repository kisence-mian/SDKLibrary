.class Lcom/JoyFramework/d/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/d/bl;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/bl;)V
    .registers 2

    .prologue
    .line 156
    iput-object p1, p0, Lcom/JoyFramework/d/bm;->a:Lcom/JoyFramework/d/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/JoyFramework/d/bm;->a:Lcom/JoyFramework/d/bl;

    iget-object v0, v0, Lcom/JoyFramework/d/bl;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/JoyFramework/d/bm;->a:Lcom/JoyFramework/d/bl;

    iget-object v1, v1, Lcom/JoyFramework/d/bl;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/JoyFramework/d/bm;->a:Lcom/JoyFramework/d/bl;

    iget-object v2, v2, Lcom/JoyFramework/d/bl;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/bi;->b(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 165
    return-void
.end method
