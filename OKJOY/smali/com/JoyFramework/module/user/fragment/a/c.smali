.class Lcom/JoyFramework/module/user/fragment/a/c;
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
    .line 139
    iput-object p1, p0, Lcom/JoyFramework/module/user/fragment/a/c;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/c;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 143
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/c;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.CALL_PHONE"

    invoke-static {v0, v1}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 144
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/c;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/JoyFramework/module/BaseActivity;

    if-eqz v0, :cond_34

    .line 145
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/c;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-virtual {v0}, Lcom/JoyFramework/module/user/fragment/a/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.CALL_PHONE"

    new-instance v2, Lcom/JoyFramework/module/user/fragment/a/d;

    invoke-direct {v2, p0}, Lcom/JoyFramework/module/user/fragment/a/d;-><init>(Lcom/JoyFramework/module/user/fragment/a/c;)V

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/d/ba$b;)V

    .line 178
    :cond_34
    :goto_34
    return-void

    .line 171
    :cond_35
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/c;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-static {v0}, Lcom/JoyFramework/module/user/fragment/a/a;->a(Lcom/JoyFramework/module/user/fragment/a/a;)V

    goto :goto_34

    .line 175
    :cond_3b
    iget-object v0, p0, Lcom/JoyFramework/module/user/fragment/a/c;->a:Lcom/JoyFramework/module/user/fragment/a/a;

    invoke-static {v0}, Lcom/JoyFramework/module/user/fragment/a/a;->a(Lcom/JoyFramework/module/user/fragment/a/a;)V

    goto :goto_34
.end method
