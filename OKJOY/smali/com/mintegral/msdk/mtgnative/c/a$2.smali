.class final Lcom/mintegral/msdk/mtgnative/c/a$2;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgnative/c/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/a;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/a$2;->a:Lcom/mintegral/msdk/mtgnative/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a$2;->a:Lcom/mintegral/msdk/mtgnative/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/a;->b(Lcom/mintegral/msdk/mtgnative/c/a;)V

    .line 72
    return-void
.end method
