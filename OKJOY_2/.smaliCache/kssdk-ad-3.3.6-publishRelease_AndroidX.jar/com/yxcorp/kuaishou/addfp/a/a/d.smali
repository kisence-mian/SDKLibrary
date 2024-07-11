.class final Lcom/yxcorp/kuaishou/addfp/a/a/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/yxcorp/kuaishou/addfp/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/yxcorp/kuaishou/addfp/a/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yxcorp/kuaishou/addfp/a/a/b;-><init>(B)V

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a/a/d;->a:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    return-void
.end method

.method static synthetic a()Lcom/yxcorp/kuaishou/addfp/a/a/b;
    .registers 1

    sget-object v0, Lcom/yxcorp/kuaishou/addfp/a/a/d;->a:Lcom/yxcorp/kuaishou/addfp/a/a/b;

    return-object v0
.end method
