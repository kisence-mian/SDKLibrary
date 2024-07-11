.class public final Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;
.super Landroid/database/ContentObserver;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;


# direct methods
.method public constructor <init>(Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;->c:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;

    iput p2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;->b:I

    iput-object p3, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 4

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;->c:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;

    if-eqz p1, :cond_b

    iget v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;->b:I

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->a(ILjava/lang/String;)V

    :cond_b
    return-void
.end method
