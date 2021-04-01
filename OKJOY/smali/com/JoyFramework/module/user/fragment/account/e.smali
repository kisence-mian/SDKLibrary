.class Lcom/JoyFramework/module/user/fragment/account/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$e;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/JoyFramework/module/user/fragment/account/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/user/fragment/account/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 116
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/account/e;->c:Lcom/JoyFramework/module/user/fragment/account/c;

    iput-object p2, p0, Lcom/JoyFramework/module/user/fragment/account/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/JoyFramework/module/user/fragment/account/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/account/e;->c:Lcom/JoyFramework/module/user/fragment/account/c;

    invoke-static {v0}, Lcom/JoyFramework/module/user/fragment/account/c;->a(Lcom/JoyFramework/module/user/fragment/account/c;)Lcom/JoyFramework/module/user/a/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/module/user/fragment/account/e;->c:Lcom/JoyFramework/module/user/fragment/account/c;

    invoke-virtual {v1}, Lcom/JoyFramework/module/user/fragment/account/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/module/user/fragment/account/e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/JoyFramework/module/user/fragment/account/e;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/JoyFramework/module/user/a/a$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method
