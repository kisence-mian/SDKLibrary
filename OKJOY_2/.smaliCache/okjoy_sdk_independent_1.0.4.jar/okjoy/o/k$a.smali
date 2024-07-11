.class public Lokjoy/o/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/t/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/o/k;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/o/k;


# direct methods
.method public constructor <init>(Lokjoy/o/k;)V
    .registers 2

    iput-object p1, p0, Lokjoy/o/k$a;->a:Lokjoy/o/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onSureButtonClick(Landroid/view/View;)V
    .registers 3

    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object p1

    iget-object v0, p0, Lokjoy/o/k$a;->a:Lokjoy/o/k;

    iget-object v0, v0, Lokjoy/c/b;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->logout(Landroid/app/Activity;)V

    iget-object p1, p0, Lokjoy/o/k$a;->a:Lokjoy/o/k;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
