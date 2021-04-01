.class public final Lcom/mintegral/msdk/videocommon/download/f;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/videocommon/download/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mintegral/msdk/base/common/f/b;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1026
    new-instance v0, Lcom/mintegral/msdk/base/common/f/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/f/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/download/f;->a:Lcom/mintegral/msdk/base/common/f/b;

    .line 18
    :cond_1c
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mintegral/msdk/videocommon/download/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/base/common/f/a;)V
    .registers 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/f;->a:Lcom/mintegral/msdk/base/common/f/b;

    if-eqz v0, :cond_9

    .line 32
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/download/f;->a:Lcom/mintegral/msdk/base/common/f/b;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/common/f/b;->b(Lcom/mintegral/msdk/base/common/f/a;)V

    .line 34
    :cond_9
    return-void
.end method
