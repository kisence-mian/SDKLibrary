.class Lcom/kwad/sdk/c/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/c/a;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/c/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-static {v0}, Lcom/kwad/sdk/c/a;->b(Lcom/kwad/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-lez p1, :cond_69

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v1, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-static {v1}, Lcom/kwad/sdk/c/a;->b(Lcom/kwad/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-static {v1}, Lcom/kwad/sdk/c/a;->b(Lcom/kwad/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_69

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-static {v1}, Lcom/kwad/sdk/c/a;->b(Lcom/kwad/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_69

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-static {v1}, Lcom/kwad/sdk/c/a;->b(Lcom/kwad/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-static {v1}, Lcom/kwad/sdk/c/a;->b(Lcom/kwad/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_69

    const-string p1, "LandingPageWebCard"

    const-string p2, "onClick backIcon"

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_79

    iget-object p1, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/kwad/sdk/c/a;->a(Lcom/kwad/sdk/c/a;J)J

    goto :goto_db

    :cond_79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_db

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object p1, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-static {p1}, Lcom/kwad/sdk/c/a;->c(Lcom/kwad/sdk/c/a;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object p1, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-static {p1}, Lcom/kwad/sdk/c/a;->c(Lcom/kwad/sdk/c/a;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_d6

    const-wide/16 v3, 0x3c

    cmp-long p1, v1, v3

    if-lez p1, :cond_d6

    const-wide/16 v3, 0x1f4

    cmp-long p1, v1, v3

    if-gez p1, :cond_d6

    iget-object p1, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-static {p1}, Lcom/kwad/sdk/c/a;->d(Lcom/kwad/sdk/c/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    const/16 v1, 0x48

    iget-object v2, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-static {v2}, Lcom/kwad/sdk/c/a;->e(Lcom/kwad/sdk/c/a;)Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/utils/o$a;)V

    iget-object p1, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-static {p1}, Lcom/kwad/sdk/c/a;->f(Lcom/kwad/sdk/c/a;)Z

    move-result p1

    if-nez p1, :cond_d6

    iget-object p1, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-static {p1, p2}, Lcom/kwad/sdk/c/a;->b(Lcom/kwad/sdk/c/a;Z)Z

    iget-object p1, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-virtual {p1}, Lcom/kwad/sdk/c/a;->e()Lcom/kwad/sdk/core/webview/jshandler/a$b;

    move-result-object p1

    if-eqz p1, :cond_d6

    iget-object p1, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-virtual {p1}, Lcom/kwad/sdk/c/a;->e()Lcom/kwad/sdk/core/webview/jshandler/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/kwad/sdk/core/webview/jshandler/a$b;->a()V

    :cond_d6
    iget-object p1, p0, Lcom/kwad/sdk/c/a$4;->a:Lcom/kwad/sdk/c/a;

    invoke-static {p1, v5, v6}, Lcom/kwad/sdk/c/a;->a(Lcom/kwad/sdk/c/a;J)J

    :cond_db
    :goto_db
    return v0
.end method
