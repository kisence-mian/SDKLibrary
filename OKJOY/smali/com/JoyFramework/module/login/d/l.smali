.class Lcom/JoyFramework/module/login/d/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$c;


# instance fields
.field final synthetic a:Lcom/JoyFramework/remote/bean/w;

.field final synthetic b:Lcom/JoyFramework/module/login/d/k;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/login/d/k;Lcom/JoyFramework/remote/bean/w;)V
    .registers 3

    .prologue
    .line 267
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/l;->b:Lcom/JoyFramework/module/login/d/k;

    iput-object p2, p0, Lcom/JoyFramework/module/login/d/l;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/l;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/module/login/d/m;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/login/d/m;-><init>(Lcom/JoyFramework/module/login/d/l;)V

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/app/Activity;Lcom/JoyFramework/d/ba$b;)V

    .line 309
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/l;->b:Lcom/JoyFramework/module/login/d/k;

    iget-object v1, p0, Lcom/JoyFramework/module/login/d/l;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-static {v0, v1}, Lcom/JoyFramework/module/login/d/k;->a(Lcom/JoyFramework/module/login/d/k;Lcom/JoyFramework/remote/bean/w;)V

    .line 315
    return-void
.end method
