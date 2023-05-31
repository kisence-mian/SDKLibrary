.class final Lcom/mintegral/msdk/videocommon/download/g$1;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "H5DownLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mintegral/msdk/videocommon/download/g$a;

.field final synthetic c:Lcom/mintegral/msdk/videocommon/download/g;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videocommon/download/g;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$a;)V
    .registers 4

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/download/g$1;->c:Lcom/mintegral/msdk/videocommon/download/g;

    iput-object p2, p0, Lcom/mintegral/msdk/videocommon/download/g$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mintegral/msdk/videocommon/download/g$1;->b:Lcom/mintegral/msdk/videocommon/download/g$a;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1;->c:Lcom/mintegral/msdk/videocommon/download/g;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/g;->a(Lcom/mintegral/msdk/videocommon/download/g;)Lcom/mintegral/msdk/videocommon/download/h;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/g$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 128
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1;->c:Lcom/mintegral/msdk/videocommon/download/g;

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/download/g;->b(Lcom/mintegral/msdk/videocommon/download/g;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/g$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1;->b:Lcom/mintegral/msdk/videocommon/download/g$a;

    if-eqz v0, :cond_28

    .line 130
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1;->b:Lcom/mintegral/msdk/videocommon/download/g$a;

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/download/g$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/videocommon/download/g$a;->a(Ljava/lang/String;)V

    .line 184
    :cond_28
    :goto_28
    return-void

    .line 134
    :cond_29
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/g$1;->a:Ljava/lang/String;

    new-instance v1, Lcom/mintegral/msdk/videocommon/download/g$1$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/videocommon/download/g$1$1;-><init>(Lcom/mintegral/msdk/videocommon/download/g$1;)V

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/download/e;->a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$b;)V

    goto :goto_28
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 189
    return-void
.end method
