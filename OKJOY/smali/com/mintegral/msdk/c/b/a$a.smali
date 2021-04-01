.class final Lcom/mintegral/msdk/c/b/a$a;
.super Ljava/lang/Object;
.source "ActiveAppUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/c/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/mintegral/msdk/c/b/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    new-instance v0, Lcom/mintegral/msdk/c/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/c/b/a;-><init>(B)V

    sput-object v0, Lcom/mintegral/msdk/c/b/a$a;->a:Lcom/mintegral/msdk/c/b/a;

    return-void
.end method

.method static synthetic a()Lcom/mintegral/msdk/c/b/a;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/mintegral/msdk/c/b/a$a;->a:Lcom/mintegral/msdk/c/b/a;

    return-object v0
.end method
