.class Lcom/kwad/sdk/b/d/g/c$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/b/d/g/c;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/b/d/g/c;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/b/d/g/c;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/b/d/g/c$e;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/b/d/g/c$e;->a:Lcom/kwad/sdk/b/d/g/c;

    invoke-static {v0}, Lcom/kwad/sdk/b/d/g/c;->q(Lcom/kwad/sdk/b/d/g/c;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
