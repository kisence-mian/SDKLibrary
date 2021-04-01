.class Lcom/JoyFramework/module/user/fragment/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$e;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/user/fragment/a/a;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/user/fragment/a/a;)V
    .registers 2

    .prologue
    .line 201
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/a/g;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 204
    sget-object v0, Lcom/JoyFramework/a/a;->E:Ljava/lang/String;

    .line 206
    :try_start_2
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/a/g;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/JoyFramework/module/user/fragment/a/a;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    .line 210
    :goto_12
    return-void

    .line 207
    :catch_13
    move-exception v0

    .line 208
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/a/g;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-virtual {v1}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v1, v0, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    goto :goto_12
.end method
