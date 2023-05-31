.class public final Lcom/ss/android/a/a/c/c$a;
.super Ljava/lang/Object;
.source "DownloadAlertDialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/a/a/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Lcom/ss/android/a/a/c/c$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/ss/android/a/a/c/c$a;->c:Landroid/content/Context;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/ss/android/a/a/c/c$a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ss/android/a/a/c/c$a;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/ss/android/a/a/c/c$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ss/android/a/a/c/c$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/ss/android/a/a/c/c$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ss/android/a/a/c/c$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ss/android/a/a/c/c$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ss/android/a/a/c/c$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/ss/android/a/a/c/c$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ss/android/a/a/c/c$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/ss/android/a/a/c/c$a;)Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/ss/android/a/a/c/c$a;->h:Z

    return v0
.end method

.method static synthetic g(Lcom/ss/android/a/a/c/c$a;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ss/android/a/a/c/c$a;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic h(Lcom/ss/android/a/a/c/c$a;)Lcom/ss/android/a/a/c/c$b;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ss/android/a/a/c/c$a;->j:Lcom/ss/android/a/a/c/c$b;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/ss/android/a/a/c/c$a;
    .registers 2

    .prologue
    .line 142
    iput p1, p0, Lcom/ss/android/a/a/c/c$a;->b:I

    .line 143
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/ss/android/a/a/c/c$a;
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/ss/android/a/a/c/c$a;->i:Landroid/graphics/drawable/Drawable;

    .line 128
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/c/c$b;)Lcom/ss/android/a/a/c/c$a;
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/ss/android/a/a/c/c$a;->j:Lcom/ss/android/a/a/c/c$b;

    .line 133
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ss/android/a/a/c/c$a;->d:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public a(Z)Lcom/ss/android/a/a/c/c$a;
    .registers 2

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/ss/android/a/a/c/c$a;->h:Z

    .line 123
    return-object p0
.end method

.method public a()Lcom/ss/android/a/a/c/c;
    .registers 3

    .prologue
    .line 148
    new-instance v0, Lcom/ss/android/a/a/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/a/a/c/c;-><init>(Lcom/ss/android/a/a/c/c$a;Lcom/ss/android/a/a/c/c$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/ss/android/a/a/c/c$a;->e:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/ss/android/a/a/c/c$a;->f:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/ss/android/a/a/c/c$a;
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/ss/android/a/a/c/c$a;->g:Ljava/lang/String;

    .line 118
    return-object p0
.end method
