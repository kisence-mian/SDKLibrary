.class Lcom/JoyFramework/wight/Loading/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;

.field final synthetic c:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;


# direct methods
.method constructor <init>(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;ILcom/JoyFramework/wight/Loading/OkGameLoadingView$a;)V
    .registers 4

    .prologue
    .line 605
    iput-object p1, p0, Lcom/JoyFramework/wight/Loading/h;->c:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    iput p2, p0, Lcom/JoyFramework/wight/Loading/h;->a:I

    iput-object p3, p0, Lcom/JoyFramework/wight/Loading/h;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 608
    iget v0, p0, Lcom/JoyFramework/wight/Loading/h;->a:I

    packed-switch v0, :pswitch_data_40

    .line 625
    :goto_6
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/h;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;

    if-eqz v0, :cond_f

    .line 626
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/h;->b:Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;

    invoke-interface {v0}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView$a;->a()V

    .line 628
    :cond_f
    return-void

    .line 610
    :pswitch_10
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/h;->c:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 611
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/h;->c:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 612
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/h;->c:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    goto :goto_6

    .line 615
    :pswitch_20
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/h;->c:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 616
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/h;->c:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 617
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/h;->c:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    goto :goto_6

    .line 620
    :pswitch_30
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/h;->c:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->b(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 621
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/h;->c:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->c(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    .line 622
    iget-object v0, p0, Lcom/JoyFramework/wight/Loading/h;->c:Lcom/JoyFramework/wight/Loading/OkGameLoadingView;

    invoke-static {v0, v1}, Lcom/JoyFramework/wight/Loading/OkGameLoadingView;->a(Lcom/JoyFramework/wight/Loading/OkGameLoadingView;I)I

    goto :goto_6

    .line 608
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_10
        :pswitch_20
        :pswitch_30
    .end packed-switch
.end method
