.class public final Lcom/yxcorp/kuaishou/addfp/a/b/j/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yxcorp/kuaishou/addfp/a/b/a;
.implements Lcom/yxcorp/kuaishou/addfp/a/b/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/yxcorp/kuaishou/addfp/a/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/a/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/g;->b:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IInterface;)V
    .registers 3

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/g;->b:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    if-eqz p1, :cond_f

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->b()Lcom/yxcorp/kuaishou/addfp/a/b/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->c()Z

    move-result v0

    invoke-interface {p1, v0, p0}, Lcom/yxcorp/kuaishou/addfp/a/a/a;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V

    :cond_f
    return-void
.end method

.method public final a(Lcom/yxcorp/kuaishou/addfp/a/a/a;)V
    .registers 3

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->b()Lcom/yxcorp/kuaishou/addfp/a/b/j/d;

    move-result-object p1

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/g;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->a(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/b/b;)V

    return-void
.end method

.method public final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->b()Lcom/yxcorp/kuaishou/addfp/a/b/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->c()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->b()Lcom/yxcorp/kuaishou/addfp/a/b/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    return-object v1

    :cond_18
    return-object v0
.end method

.method public final c()Z
    .registers 2

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->b()Lcom/yxcorp/kuaishou/addfp/a/b/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->c()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .registers 3

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->b()Lcom/yxcorp/kuaishou/addfp/a/b/j/d;

    move-result-object v0

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yxcorp/kuaishou/addfp/a/b/j/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/g;->b:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    if-eqz v0, :cond_f

    const-string v0, "failed here"

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/j/g;->b:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/yxcorp/kuaishou/addfp/a/a/a;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V

    :cond_f
    return-void
.end method
