.class Lcom/JoyFramework/wight/Loading/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/Loading/b;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/b;)V
    .registers 2

    .prologue
    .line 541
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/c;->a:Lcom/JoyFramework/wight/Loading/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .prologue
    .line 545
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/c;->a:Lcom/JoyFramework/wight/Loading/b;

    iget-object v0, v0, Lcom/JoyFramework/wight/Loading/b;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/JoyFramework/wight/Loading/c;->a:Lcom/JoyFramework/wight/Loading/b;

    iget-object v2, v2, Lcom/JoyFramework/wight/Loading/b;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v2}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->h(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I

    move-result v2

    iget-object v3, p0, Lcom/JoyFramework/wight/Loading/c;->a:Lcom/JoyFramework/wight/Loading/b;

    iget-object v3, v3, Lcom/JoyFramework/wight/Loading/b;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v3}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->i(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)I

    move-result v3

    new-instance v4, Lcom/JoyFramework/wight/Loading/d;

    invoke-direct {v4, p0}, Lcom/JoyFramework/wight/Loading/d;-><init>(Lcom/JoyFramework/wight/Loading/c;)V

    new-instance v5, Lcom/JoyFramework/wight/Loading/e;

    invoke-direct {v5, p0}, Lcom/JoyFramework/wight/Loading/e;-><init>(Lcom/JoyFramework/wight/Loading/c;)V

    invoke-static/range {v0 .. v5}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;IIILcom/JoyFramework/wight/Loading/OkGameLoadingView$b;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V

    .line 568
    return-void
.end method
