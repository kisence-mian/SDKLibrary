.class Lcom/ss/android/downloadlib/e;
.super Ljava/lang/Object;
.source "DownloadConfigureImpl.java"

# interfaces
.implements Lcom/ss/android/a/a/a;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/a/a/a/a;)Lcom/ss/android/a/a/a;
    .registers 4
    .param p1    # Lcom/ss/android/a/a/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-static {p1}, Lcom/ss/android/downloadlib/a/j;->a(Lcom/ss/android/a/a/a/a;)V

    .line 97
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/e$1;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/downloadlib/e$1;-><init>(Lcom/ss/android/downloadlib/e;Lcom/ss/android/a/a/a/a;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/c/i;)V

    .line 103
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/a/e;)Lcom/ss/android/a/a/a;
    .registers 2
    .param p1    # Lcom/ss/android/a/a/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-static {p1}, Lcom/ss/android/downloadlib/a/j;->a(Lcom/ss/android/a/a/a/e;)V

    .line 48
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/a/f;)Lcom/ss/android/a/a/a;
    .registers 2
    .param p1    # Lcom/ss/android/a/a/a/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-static {p1}, Lcom/ss/android/downloadlib/a/j;->a(Lcom/ss/android/a/a/a/f;)V

    .line 60
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/a/g;)Lcom/ss/android/a/a/a;
    .registers 2
    .param p1    # Lcom/ss/android/a/a/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-static {p1}, Lcom/ss/android/downloadlib/a/j;->a(Lcom/ss/android/a/a/a/g;)V

    .line 42
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/a/h;)Lcom/ss/android/a/a/a;
    .registers 2
    .param p1    # Lcom/ss/android/a/a/a/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-static {p1}, Lcom/ss/android/downloadlib/a/j;->a(Lcom/ss/android/a/a/a/h;)V

    .line 79
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/a/j;)Lcom/ss/android/a/a/a;
    .registers 2
    .param p1    # Lcom/ss/android/a/a/a/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-static {p1}, Lcom/ss/android/downloadlib/a/j;->a(Lcom/ss/android/a/a/a/j;)V

    .line 54
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/c/a;)Lcom/ss/android/a/a/a;
    .registers 2
    .param p1    # Lcom/ss/android/a/a/c/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    invoke-static {p1}, Lcom/ss/android/downloadlib/a/j;->a(Lcom/ss/android/a/a/c/a;)V

    .line 85
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/a/a/a;
    .registers 2

    .prologue
    .line 90
    invoke-static {p1}, Lcom/ss/android/downloadlib/a/j;->a(Ljava/lang/String;)V

    .line 91
    return-object p0
.end method
