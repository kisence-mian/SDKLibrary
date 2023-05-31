.class final Lcom/mintegral/msdk/mtgnative/c/a$1;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/mtgnative/c/a;
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
    .line 51
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/a$1;->a:Lcom/mintegral/msdk/mtgnative/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a$1;->a:Lcom/mintegral/msdk/mtgnative/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/a;->a(Lcom/mintegral/msdk/mtgnative/c/a;)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method
