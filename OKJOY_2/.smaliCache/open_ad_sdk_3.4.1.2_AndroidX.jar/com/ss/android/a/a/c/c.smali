.class public Lcom/ss/android/a/a/c/c;
.super Ljava/lang/Object;
.source "DownloadAlertDialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/a/a/c/c$b;,
        Lcom/ss/android/a/a/c/c$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Lcom/ss/android/a/a/c/c$b;

.field public i:Landroid/view/View;

.field public j:I


# direct methods
.method private constructor <init>(Lcom/ss/android/a/a/c/c$a;)V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/a/a/c/c;->f:Z

    .line 73
    invoke-static {p1}, Lcom/ss/android/a/a/c/c$a;->a(Lcom/ss/android/a/a/c/c$a;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/c;->a:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Lcom/ss/android/a/a/c/c$a;->b(Lcom/ss/android/a/a/c/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/c;->b:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/ss/android/a/a/c/c$a;->c(Lcom/ss/android/a/a/c/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/c;->c:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/ss/android/a/a/c/c$a;->d(Lcom/ss/android/a/a/c/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/c;->d:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lcom/ss/android/a/a/c/c$a;->e(Lcom/ss/android/a/a/c/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/c;->e:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lcom/ss/android/a/a/c/c$a;->f(Lcom/ss/android/a/a/c/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/a/a/c/c;->f:Z

    .line 79
    invoke-static {p1}, Lcom/ss/android/a/a/c/c$a;->g(Lcom/ss/android/a/a/c/c$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/c;->g:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-static {p1}, Lcom/ss/android/a/a/c/c$a;->h(Lcom/ss/android/a/a/c/c$a;)Lcom/ss/android/a/a/c/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/c;->h:Lcom/ss/android/a/a/c/c$b;

    .line 81
    iget-object v0, p1, Lcom/ss/android/a/a/c/c$a;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/ss/android/a/a/c/c;->i:Landroid/view/View;

    .line 82
    iget p1, p1, Lcom/ss/android/a/a/c/c$a;->b:I

    iput p1, p0, Lcom/ss/android/a/a/c/c;->j:I

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/a/a/c/c$a;Lcom/ss/android/a/a/c/c$1;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1}, Lcom/ss/android/a/a/c/c;-><init>(Lcom/ss/android/a/a/c/c$a;)V

    return-void
.end method
