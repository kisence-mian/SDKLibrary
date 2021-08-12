.class public Lokjoy/t/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/t/c;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/t/c;


# direct methods
.method public constructor <init>(Lokjoy/t/c;)V
    .registers 2

    iput-object p1, p0, Lokjoy/t/c$b;->a:Lokjoy/t/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lokjoy/t/c$b;->a:Lokjoy/t/c;

    invoke-virtual {v0}, Lokjoy/t/c;->cancel()V

    iget-object v0, p0, Lokjoy/t/c$b;->a:Lokjoy/t/c;

    .line 1
    iget-object v0, v0, Lokjoy/t/c;->g:Lokjoy/t/c$c;

    if-eqz v0, :cond_e

    .line 2
    invoke-interface {v0, p1}, Lokjoy/t/c$c;->onSureButtonClick(Landroid/view/View;)V

    :cond_e
    return-void
.end method
