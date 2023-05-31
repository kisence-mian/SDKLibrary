.class Lcom/sigmob/sdk/base/views/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:Landroid/view/MotionEvent;

.field final synthetic b:Lcom/sigmob/sdk/base/views/CreativeWebView;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/CreativeWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/h;->b:Lcom/sigmob/sdk/base/views/CreativeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    :cond_8
    :goto_8
    return v2

    :pswitch_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/h;->c:Z

    iput-object p2, p0, Lcom/sigmob/sdk/base/views/h;->a:Landroid/view/MotionEvent;

    goto :goto_8

    :pswitch_f
    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/h;->c:Z

    if-eqz v0, :cond_8

    iput-boolean v2, p0, Lcom/sigmob/sdk/base/views/h;->c:Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/h;->b:Lcom/sigmob/sdk/base/views/CreativeWebView;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->a(Lcom/sigmob/sdk/base/views/CreativeWebView;)Lcom/sigmob/sdk/base/views/g;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/h;->b:Lcom/sigmob/sdk/base/views/CreativeWebView;

    invoke-static {v0}, Lcom/sigmob/sdk/base/views/CreativeWebView;->a(Lcom/sigmob/sdk/base/views/CreativeWebView;)Lcom/sigmob/sdk/base/views/g;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/h;->a:Landroid/view/MotionEvent;

    invoke-interface {v0, v1, p2}, Lcom/sigmob/sdk/base/views/g;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_8

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method
