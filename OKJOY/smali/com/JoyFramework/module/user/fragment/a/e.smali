.class Lcom/JoyFramework/module/user/fragment/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/ba$b;


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/user/fragment/a/d;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/user/fragment/a/d;)V
    .registers 2

    .prologue
    .line 156
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/a/e;->a:Lcom/JoyFramework/module/user/fragment/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/e;->a:Lcom/JoyFramework/module/user/fragment/a/d;

    iget-object v0, v0, Lcom/JoyFramework/module/user/fragment/a/d;->a:Lcom/JoyFramework/module/user/fragment/a/c;

    iget-object v0, v0, Lcom/JoyFramework/module/user/fragment/a/c;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-static {v0}, Lcom/JoyFramework/module/user/fragment/a/a;->a(Lcom/JoyFramework/module/user/fragment/a/a;)V

    .line 160
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/e;->a:Lcom/JoyFramework/module/user/fragment/a/d;

    iget-object v0, v0, Lcom/JoyFramework/module/user/fragment/a/d;->a:Lcom/JoyFramework/module/user/fragment/a/c;

    iget-object v0, v0, Lcom/JoyFramework/module/user/fragment/a/c;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u60a8\u5df2\u62d2\u7edd\u4f7f\u7528\u6253\u7535\u8bdd\u529f\u80fd"

    const/4 v2, 0x0

    new-array v2, v2, [Z

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/cc;->a(Landroid/app/Activity;Ljava/lang/String;[Z)V

    .line 165
    return-void
.end method
