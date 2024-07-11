.class final Lcom/yxcorp/kuaishou/addfp/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/yxcorp/kuaishou/addfp/a;


# direct methods
.method constructor <init>(Lcom/yxcorp/kuaishou/addfp/a;)V
    .registers 2

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/c;->a:Lcom/yxcorp/kuaishou/addfp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/c;->a:Lcom/yxcorp/kuaishou/addfp/a;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a;->a(Lcom/yxcorp/kuaishou/addfp/a;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/c;->a:Lcom/yxcorp/kuaishou/addfp/a;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a;->b(Lcom/yxcorp/kuaishou/addfp/a;)Lcom/yxcorp/kuaishou/addfp/b;

    move-result-object v0

    const/4 v1, -0x3

    const-string v2, "parameter error"

    invoke-interface {v0, v1, v2}, Lcom/yxcorp/kuaishou/addfp/b;->a(ILjava/lang/String;)V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/c;->a:Lcom/yxcorp/kuaishou/addfp/a;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a;->a(Lcom/yxcorp/kuaishou/addfp/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yxcorp/kuaishou/addfp/a;->a(Lcom/yxcorp/kuaishou/addfp/a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/a/a;->a()Lcom/yxcorp/kuaishou/addfp/android/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/c;->a:Lcom/yxcorp/kuaishou/addfp/a;

    invoke-static {v1}, Lcom/yxcorp/kuaishou/addfp/a;->c(Lcom/yxcorp/kuaishou/addfp/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yxcorp/kuaishou/addfp/android/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/c;->a:Lcom/yxcorp/kuaishou/addfp/a;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a;->b(Lcom/yxcorp/kuaishou/addfp/a;)Lcom/yxcorp/kuaishou/addfp/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yxcorp/kuaishou/addfp/a;->a(Lcom/yxcorp/kuaishou/addfp/a;Lcom/yxcorp/kuaishou/addfp/b;)V
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return-void

    :catchall_39
    move-exception v0

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method
