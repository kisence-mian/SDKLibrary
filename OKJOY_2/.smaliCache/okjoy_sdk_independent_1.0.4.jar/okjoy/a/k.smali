.class public final Lokjoy/a/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/t/a$c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lokjoy/a/l;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILokjoy/a/l;Ljava/lang/String;)V
    .registers 4

    iput p1, p0, Lokjoy/a/k;->a:I

    iput-object p2, p0, Lokjoy/a/k;->b:Lokjoy/a/l;

    iput-object p3, p0, Lokjoy/a/k;->c:Ljava/lang/String;

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

    iget p1, p0, Lokjoy/a/k;->a:I

    const/16 v0, 0x8

    if-ge p1, v0, :cond_10

    iget-object p1, p0, Lokjoy/a/k;->b:Lokjoy/a/l;

    if-eqz p1, :cond_17

    iget-object v0, p0, Lokjoy/a/k;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lokjoy/a/l;->onCancelPay(Ljava/lang/String;)V

    goto :goto_17

    :cond_10
    iget-object p1, p0, Lokjoy/a/k;->b:Lokjoy/a/l;

    if-eqz p1, :cond_17

    invoke-interface {p1}, Lokjoy/a/l;->onContinuePay()V

    :cond_17
    :goto_17
    return-void
.end method
