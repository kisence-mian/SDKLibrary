.class Lcom/JoyFramework/wight/Loading/b;
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
    .line 537
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/b;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 541
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/b;->a:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    const/4 v1, 0x1

    new-instance v2, Lcom/JoyFramework/wight/Loading/c;

    invoke-direct {v2, p0}, Lcom/JoyFramework/wight/Loading/c;-><init>(Lcom/JoyFramework/wight/Loading/b;)V

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;ILcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V

    .line 570
    return-void
.end method
