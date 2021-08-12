.class Lcom/ss/android/downloadlib/d/f$1;
.super Ljava/lang/Object;
.source "NewDownloadDepend.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/d/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/appdownloader/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ss/android/downloadlib/d/f;

.field private c:Lcom/ss/android/a/a/c/c$a;

.field private d:Landroid/content/DialogInterface$OnClickListener;

.field private e:Landroid/content/DialogInterface$OnClickListener;

.field private f:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/d/f;Landroid/content/Context;)V
    .registers 3

    .line 41
    iput-object p1, p0, Lcom/ss/android/downloadlib/d/f$1;->b:Lcom/ss/android/downloadlib/d/f;

    iput-object p2, p0, Lcom/ss/android/downloadlib/d/f$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance p1, Lcom/ss/android/a/a/c/c$a;

    invoke-direct {p1, p2}, Lcom/ss/android/a/a/c/c$a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ss/android/downloadlib/d/f$1;->c:Lcom/ss/android/a/a/c/c$a;

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/d/f$1;)Landroid/content/DialogInterface$OnClickListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/ss/android/downloadlib/d/f$1;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/d/f$1;)Landroid/content/DialogInterface$OnClickListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/ss/android/downloadlib/d/f$1;->e:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic c(Lcom/ss/android/downloadlib/d/f$1;)Landroid/content/DialogInterface$OnCancelListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/ss/android/downloadlib/d/f$1;->f:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/appdownloader/c/k;
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/f$1;->c:Lcom/ss/android/a/a/c/c$a;

    new-instance v1, Lcom/ss/android/downloadlib/d/f$1$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/d/f$1$1;-><init>(Lcom/ss/android/downloadlib/d/f$1;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->a(Lcom/ss/android/a/a/c/c$b;)Lcom/ss/android/a/a/c/c$a;

    .line 134
    invoke-static {}, Lcom/ss/android/downloadlib/d/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getThemedAlertDlgBuilder"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/h/j;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 135
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/f$1;->c:Lcom/ss/android/a/a/c/c$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->a(I)Lcom/ss/android/a/a/c/c$a;

    .line 136
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->d()Lcom/ss/android/a/a/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/d/f$1;->c:Lcom/ss/android/a/a/c/c$a;

    invoke-virtual {v1}, Lcom/ss/android/a/a/c/c$a;->a()Lcom/ss/android/a/a/c/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/a/a/a/k;->b(Lcom/ss/android/a/a/c/c;)Landroid/app/Dialog;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/ss/android/downloadlib/d/f$a;

    invoke-direct {v1, v0}, Lcom/ss/android/downloadlib/d/f$a;-><init>(Landroid/app/Dialog;)V

    return-object v1
.end method

.method public a(I)Lcom/ss/android/socialbase/appdownloader/c/l;
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/f$1;->c:Lcom/ss/android/a/a/c/c$a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/d/f$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/a/a/c/c$a;->a(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    .line 60
    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/l;
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/f$1;->c:Lcom/ss/android/a/a/c/c$a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/d/f$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/a/a/c/c$a;->c(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    .line 72
    iput-object p2, p0, Lcom/ss/android/downloadlib/d/f$1;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/ss/android/socialbase/appdownloader/c/l;
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/ss/android/downloadlib/d/f$1;->f:Landroid/content/DialogInterface$OnCancelListener;

    .line 100
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/c/l;
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/f$1;->c:Lcom/ss/android/a/a/c/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/a/a/c/c$a;->b(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    .line 66
    return-object p0
.end method

.method public a(Z)Lcom/ss/android/socialbase/appdownloader/c/l;
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/f$1;->c:Lcom/ss/android/a/a/c/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/a/a/c/c$a;->a(Z)Lcom/ss/android/a/a/c/c$a;

    .line 106
    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/l;
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/ss/android/downloadlib/d/f$1;->c:Lcom/ss/android/a/a/c/c$a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/d/f$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ss/android/a/a/c/c$a;->d(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    .line 86
    iput-object p2, p0, Lcom/ss/android/downloadlib/d/f$1;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    return-object p0
.end method
