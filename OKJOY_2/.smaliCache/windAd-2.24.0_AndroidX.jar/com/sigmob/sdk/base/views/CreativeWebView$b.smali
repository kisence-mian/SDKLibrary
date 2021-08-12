.class Lcom/sigmob/sdk/base/views/CreativeWebView$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/views/CreativeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/view/MotionEvent;

.field final synthetic b:Lcom/sigmob/sdk/base/views/CreativeWebView;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/views/CreativeWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/CreativeWebView$b;->b:Lcom/sigmob/sdk/base/views/CreativeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_2e

    goto :goto_2d

    :pswitch_9
    iget-boolean p1, p0, Lcom/sigmob/sdk/base/views/CreativeWebView$b;->c:Z

    if-nez p1, :cond_e

    return v0

    :cond_e
    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/CreativeWebView$b;->c:Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CreativeWebView$b;->b:Lcom/sigmob/sdk/base/views/CreativeWebView;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->a(Lcom/sigmob/sdk/base/views/CreativeWebView;)Lcom/sigmob/sdk/base/views/CreativeWebView$a;

    move-result-object p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/sigmob/sdk/base/views/CreativeWebView$b;->b:Lcom/sigmob/sdk/base/views/CreativeWebView;

    invoke-static {p1}, Lcom/sigmob/sdk/base/views/CreativeWebView;->a(Lcom/sigmob/sdk/base/views/CreativeWebView;)Lcom/sigmob/sdk/base/views/CreativeWebView$a;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/CreativeWebView$b;->a:Landroid/view/MotionEvent;

    invoke-interface {p1, v1, p2}, Lcom/sigmob/sdk/base/views/CreativeWebView$a;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_2d

    :pswitch_24
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/CreativeWebView$b;->c:Z

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/CreativeWebView$b;->a:Landroid/view/MotionEvent;

    :cond_2d
    :goto_2d
    return v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_9
    .end packed-switch
.end method
