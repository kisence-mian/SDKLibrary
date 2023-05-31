.class final Lcom/mintegral/msdk/e/a$a;
.super Ljava/lang/Object;
.source "LoopTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lcom/mintegral/msdk/e/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 66
    new-instance v0, Lcom/mintegral/msdk/e/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/e/a;-><init>(B)V

    sput-object v0, Lcom/mintegral/msdk/e/a$a;->a:Lcom/mintegral/msdk/e/a;

    return-void
.end method
