.class Lcom/JoyFramework/module/login/d/n;
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
    .line 326
    iput-object p1, p0, Lcom/JoyFramework/module/login/d/n;->b:Lcom/JoyFramework/module/login/d/k;

    iput-object p2, p0, Lcom/JoyFramework/module/login/d/n;->a:Lcom/JoyFramework/remote/bean/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/n;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/module/login/d/o;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/login/d/o;-><init>(Lcom/JoyFramework/module/login/d/n;)V

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/app/Activity;Lcom/JoyFramework/d/ba$b;)V

    .line 369
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/JoyFramework/module/login/d/n;->b:Lcom/JoyFramework/module/login/d/k;

    invoke-virtual {v0}, Lcom/JoyFramework/module/login/d/k;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/module/login/d/p;

    invoke-direct {v1, p0}, Lcom/JoyFramework/module/login/d/p;-><init>(Lcom/JoyFramework/module/login/d/n;)V

    invoke-static {v0, v1}, Lcom/JoyFramework/d/bw;->a(Landroid/app/Activity;Lcom/JoyFramework/d/ba$b;)V

    .line 413
    return-void
.end method
