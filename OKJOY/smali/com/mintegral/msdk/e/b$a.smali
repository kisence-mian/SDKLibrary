.class final Lcom/mintegral/msdk/e/b$a;
.super Ljava/lang/Object;
.source "TimerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lcom/mintegral/msdk/e/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    new-instance v0, Lcom/mintegral/msdk/e/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/e/b;-><init>(B)V

    sput-object v0, Lcom/mintegral/msdk/e/b$a;->a:Lcom/mintegral/msdk/e/b;

    return-void
.end method
