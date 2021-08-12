.class public Lokjoy/q/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/q/h;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/q/h;


# direct methods
.method public constructor <init>(Lokjoy/q/h;)V
    .registers 2

    iput-object p1, p0, Lokjoy/q/h$a;->a:Lokjoy/q/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lokjoy/q/h$a;->a:Lokjoy/q/h;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lokjoy/a/g;->a(Landroid/content/Context;)V

    return-void
.end method
