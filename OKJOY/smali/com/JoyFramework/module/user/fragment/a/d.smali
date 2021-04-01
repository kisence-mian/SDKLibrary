.class Lcom/JoyFramework/module/user/fragment/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/user/fragment/a/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/user/fragment/a/c;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/a/d;->a:Lcom/JoyFramework/module/user/fragment/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/d;->a:Lcom/JoyFramework/module/user/fragment/a/c;

    iget-object v0, v0, Lcom/JoyFramework/module/user/fragment/a/c;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-static {v0}, Lcom/JoyFramework/module/user/fragment/a/a;->a(Lcom/JoyFramework/module/user/fragment/a/a;)V

    .line 150
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 154
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/d;->a:Lcom/JoyFramework/module/user/fragment/a/c;

    iget-object v0, v0, Lcom/JoyFramework/module/user/fragment/a/c;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u62d2\u7edd\u8be5\u6743\u9650\u540e\uff0c\u5c06\u65e0\u6cd5\u4f7f\u7528\u6253\u7535\u8bdd\u529f\u80fd"

    const-string v2, "android.permission.CALL_PHONE"

    new-instance v3, Lcom/JoyFramework/module/user/fragment/a/e;

    invoke-direct {v3, p0}, Lcom/JoyFramework/module/user/fragment/a/e;-><init>(Lcom/JoyFramework/module/user/fragment/a/d;)V

    invoke-static {v0, v1, v2, v3}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    .line 167
    return-void
.end method
