.class final Lcom/mintegral/msdk/d/a$a;
.super Ljava/lang/Object;
.source "ShortCutsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/mintegral/msdk/d/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    new-instance v0, Lcom/mintegral/msdk/d/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/d/a;-><init>(B)V

    sput-object v0, Lcom/mintegral/msdk/d/a$a;->a:Lcom/mintegral/msdk/d/a;

    return-void
.end method

.method static synthetic a()Lcom/mintegral/msdk/d/a;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/mintegral/msdk/d/a$a;->a:Lcom/mintegral/msdk/d/a;

    return-object v0
.end method
