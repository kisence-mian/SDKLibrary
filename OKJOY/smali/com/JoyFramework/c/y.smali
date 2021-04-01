.class Lcom/JoyFramework/c/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/a/c;

.field final synthetic b:Lcom/JoyFramework/c/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/e;Lcom/JoyFramework/module/a/c;)V
    .registers 3

    .prologue
    .line 647
    iput-object p1, p0, Lcom/JoyFramework/c/y;->b:Lcom/JoyFramework/c/e;

    iput-object p2, p0, Lcom/JoyFramework/c/y;->a:Lcom/JoyFramework/module/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/JoyFramework/c/y;->a:Lcom/JoyFramework/module/a/c;

    invoke-virtual {v0}, Lcom/JoyFramework/module/a/c;->a()V

    .line 651
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 655
    iget-object v0, p0, Lcom/JoyFramework/c/y;->b:Lcom/JoyFramework/c/e;

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-string v1, "\u83b7\u53d6\u8be5\u6743\u9650\u662f\u4e3a\u4e86\u63d0\u5347\u60a8\u7684\u6e38\u620f\u4f53\u9a8c\uff0c\u7981\u6b62\u6743\u9650\u540e\u5c06\u65e0\u6cd5\u7ee7\u7eed\u6e38\u620f"

    const-string v2, "android.permission.READ_PHONE_STATE"

    new-instance v3, Lcom/JoyFramework/c/z;

    invoke-direct {v3, p0}, Lcom/JoyFramework/c/z;-><init>(Lcom/JoyFramework/c/y;)V

    invoke-static {v0, v1, v2, v3}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    .line 668
    return-void
.end method
