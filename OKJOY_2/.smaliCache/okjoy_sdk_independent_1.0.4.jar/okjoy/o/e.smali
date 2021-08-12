.class public Lokjoy/o/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/l/c;


# instance fields
.field public final synthetic a:Lokjoy/o/f;


# direct methods
.method public constructor <init>(Lokjoy/o/f;)V
    .registers 2

    iput-object p1, p0, Lokjoy/o/e;->a:Lokjoy/o/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const-string v0, "\u6210\u529f\u6253\u5f00\u5ba2\u670d"

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lokjoy/o/e;->a:Lokjoy/o/f;

    iget-object v0, v0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
