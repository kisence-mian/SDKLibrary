.class Lcom/JoyFramework/wight/Loading/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/Loading/t;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/t;)V
    .registers 2

    .prologue
    .line 801
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/u;->a:Lcom/JoyFramework/wight/Loading/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 804
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/u;->a:Lcom/JoyFramework/wight/Loading/t;

    iget-object v0, v0, Lcom/JoyFramework/wight/Loading/t;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z

    .line 805
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/u;->a:Lcom/JoyFramework/wight/Loading/t;

    iget-object v0, v0, Lcom/JoyFramework/wight/Loading/t;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z

    .line 806
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/u;->a:Lcom/JoyFramework/wight/Loading/t;

    iget-object v0, v0, Lcom/JoyFramework/wight/Loading/t;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    sget-object v1, Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;->e:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;)V

    .line 807
    return-void
.end method
