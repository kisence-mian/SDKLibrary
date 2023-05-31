.class Lcom/JoyFramework/module/user/fragment/a/b;
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
    .line 117
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/a/b;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 124
    :try_start_0
    sget-object v0, Lcom/JoyFramework/a/a;->w:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/a/b;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/JoyFramework/module/user/fragment/a/a;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 134
    :goto_12
    return-void

    .line 127
    :catch_13
    move-exception v0

    .line 128
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/b;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u5b89\u88c5\u624b\u673aQQ"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 129
    const-string v0, "\u624b\u673a\u6ca1\u6709\u5b89\u88c5QQ"

    invoke-static {v0}, Lcom/JoyFramework/d/aq;->c(Ljava/lang/String;)V

    goto :goto_12
.end method
