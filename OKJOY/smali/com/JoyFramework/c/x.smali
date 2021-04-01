.class Lcom/JoyFramework/c/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$c;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/JoyFramework/common/InitListener;

.field final synthetic e:Lcom/JoyFramework/c/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/common/InitListener;)V
    .registers 6

    .prologue
    .line 616
    iput-object p1, p0, Lcom/JoyFramework/c/x;->e:Lcom/JoyFramework/c/e;

    iput-object p2, p0, Lcom/JoyFramework/c/x;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/JoyFramework/c/x;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/JoyFramework/c/x;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/JoyFramework/c/x;->d:Lcom/JoyFramework/common/InitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 619
    iget-object v0, p0, Lcom/JoyFramework/c/x;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/JoyFramework/d/ar;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 620
    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 622
    iget-object v0, p0, Lcom/JoyFramework/c/x;->e:Lcom/JoyFramework/c/e;

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 627
    :goto_1c
    return-void

    .line 625
    :cond_1d
    iget-object v0, p0, Lcom/JoyFramework/c/x;->e:Lcom/JoyFramework/c/e;

    iget-object v0, v0, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1c
.end method

.method public b()V
    .registers 6

    .prologue
    .line 631
    iget-object v0, p0, Lcom/JoyFramework/c/x;->e:Lcom/JoyFramework/c/e;

    iget-object v1, p0, Lcom/JoyFramework/c/x;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/JoyFramework/c/x;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/c/x;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/JoyFramework/c/x;->d:Lcom/JoyFramework/common/InitListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/JoyFramework/c/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/common/InitListener;)V

    .line 632
    return-void
.end method
