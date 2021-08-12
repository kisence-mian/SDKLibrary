.class public Lokjoy/q/h$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/q/h;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/AlertDialog;

.field public final synthetic b:Lokjoy/q/h;


# direct methods
.method public constructor <init>(Lokjoy/q/h;Landroid/app/AlertDialog;)V
    .registers 3

    iput-object p1, p0, Lokjoy/q/h$b;->b:Lokjoy/q/h;

    iput-object p2, p0, Lokjoy/q/h$b;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object p1, p0, Lokjoy/q/h$b;->a:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lokjoy/q/h$b$a;

    invoke-direct {v0, p0}, Lokjoy/q/h$b$a;-><init>(Lokjoy/q/h$b;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
