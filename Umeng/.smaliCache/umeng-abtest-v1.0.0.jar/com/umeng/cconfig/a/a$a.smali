.class final Lcom/umeng/cconfig/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/cconfig/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/cconfig/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/umeng/cconfig/a/a;

    invoke-static {}, Lcom/umeng/cconfig/a/a;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/umeng/cconfig/a/a;-><init>(Landroid/content/Context;B)V

    sput-object v0, Lcom/umeng/cconfig/a/a$a;->a:Lcom/umeng/cconfig/a/a;

    return-void
.end method

.method static synthetic a()Lcom/umeng/cconfig/a/a;
    .registers 1

    sget-object v0, Lcom/umeng/cconfig/a/a$a;->a:Lcom/umeng/cconfig/a/a;

    return-object v0
.end method
