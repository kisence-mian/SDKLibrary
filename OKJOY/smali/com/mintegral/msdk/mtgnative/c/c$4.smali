.class final Lcom/mintegral/msdk/mtgnative/c/c$4;
.super Ljava/lang/Object;
.source "NativePreloadController.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/f/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/c;->a(IJILjava/lang/String;ZLcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/UUID;

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:I

.field final synthetic g:Lcom/mintegral/msdk/b/a/a;

.field final synthetic h:Lcom/mintegral/msdk/out/AdMobClickListener;

.field final synthetic i:Lcom/mintegral/msdk/mtgnative/c/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/c;Ljava/lang/String;ZLjava/util/UUID;IJILcom/mintegral/msdk/b/a/a;Lcom/mintegral/msdk/out/AdMobClickListener;)V
    .registers 11

    .prologue
    .line 2117
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/c$4;->i:Lcom/mintegral/msdk/mtgnative/c/c;

    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/c$4;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mintegral/msdk/mtgnative/c/c$4;->b:Z

    iput-object p4, p0, Lcom/mintegral/msdk/mtgnative/c/c$4;->c:Ljava/util/UUID;

    iput p5, p0, Lcom/mintegral/msdk/mtgnative/c/c$4;->d:I

    iput-wide p6, p0, Lcom/mintegral/msdk/mtgnative/c/c$4;->e:J

    iput p8, p0, Lcom/mintegral/msdk/mtgnative/c/c$4;->f:I

    iput-object p9, p0, Lcom/mintegral/msdk/mtgnative/c/c$4;->g:Lcom/mintegral/msdk/b/a/a;

    iput-object p10, p0, Lcom/mintegral/msdk/mtgnative/c/c$4;->h:Lcom/mintegral/msdk/out/AdMobClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .prologue
    .line 2121
    sget v0, Lcom/mintegral/msdk/base/common/f/a$a;->e:I

    if-ne p1, v0, :cond_12

    .line 2122
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/c$4;->i:Lcom/mintegral/msdk/mtgnative/c/c;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/c;->b(Lcom/mintegral/msdk/mtgnative/c/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mintegral/msdk/mtgnative/c/c$4$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgnative/c/c$4$1;-><init>(Lcom/mintegral/msdk/mtgnative/c/c$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2147
    :cond_12
    return-void
.end method
