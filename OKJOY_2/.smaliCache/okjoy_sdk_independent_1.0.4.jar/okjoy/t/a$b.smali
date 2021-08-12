.class public Lokjoy/t/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/t/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/t/a;


# direct methods
.method public constructor <init>(Lokjoy/t/a;)V
    .registers 2

    iput-object p1, p0, Lokjoy/t/a$b;->a:Lokjoy/t/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lokjoy/t/a$b;->a:Lokjoy/t/a;

    invoke-virtual {v0}, Lokjoy/t/a;->cancel()V

    iget-object v0, p0, Lokjoy/t/a$b;->a:Lokjoy/t/a;

    .line 1
    iget-object v0, v0, Lokjoy/t/a;->f:Lokjoy/t/a$c;

    if-eqz v0, :cond_e

    .line 2
    invoke-interface {v0, p1}, Lokjoy/t/a$c;->onSureButtonClick(Landroid/view/View;)V

    :cond_e
    return-void
.end method
