.class Lcom/ss/android/downloadlib/b/f$1$1;
.super Ljava/lang/Object;
.source "AppLinkOptimiseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/b/f$1;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/b/f$1;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/b/f$1;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 77
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/b/f$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/k;->c(Ljava/lang/String;)Z

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v1, v1, Lcom/ss/android/downloadlib/b/f$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-static {v1}, Lcom/ss/android/downloadlib/b/f;->e(Lcom/ss/android/downloadad/a/b/b;)J

    move-result-wide v1

    .line 82
    if-eqz v0, :cond_23

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-wide v5, v0, Lcom/ss/android/downloadlib/b/f$1;->b:J

    sub-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-ltz v0, :cond_71

    .line 84
    :cond_23
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/b/f$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-static {v0}, Lcom/ss/android/downloadlib/b/f;->f(Lcom/ss/android/downloadad/a/b/b;)J

    move-result-wide v0

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-wide v4, v4, Lcom/ss/android/downloadlib/b/f$1;->b:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_46

    .line 87
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v1, v1, Lcom/ss/android/downloadlib/b/f$1;->a:Lcom/ss/android/downloadad/a/b/b;

    const-string v2, "deeplink_delay_timeout"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;)V

    .line 88
    return-void

    .line 91
    :cond_46
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/b/f$1;->a:Lcom/ss/android/downloadad/a/b/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/b/b;->l(Z)V

    .line 92
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v2, v2, Lcom/ss/android/downloadlib/b/f$1;->a:Lcom/ss/android/downloadad/a/b/b;

    const-string v3, "deeplink_delay_invoke"

    invoke-virtual {v0, v3, v2}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/b;)V

    .line 93
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/b/f$1;->c:Lcom/ss/android/downloadlib/b/h;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/b/h;->a(Z)V

    .line 95
    iget-object v0, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v0, v0, Lcom/ss/android/downloadlib/b/f$1;->a:Lcom/ss/android/downloadad/a/b/b;

    iget-object v1, p0, Lcom/ss/android/downloadlib/b/f$1$1;->a:Lcom/ss/android/downloadlib/b/f$1;

    iget-object v1, v1, Lcom/ss/android/downloadlib/b/f$1;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-static {v1}, Lcom/ss/android/downloadlib/b/f;->g(Lcom/ss/android/downloadad/a/b/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/b/f;->a(Lcom/ss/android/downloadad/a/b/b;I)V

    .line 97
    :cond_71
    return-void
.end method
