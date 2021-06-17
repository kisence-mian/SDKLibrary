.class final Lcom/umeng/cconfig/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/cconfig/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/cconfig/a/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/umeng/cconfig/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/cconfig/a/b;-><init>(B)V

    sput-object v0, Lcom/umeng/cconfig/a/b$a;->a:Lcom/umeng/cconfig/a/b;

    return-void
.end method

.method static synthetic a()Lcom/umeng/cconfig/a/b;
    .registers 1

    sget-object v0, Lcom/umeng/cconfig/a/b$a;->a:Lcom/umeng/cconfig/a/b;

    return-object v0
.end method
