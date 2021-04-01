.class final Lcom/mintegral/msdk/mtgnative/c/b$4;
.super Ljava/lang/Object;
.source "NativeController.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/f/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgnative/c/b;->a(JIZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/UUID;

.field final synthetic d:J

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/mintegral/msdk/mtgnative/c/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgnative/c/b;ZLjava/lang/String;Ljava/util/UUID;JILjava/lang/String;)V
    .registers 10

    .prologue
    .line 2885
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b$4;->g:Lcom/mintegral/msdk/mtgnative/c/b;

    iput-boolean p2, p0, Lcom/mintegral/msdk/mtgnative/c/b$4;->a:Z

    iput-object p3, p0, Lcom/mintegral/msdk/mtgnative/c/b$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mintegral/msdk/mtgnative/c/b$4;->c:Ljava/util/UUID;

    iput-wide p5, p0, Lcom/mintegral/msdk/mtgnative/c/b$4;->d:J

    iput p7, p0, Lcom/mintegral/msdk/mtgnative/c/b$4;->e:I

    iput-object p8, p0, Lcom/mintegral/msdk/mtgnative/c/b$4;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    .prologue
    .line 2889
    sget v0, Lcom/mintegral/msdk/base/common/f/a$a;->e:I

    if-ne p1, v0, :cond_12

    .line 2890
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b$4;->g:Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->m(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/mtgnative/c/b$e;

    move-result-object v0

    new-instance v1, Lcom/mintegral/msdk/mtgnative/c/b$4$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgnative/c/b$4$1;-><init>(Lcom/mintegral/msdk/mtgnative/c/b$4;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b$e;->post(Ljava/lang/Runnable;)Z

    .line 2916
    :cond_12
    return-void
.end method
