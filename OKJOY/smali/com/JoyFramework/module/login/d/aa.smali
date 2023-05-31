.class Lcom/JoyFramework/module/login/d/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$c;


# instance fields
.field final synthetic a:Lcom/JoyFramework/remote/bean/w;

.field final synthetic b:Lcom/JoyFramework/module/login/d/v;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/d/v;Lcom/JoyFramework/remote/bean/w;)V
    .registers 3

    .prologue
    .line 380
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/aa;->b:Lcom/JoyFramework/module/login/d/v;

    iput-object p2, p0, Lcom/JoyFramework/module/login/d/aa;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 383
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/aa;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->b(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/wight/f;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/JoyFramework/module/login/d/aa;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->b(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/wight/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/wight/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/JoyFramework/module/login/d/aa;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 384
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/aa;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-static {v0}, Lcom/JoyFramework/module/login/d/v;->b(Lcom/JoyFramework/module/login/d/v;)Lcom/JoyFramework/wight/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/wight/f;->dismiss()V

    .line 385
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/aa;->b:Lcom/JoyFramework/module/login/d/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/module/login/d/v;->a(Lcom/JoyFramework/module/login/d/v;Lcom/JoyFramework/wight/f;)Lcom/JoyFramework/wight/f;

    .line 388
    :cond_2b
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/aa;->b:Lcom/JoyFramework/module/login/d/v;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/v;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/module/login/d/ab;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/login/d/ab;-><init>(Lcom/JoyFramework/module/login/d/aa;)V

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/app/Activity;Lcom/JoyFramework/d/ba$b;)V

    .line 419
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/aa;->b:Lcom/JoyFramework/module/login/d/v;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/aa;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-static {v0, v1}, Lcom/JoyFramework/module/login/d/v;->a(Lcom/JoyFramework/module/login/d/v;Lcom/JoyFramework/remote/bean/w;)V

    .line 425
    return-void
.end method
