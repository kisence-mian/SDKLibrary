.class final Lcom/yxcorp/kuaishou/addfp/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/yxcorp/kuaishou/addfp/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/yxcorp/kuaishou/addfp/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yxcorp/kuaishou/addfp/a;-><init>(Lcom/yxcorp/kuaishou/addfp/c;)V

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/e;->a:Lcom/yxcorp/kuaishou/addfp/a;

    return-void
.end method

.method static synthetic a()Lcom/yxcorp/kuaishou/addfp/a;
    .registers 1

    sget-object v0, Lcom/yxcorp/kuaishou/addfp/e;->a:Lcom/yxcorp/kuaishou/addfp/a;

    return-object v0
.end method
