.class Lcom/JoyFramework/module/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/JoyFramework/module/a/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/a/c;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 191
    iput-object p1, p0, Lcom/JoyFramework/module/a/h;->b:Lcom/JoyFramework/module/a/c;

    iput-object p2, p0, Lcom/JoyFramework/module/a/h;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/JoyFramework/module/a/h;->b:Lcom/JoyFramework/module/a/c;

    invoke-static {v0}, Lcom/JoyFramework/module/a/c;->b(Lcom/JoyFramework/module/a/c;)V

    .line 195
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 201
    iget-object v0, p0, Lcom/JoyFramework/module/a/h;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "\u62d2\u7edd\u8be5\u6743\u9650\uff0c\u4e0b\u6b21\u767b\u5f55\u5c06\u65e0\u6cd5\u4f7f\u7528\u81ea\u52a8\u767b\u5f55\u529f\u80fd"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v3, Lcom/JoyFramework/module/a/i;

    invoke-direct {v3, p0}, Lcom/JoyFramework/module/a/i;-><init>(Lcom/JoyFramework/module/a/h;)V

    invoke-static {v0, v1, v2, v3}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    .line 214
    return-void
.end method
