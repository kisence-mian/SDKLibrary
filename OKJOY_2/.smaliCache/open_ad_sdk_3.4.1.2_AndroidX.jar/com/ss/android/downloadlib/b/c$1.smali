.class final Lcom/ss/android/downloadlib/b/c$1;
.super Ljava/lang/Object;
.source "AppInstallOptimiseHelper.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/b/c;->a(Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/guide/install/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadad/a/b/b;

.field final synthetic b:Lcom/ss/android/downloadlib/guide/install/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/guide/install/a;)V
    .registers 3

    .line 51
    iput-object p1, p0, Lcom/ss/android/downloadlib/b/c$1;->a:Lcom/ss/android/downloadad/a/b/b;

    iput-object p2, p0, Lcom/ss/android/downloadlib/b/c$1;->b:Lcom/ss/android/downloadlib/guide/install/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    .line 54
    const-string v0, "AppInstallOptimiseHelper"

    const-string v1, "AppInstallOptimiseHelper-->onAppForeground"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/a/a;->b(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 57
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/c$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/k;->b(Lcom/ss/android/downloadad/a/b/b;)Z

    move-result v0

    .line 58
    if-nez v0, :cond_2c

    .line 59
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/c$1;->a:Lcom/ss/android/downloadad/a/b/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/b/b;->m(Z)V

    .line 60
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/b/c$1;->a:Lcom/ss/android/downloadad/a/b/b;

    const-string v2, "install_delay_invoke"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;)V

    .line 61
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/c$1;->b:Lcom/ss/android/downloadlib/guide/install/a;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/guide/install/a;->a()V

    .line 63
    :cond_2c
    return-void
.end method

.method public c()V
    .registers 1

    .line 67
    return-void
.end method
