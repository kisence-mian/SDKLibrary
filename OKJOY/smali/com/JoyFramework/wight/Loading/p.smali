.class Lcom/JoyFramework/wight/Loading/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;


# instance fields
.field final synthetic a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;)V
    .registers 2

    .prologue
    .line 383
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/p;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 386
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/p;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    const/4 v1, 0x2

    new-instance v2, Lcom/JoyFramework/wight/Loading/q;

    invoke-direct {v2, p0}, Lcom/JoyFramework/wight/Loading/q;-><init>(Lcom/JoyFramework/wight/Loading/p;)V

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;ILcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V

    .line 394
    return-void
.end method
