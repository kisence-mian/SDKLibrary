.class final Lcom/JoyFramework/d/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 146
    iput-object p1, p0, Lcom/JoyFramework/d/bl;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/JoyFramework/d/bl;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/JoyFramework/d/bl;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/JoyFramework/d/bl;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/JoyFramework/d/bl;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/JoyFramework/d/bl;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/bi;->b(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 154
    iget-object v0, p0, Lcom/JoyFramework/d/bl;->a:Landroid/app/Activity;

    const-string v1, "\u62d2\u7edd\u6743\u9650\uff0c\u60a8\u5c06\u4e0d\u80fd\u4fdd\u5b58\u6ce8\u518c\u622a\u56fe\uff0c\u65e0\u6cd5\u770b\u5230\u6ce8\u518c\u7684\u8d26\u53f7\u5bc6\u7801"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v3, Lcom/JoyFramework/d/bm;

    invoke-direct {v3, p0}, Lcom/JoyFramework/d/bm;-><init>(Lcom/JoyFramework/d/bl;)V

    invoke-static {v0, v1, v2, v3}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    .line 168
    return-void
.end method
