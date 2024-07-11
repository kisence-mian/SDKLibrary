.class Lcom/ss/android/downloadlib/b/e$2;
.super Ljava/lang/Object;
.source "AppLinkMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/b/e;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/b/d;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ss/android/downloadlib/b/d;

.field final synthetic c:Lcom/ss/android/downloadlib/b/e;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/b/e;Ljava/lang/String;Lcom/ss/android/downloadlib/b/d;)V
    .registers 4

    .line 90
    iput-object p1, p0, Lcom/ss/android/downloadlib/b/e$2;->c:Lcom/ss/android/downloadlib/b/e;

    iput-object p2, p0, Lcom/ss/android/downloadlib/b/e$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/downloadlib/b/e$2;->b:Lcom/ss/android/downloadlib/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/e$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/k;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 95
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/e$2;->b:Lcom/ss/android/downloadlib/b/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/b/d;->a(Z)V

    goto :goto_15

    .line 97
    :cond_f
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/e$2;->b:Lcom/ss/android/downloadlib/b/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/b/d;->a(Z)V

    .line 99
    :goto_15
    return-void
.end method
