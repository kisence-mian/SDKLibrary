.class Lcom/JoyFramework/wight/Loading/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/Loading/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/c;)V
    .registers 2

    .prologue
    .line 555
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/e;->a:Lcom/JoyFramework/wight/Loading/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 558
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/e;->a:Lcom/JoyFramework/wight/Loading/c;

    iget-object v0, v0, Lcom/JoyFramework/wight/Loading/c;->a:Lcom/JoyFramework/wight/Loading/b;

    iget-object v0, v0, Lcom/JoyFramework/wight/Loading/b;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    const/4 v1, 0x2

    new-instance v2, Lcom/JoyFramework/wight/Loading/f;

    invoke-direct {v2, p0}, Lcom/JoyFramework/wight/Loading/f;-><init>(Lcom/JoyFramework/wight/Loading/e;)V

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;ILcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V

    .line 566
    return-void
.end method
