.class Lcom/JoyFramework/c/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$c;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/JoyFramework/c/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/e;ZLandroid/app/Activity;)V
    .registers 4

    .prologue
    .line 458
    iput-object p1, p0, Lcom/JoyFramework/c/t;->c:Lcom/JoyFramework/c/e;

    iput-boolean p2, p0, Lcom/JoyFramework/c/t;->a:Z

    iput-object p3, p0, Lcom/JoyFramework/c/t;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/JoyFramework/c/t;->a:Z

    if-eqz v0, :cond_35

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taptap://taptap.com/app?app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/a/a;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&source=outer|update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 464
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 465
    iget-object v0, p0, Lcom/JoyFramework/c/t;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 466
    iget-object v0, p0, Lcom/JoyFramework/c/t;->c:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->e(Lcom/JoyFramework/c/e;)V

    .line 497
    :goto_34
    return-void

    .line 468
    :cond_35
    const-string v0, "1\u3001\u68c0\u6d4b\u5230\u60a8\u7684\u624b\u673a\u6ca1\u6709\u5b89\u88c5TapTap\uff0c\u5373\u5c06\u8df3\u8f6c\u6d4f\u89c8\u5668\u4e0b\u8f7dTapTap\u5e76\u66f4\u65b0\u6e38\u620f\n2\u3001\u5982\u65e0\u6cd5\u6210\u529f\u8df3\u8f6c\uff0c\u53ef\u80fd\u662f\u9047\u5230\u6d4f\u89c8\u5668\u5e7f\u544a\u6240\u963b\uff0c\u8bf7\u91cd\u8fdb\u6e38\u620f\u91cd\u8bd5\u8df3\u8f6c"

    .line 470
    iget-object v1, p0, Lcom/JoyFramework/c/t;->b:Landroid/app/Activity;

    new-instance v2, Lcom/JoyFramework/c/u;

    invoke-direct {v2, p0}, Lcom/JoyFramework/c/u;-><init>(Lcom/JoyFramework/c/t;)V

    invoke-static {v1, v0, v2}, Lcom/JoyFramework/d/e;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/e$c;)V

    goto :goto_34
.end method

.method public b()V
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/JoyFramework/c/t;->c:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->e(Lcom/JoyFramework/c/e;)V

    .line 504
    return-void
.end method
