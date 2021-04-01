.class Lcom/JoyFramework/wight/Loading/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/Loading/p;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/p;)V
    .registers 2

    .prologue
    .line 386
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/q;->a:Lcom/JoyFramework/wight/Loading/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/q;->a:Lcom/JoyFramework/wight/Loading/p;

    iget-object v0, v0, Lcom/JoyFramework/wight/Loading/p;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Z)Z

    .line 390
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/q;->a:Lcom/JoyFramework/wight/Loading/p;

    iget-object v0, v0, Lcom/JoyFramework/wight/Loading/p;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    sget-object v1, Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;->g:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;Lcom/JoyFramework/wight/Loading/OkGameLoadingView$c;)V

    .line 392
    return-void
.end method
