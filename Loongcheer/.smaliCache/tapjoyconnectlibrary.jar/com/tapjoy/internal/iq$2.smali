.class final Lcom/tapjoy/internal/iq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/iq;->a(Lcom/tapjoy/internal/ic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ii;

.field final synthetic b:Landroid/widget/RelativeLayout;

.field final synthetic c:Lcom/tapjoy/internal/ii;

.field final synthetic d:Lcom/tapjoy/internal/ib;

.field final synthetic e:Lcom/tapjoy/internal/iq;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/iq;Lcom/tapjoy/internal/ii;Landroid/widget/RelativeLayout;Lcom/tapjoy/internal/ii;Lcom/tapjoy/internal/ib;)V
    .registers 6

    .line 279
    iput-object p1, p0, Lcom/tapjoy/internal/iq$2;->e:Lcom/tapjoy/internal/iq;

    iput-object p2, p0, Lcom/tapjoy/internal/iq$2;->a:Lcom/tapjoy/internal/ii;

    iput-object p3, p0, Lcom/tapjoy/internal/iq$2;->b:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/tapjoy/internal/iq$2;->c:Lcom/tapjoy/internal/ii;

    iput-object p5, p0, Lcom/tapjoy/internal/iq$2;->d:Lcom/tapjoy/internal/ib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 282
    iget-object v0, p0, Lcom/tapjoy/internal/iq$2;->a:Lcom/tapjoy/internal/ii;

    if-eqz v0, :cond_e

    .line 283
    invoke-virtual {v0}, Lcom/tapjoy/internal/ii;->b()V

    .line 284
    iget-object v0, p0, Lcom/tapjoy/internal/iq$2;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/internal/iq$2;->a:Lcom/tapjoy/internal/ii;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 286
    :cond_e
    iget-object v0, p0, Lcom/tapjoy/internal/iq$2;->c:Lcom/tapjoy/internal/ii;

    if-eqz v0, :cond_1c

    .line 287
    invoke-virtual {v0}, Lcom/tapjoy/internal/ii;->b()V

    .line 288
    iget-object v0, p0, Lcom/tapjoy/internal/iq$2;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/internal/iq$2;->c:Lcom/tapjoy/internal/ii;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 290
    :cond_1c
    iget-object v0, p0, Lcom/tapjoy/internal/iq$2;->e:Lcom/tapjoy/internal/iq;

    invoke-static {v0}, Lcom/tapjoy/internal/iq;->a(Lcom/tapjoy/internal/iq;)Lcom/tapjoy/internal/iq$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/iq$2;->d:Lcom/tapjoy/internal/ib;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/iq$a;->a(Lcom/tapjoy/internal/ib;)V

    .line 291
    return-void
.end method
