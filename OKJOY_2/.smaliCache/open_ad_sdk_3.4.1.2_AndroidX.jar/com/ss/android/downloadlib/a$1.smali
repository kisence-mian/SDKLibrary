.class Lcom/ss/android/downloadlib/a$1;
.super Ljava/lang/Object;
.source "AdDownloadCompletedEventHandlerImpl.java"

# interfaces
.implements Lcom/ss/android/downloadlib/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadad/a/b/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ss/android/downloadlib/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a;Lcom/ss/android/downloadad/a/b/b;Ljava/lang/String;)V
    .registers 4

    .line 196
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$1;->c:Lcom/ss/android/downloadlib/a;

    iput-object p2, p0, Lcom/ss/android/downloadlib/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    iput-object p3, p0, Lcom/ss/android/downloadlib/a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5

    .line 199
    invoke-static {}, Lcom/ss/android/downloadlib/a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appBackForeground->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x4

    if-eqz p1, :cond_4a

    .line 202
    const/4 p1, 0x0

    .line 204
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-static {v1}, Lcom/ss/android/downloadlib/b/f;->c(Lcom/ss/android/downloadad/a/b/b;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 206
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;)Z

    move-result p1

    .line 209
    :cond_2e
    if-nez p1, :cond_49

    iget-object p1, p0, Lcom/ss/android/downloadlib/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-static {p1}, Lcom/ss/android/downloadlib/b/f;->d(Lcom/ss/android/downloadad/a/b/b;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 211
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->J()I

    move-result p1

    if-ne p1, v0, :cond_49

    .line 212
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/a/a;->a()Lcom/ss/android/downloadlib/addownload/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/a/a;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 215
    :cond_49
    goto :goto_65

    .line 218
    :cond_4a
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-static {p1, v1}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;)Z

    move-result p1

    .line 219
    if-nez p1, :cond_65

    .line 221
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->J()I

    move-result p1

    if-ne p1, v0, :cond_65

    .line 222
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/a/a;->a()Lcom/ss/android/downloadlib/addownload/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/a/a;->a(Lcom/ss/android/downloadad/a/b/b;)V

    .line 226
    :cond_65
    :goto_65
    return-void
.end method
