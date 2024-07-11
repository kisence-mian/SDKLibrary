.class public final Lokjoy/q/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/s/b;


# instance fields
.field public final synthetic a:Lokjoy/q/i;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokjoy/q/i;Landroid/app/Activity;[Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lokjoy/q/g;->a:Lokjoy/q/i;

    iput-object p2, p0, Lokjoy/q/g;->b:Landroid/app/Activity;

    iput-object p3, p0, Lokjoy/q/g;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1d

    iget-object p2, p0, Lokjoy/q/g;->b:Landroid/app/Activity;

    iget-object v1, p0, Lokjoy/q/g;->a:Lokjoy/q/i;

    .line 1
    sput-object p1, Lokjoy/q/h;->b:Ljava/util/List;

    sput-object v1, Lokjoy/q/h;->a:Lokjoy/q/i;

    new-instance p1, Lokjoy/q/h;

    invoke-direct {p1}, Lokjoy/q/h;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string v0, "showGotoSetting"

    invoke-virtual {p1, p2, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_52

    .line 2
    :cond_1d
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lokjoy/q/g;->b:Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-direct {p1, p2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u6743\u9650\u7533\u8bf7"

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u6e38\u620f\u8fd0\u884c\u9700\u8981\u4e00\u4e9b\u5fc5\u8981\u7684\u6743\u9650\uff0c\u8bf7\u7ed9\u4e88\u6388\u6743"

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lokjoy/q/g$b;

    invoke-direct {p2, p0}, Lokjoy/q/g$b;-><init>(Lokjoy/q/g;)V

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lokjoy/q/g$a;

    invoke-direct {p2, p0}, Lokjoy/q/g$a;-><init>(Lokjoy/q/g;)V

    const-string v0, "\u7533\u8bf7"

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_52
    return-void
.end method

.method public b(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    iget-object p1, p0, Lokjoy/q/g;->a:Lokjoy/q/i;

    invoke-interface {p1}, Lokjoy/q/i;->onPermissionsGranted()V

    :cond_7
    return-void
.end method
