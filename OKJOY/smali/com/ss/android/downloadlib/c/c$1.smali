.class Lcom/ss/android/downloadlib/c/c$1;
.super Ljava/lang/Object;
.source "NewDownloadDepend.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/c/c;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/appdownloader/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ss/android/downloadlib/c/c;

.field private c:Lcom/ss/android/a/a/c/c$a;

.field private d:Landroid/content/DialogInterface$OnClickListener;

.field private e:Landroid/content/DialogInterface$OnClickListener;

.field private f:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/c/c;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ss/android/downloadlib/c/c$1;->b:Lcom/ss/android/downloadlib/c/c;

    iput-object p2, p0, Lcom/ss/android/downloadlib/c/c$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/ss/android/a/a/c/c$a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/c/c$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ss/android/a/a/c/c$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/c/c$1;->c:Lcom/ss/android/a/a/c/c$a;

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/c/c$1;)Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/c$1;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/c/c$1;)Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/c$1;->e:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic c(Lcom/ss/android/downloadlib/c/c$1;)Landroid/content/DialogInterface$OnCancelListener;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/c$1;->f:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/appdownloader/c/j;
    .registers 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/c$1;->c:Lcom/ss/android/a/a/c/c$a;

    new-instance v1, Lcom/ss/android/downloadlib/c/c$1$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/c/c$1$1;-><init>(Lcom/ss/android/downloadlib/c/c$1;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->a(Lcom/ss/android/a/a/c/c$b;)Lcom/ss/android/a/a/c/c$a;

    .line 134
    invoke-static {}, Lcom/ss/android/downloadlib/c/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getThemedAlertDlgBuilder"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/f;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 135
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/c$1;->c:Lcom/ss/android/a/a/c/c$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->a(I)Lcom/ss/android/a/a/c/c$a;

    .line 136
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->d()Lcom/ss/android/a/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/c/c$1;->c:Lcom/ss/android/a/a/c/c$a;

    invoke-virtual {v1}, Lcom/ss/android/a/a/c/c$a;->a()Lcom/ss/android/a/a/c/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/a/a/a/j;->b(Lcom/ss/android/a/a/c/c;)Landroid/app/Dialog;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/ss/android/downloadlib/c/c$a;

    invoke-direct {v1, v0}, Lcom/ss/android/downloadlib/c/c$a;-><init>(Landroid/app/Dialog;)V

    return-object v1
.end method

.method public a(I)Lcom/ss/android/socialbase/appdownloader/c/k;
    .registers 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/c$1;->c:Lcom/ss/android/a/a/c/c$a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/c/c$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->a(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    .line 60
    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/k;
    .registers 5

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/c$1;->c:Lcom/ss/android/a/a/c/c$a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/c/c$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->c(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    .line 72
    iput-object p2, p0, Lcom/ss/android/downloadlib/c/c$1;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/ss/android/socialbase/appdownloader/c/k;
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ss/android/downloadlib/c/c$1;->f:Landroid/content/DialogInterface$OnCancelListener;

    .line 100
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/c/k;
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/c$1;->c:Lcom/ss/android/a/a/c/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/a/a/c/c$a;->b(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    .line 66
    return-object p0
.end method

.method public a(Z)Lcom/ss/android/socialbase/appdownloader/c/k;
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/c$1;->c:Lcom/ss/android/a/a/c/c$a;

    invoke-virtual {v0, p1}, Lcom/ss/android/a/a/c/c$a;->a(Z)Lcom/ss/android/a/a/c/c$a;

    .line 106
    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/k;
    .registers 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ss/android/downloadlib/c/c$1;->c:Lcom/ss/android/a/a/c/c$a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/c/c$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/a/a/c/c$a;->d(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;

    .line 86
    iput-object p2, p0, Lcom/ss/android/downloadlib/c/c$1;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    return-object p0
.end method
