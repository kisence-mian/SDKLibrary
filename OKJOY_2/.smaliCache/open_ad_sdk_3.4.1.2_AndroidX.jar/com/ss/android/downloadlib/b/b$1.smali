.class Lcom/ss/android/downloadlib/b/b$1;
.super Ljava/lang/Object;
.source "AppInstallFinishInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/b/b;->a(Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/b/g;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadad/a/b/b;

.field final synthetic b:Lcom/ss/android/downloadlib/b/g;

.field final synthetic c:Lcom/ss/android/downloadlib/b/b;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/b/b;Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/b/g;)V
    .registers 4

    .line 20
    iput-object p1, p0, Lcom/ss/android/downloadlib/b/b$1;->c:Lcom/ss/android/downloadlib/b/b;

    iput-object p2, p0, Lcom/ss/android/downloadlib/b/b$1;->a:Lcom/ss/android/downloadad/a/b/b;

    iput-object p3, p0, Lcom/ss/android/downloadlib/b/b$1;->b:Lcom/ss/android/downloadlib/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/b$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-static {v0}, Lcom/ss/android/downloadlib/b/i;->a(Lcom/ss/android/downloadad/a/b/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 24
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/b$1;->b:Lcom/ss/android/downloadlib/b/g;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/b/g;->a(Z)V

    goto :goto_27

    .line 27
    :cond_f
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/b$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-static {v0}, Lcom/ss/android/downloadlib/b/f;->a(Lcom/ss/android/downloadad/a/b/b;)Z

    move-result v0

    .line 28
    if-nez v0, :cond_1d

    .line 29
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/b$1;->b:Lcom/ss/android/downloadlib/b/g;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/b/g;->a(Z)V

    .line 30
    return-void

    .line 33
    :cond_1d
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/b$1;->a:Lcom/ss/android/downloadad/a/b/b;

    new-instance v1, Lcom/ss/android/downloadlib/b/b$1$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/b/b$1$1;-><init>(Lcom/ss/android/downloadlib/b/b$1;)V

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/b/f;->a(Lcom/ss/android/downloadad/a/b/b;Lcom/ss/android/downloadlib/b/h;)V

    .line 40
    :goto_27
    return-void
.end method
